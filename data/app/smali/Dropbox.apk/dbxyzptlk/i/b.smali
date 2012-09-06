.class public final Ldbxyzptlk/i/b;
.super Ldbxyzptlk/i/f;
.source "panda.py"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ldbxyzptlk/i/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 11
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 16
    const/4 v0, 0x1

    return v0
.end method
