.class public LacM;
.super Ljava/lang/Object;
.source "AndroidHttp.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lado;
    .registers 1

    .prologue
    .line 53
    invoke-static {}, LacM;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, LadD;

    invoke-direct {v0}, LadD;-><init>()V

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lady;

    invoke-direct {v0}, Lady;-><init>()V

    goto :goto_b
.end method

.method public static a()Z
    .registers 2

    .prologue
    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
