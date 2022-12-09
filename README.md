# BiocSpark

Illustration of Spark-Bioconductor interop, primarily for AnVIL

Note: As of Dec 9 2022, use of sparkhail package appears to require
Java 8.  Since Linux systems I am using are using Java 11 or above,
I work on this package only within a container with openjdk downgraded
to 8.

Note: The associated container doesn't seem usable with an AnVIL
"spark cluster" or "spark node".

On Dec 9 2022 we used custom environment vjcitn/biocsphail:0.2.0,
which carries out

```
sparklyr::spark_install(version='2.4.3')
sparkhail::hail_install()
```


