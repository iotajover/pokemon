from django.db import models

# Create your models here.

# This model is the representation of the Pokemon object, it has associated the previous and next
# evolution (if apply) and the basic stats as a related object.


class Pokemon(models.Model):
    id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=50)
    height = models.IntegerField()
    weight = models.IntegerField()
    envolve_to = models.ForeignKey('Pokemon', related_name='EnvolveTo', on_delete=models.SET_NULL, null=True)
    envolve_from = models.ForeignKey('Pokemon', related_name='EnvolveFrom', on_delete=models.SET_NULL, null=True)
    stats = models.ManyToManyField('Stat')

    def __str__(self):
        return '%s %s' % (str(self.id), self.name)


# This model is the representation of a stat for a particular Pokemon object.


class Stat(models.Model):
    name = models.CharField(max_length=50)
    base_stat = models.IntegerField()
    effort = models.IntegerField()

    def __str__(self):
        return '%s %s' % (str(self.id), self.name)
