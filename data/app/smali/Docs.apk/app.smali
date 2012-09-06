.class public Lapp;
.super Ljava/lang/Object;
.source "Nullability.java"


# direct methods
.method public static a([Ljava/lang/annotation/Annotation;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 24
    array-length v2, p0

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_18

    aget-object v3, p0, v1

    .line 25
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    .line 26
    const-string v4, "Nullable"

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 27
    const/4 v0, 0x1

    .line 30
    :cond_18
    return v0

    .line 24
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method
