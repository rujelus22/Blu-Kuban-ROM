.class public Lp/k;
.super Lp/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 309
    invoke-direct {p0, p1, p2}, Lp/h;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 310
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 324
    const/4 v0, 0x2

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 314
    invoke-virtual {p0, v4}, Lp/k;->a(I)Lo/K;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_1a

    .line 316
    iget-object v1, p0, Lp/k;->a:Landroid/content/Context;

    const v2, 0x7f0d00fd

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lo/K;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 318
    :goto_19
    return-object v0

    :cond_1a
    iget-object v0, p0, Lp/k;->a:Landroid/content/Context;

    const v1, 0x7f0d00fe

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_19
.end method
