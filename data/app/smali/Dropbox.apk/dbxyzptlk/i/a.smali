.class public Ldbxyzptlk/i/a;
.super Ldbxyzptlk/i/j;
.source "panda.py"


# instance fields
.field final a:I

.field final b:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ldbxyzptlk/i/j;-><init>()V

    .line 16
    iput p1, p0, Ldbxyzptlk/i/a;->a:I

    .line 17
    iput p2, p0, Ldbxyzptlk/i/a;->b:I

    .line 18
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 33
    invoke-virtual {p0}, Ldbxyzptlk/i/a;->c()F

    move-result v0

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1d

    .line 34
    iget v0, p0, Ldbxyzptlk/i/a;->a:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 39
    :goto_12
    invoke-virtual {p0}, Ldbxyzptlk/i/a;->d()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_35

    .line 48
    :goto_1c
    return-object v0

    .line 36
    :cond_1d
    iget v0, p0, Ldbxyzptlk/i/a;->b:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 37
    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Ldbxyzptlk/i/a;->c()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 43
    :cond_35
    invoke-virtual {p0}, Ldbxyzptlk/i/a;->d()J

    move-result-wide v1

    invoke-static {p1, v1, v2, v5}, Lcom/dropbox/android/util/af;->a(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 45
    const v2, 0x7f09004e

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v6

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method
