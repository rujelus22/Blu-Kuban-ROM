.class public final Ldbxyzptlk/i/k;
.super Ldbxyzptlk/i/j;
.source "panda.py"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ldbxyzptlk/i/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 24
    invoke-virtual {p0}, Ldbxyzptlk/i/k;->e()Lcom/dropbox/android/taskqueue/m;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/taskqueue/m;->k:Lcom/dropbox/android/taskqueue/m;

    if-ne v0, v1, :cond_10

    .line 25
    const v0, 0x7f090046

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 32
    :goto_f
    return-object v0

    .line 26
    :cond_10
    invoke-virtual {p0}, Ldbxyzptlk/i/k;->e()Lcom/dropbox/android/taskqueue/m;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/taskqueue/m;->l:Lcom/dropbox/android/taskqueue/m;

    if-ne v0, v1, :cond_20

    .line 27
    const v0, 0x7f09011a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 28
    :cond_20
    invoke-virtual {p0}, Ldbxyzptlk/i/k;->c()F

    move-result v0

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_32

    .line 29
    const v0, 0x7f090044

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 31
    :cond_32
    const v0, 0x7f090045

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 32
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ldbxyzptlk/i/k;->c()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 19
    const/4 v0, 0x1

    return v0
.end method
