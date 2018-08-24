'''Cloud ML Engine package configuration.'''
from setuptools import setup, find_packages

setup(name='pix_pix',
      version='1.0',
      python_requires='=3.6',
      packages=find_packages(),
      include_package_data=True,
      description='.......',
      author='Alex',
      author_email='ovechko.056@gmail.com',
      license='Unlicense',
      install_requires=[
          'tensorflow',
          'numpy',
          'argparse'],
      zip_safe=False)
