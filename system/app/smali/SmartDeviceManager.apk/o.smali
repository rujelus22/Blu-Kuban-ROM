.class public final Lo;
.super Ljava/lang/Object;
.source "a"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 12
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 14
    if-nez v0, :cond_a

    move v0, v7

    .line 42
    :goto_9
    return v0

    .line 18
    :cond_a
    array-length v1, v0

    move v2, v8

    move v3, v7

    :goto_d
    if-ge v2, v1, :cond_45

    aget-object v4, v0, v2

    .line 20
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_25

    .line 21
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    .line 22
    if-eqz v3, :cond_23

    if-eqz v4, :cond_23

    move v3, v7

    .line 18
    :cond_20
    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_23
    move v3, v8

    .line 22
    goto :goto_20

    .line 28
    :cond_25
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 29
    const-string v6, ".."

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    const-string v6, "."

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 31
    invoke-static {v4}, Lo;->a(Ljava/io/File;)Z

    move-result v4

    .line 36
    if-eqz v3, :cond_43

    if-eqz v4, :cond_43

    move v3, v7

    goto :goto_20

    :cond_43
    move v3, v8

    goto :goto_20

    .line 41
    :cond_45
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 42
    if-eqz v3, :cond_4f

    if-eqz v0, :cond_4f

    move v0, v7

    goto :goto_9

    :cond_4f
    move v0, v8

    goto :goto_9
.end method
