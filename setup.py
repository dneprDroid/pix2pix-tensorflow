'''Cloud ML Engine package configuration.'''
from setuptools import setup, find_packages

setup(name='pix_pix',
      version='1.0',
      # python_requires='==3.6',
      packages=find_packages(),
      include_package_data=True,
      description='.......',
      author='Alex',
      author_email='',
      license='Unlicense',
      install_requires=[
          'tensorflow==1.10.0',
          'numpy==1.15.0',
          'argparse'],
      zip_safe=False)
