# This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

from pydb.dbconn import cur, dcur

def select_all_images():
    a = dcur.execute(
        """
        select image 
        from product.image_gallery;
        """
        )
    a = dcur.fetchall()
    return a

def delete_image(d):
    a = dcur.execute(
        """
        begin;
        delete from product.image_gallery
        where image = %(img-del)s;
        commit;
        """, d)

def replace_image(d):
    a = dcur.execute(
        """
        begin;
        update table product.image_gallery
        set image = %(new-img)s
        where image = %(img-del)s;
        commit;
        """, d)
