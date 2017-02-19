"""
I didn't use any module
"""


class PrimeClass(object):
    """
    Return a boolean with True for prime
    and False for not prime
    """

    def is_prime(self, num_int):
        """
        Uses a cycle that starts in 2
        and does it until the middle of
        the number, if it is divided with
        some number returns false
        """
        cont = 2
        if num_int == 1:
            return False
        else:
            while cont <= num_int / 2:
                if num_int % cont == 0:
                    return False
                cont += 1
            return True
