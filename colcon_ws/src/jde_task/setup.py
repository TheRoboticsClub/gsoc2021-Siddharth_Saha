from setuptools import setup

package_name = 'jde_task'

setup(
    name=package_name,
    version='0.0.0',
    packages=[package_name],
    data_files=[
        ('share/ament_index/resource_index/packages',
            ['resource/' + package_name]),
        ('share/' + package_name, ['package.xml']),
    ],
    install_requires=['setuptools'],
    zip_safe=True,
    maintainer='trunc8',
    maintainer_email='sahasiddharth611@gmail.com',
    description='ROS2 Challenge by JdeRobot',
    license='Apache License 2.0',
    tests_require=['pytest'],
    entry_points={
        'console_scripts': [
            'talker = jde_task.talker:main',
            'listener = jde_task.listener:main',
        ],
    },
)
