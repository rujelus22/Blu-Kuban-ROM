.class public LaI/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/googlenav/ui/wizard/C;LaM/i;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 28
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/C;->o()Z

    move-result v2

    if-nez v2, :cond_29

    .line 30
    :cond_a
    if-eqz p1, :cond_18

    invoke-virtual {p1}, LaM/i;->o()B

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {p1}, LaM/i;->o()B

    move-result v2

    if-ne v2, v1, :cond_1a

    :cond_18
    move v0, v1

    .line 54
    :cond_19
    :goto_19
    return v0

    .line 36
    :cond_1a
    invoke-virtual {p1}, LaM/i;->av()I

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {p1}, LaM/i;->o()B

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_19

    .line 54
    :cond_27
    const/4 v0, 0x0

    goto :goto_19

    .line 43
    :cond_29
    instance-of v1, p0, Lcom/google/googlenav/ui/wizard/gj;

    if-nez v1, :cond_19

    .line 47
    instance-of v0, p0, Lcom/google/googlenav/ui/wizard/M;

    if-eqz v0, :cond_27

    .line 49
    const/4 v0, 0x5

    goto :goto_19
.end method
