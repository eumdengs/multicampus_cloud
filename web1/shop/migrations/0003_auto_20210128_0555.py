# Generated by Django 3.1.5 on 2021-01-27 20:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('shop', '0002_auto_20200119_2134'),
    ]

    operations = [
        migrations.AlterField(
            model_name='product',
            name='image',
            field=models.ImageField(blank=True, upload_to='../products/%Y/%m/%d'),
        ),
    ]
