from hello import add

import pytest


# paramerize
@pytest.mark.parametrize("val1, val2, res", [(1, 2, 3), (2, 3, 5), (3, 4, 7), (-1,1,0)])
def test_add(val1, val2, res):
    assert add(val1, val2) == res
