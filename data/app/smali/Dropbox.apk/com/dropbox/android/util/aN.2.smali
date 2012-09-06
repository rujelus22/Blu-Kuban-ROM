.class public final Lcom/dropbox/android/util/aN;
.super Ljava/lang/Object;
.source "panda.py"


# direct methods
.method public static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 16
    if-nez p0, :cond_4

    if-eqz p1, :cond_c

    :cond_4
    if-eqz p0, :cond_e

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 8
    if-eqz p0, :cond_a

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_4

    if-eqz p1, :cond_c

    :cond_4
    if-eqz p0, :cond_e

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 12
    invoke-static {p0}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_19

    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_19

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-le v1, v0, :cond_19

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method
