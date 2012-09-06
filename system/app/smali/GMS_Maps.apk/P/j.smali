.class public Lp/j;
.super Lp/h;
.source "SourceFile"


# instance fields
.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 277
    invoke-direct {p0, p1, p2}, Lp/h;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 278
    iput p3, p0, Lp/j;->b:I

    .line 279
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 299
    const/16 v0, 0x9

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 283
    iget v0, p0, Lp/j;->b:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 288
    iget v0, p0, Lp/j;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 289
    iget-object v0, p0, Lp/j;->a:Landroid/content/Context;

    const v1, 0x7f0d00fb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 293
    :goto_e
    return-object v0

    .line 290
    :cond_f
    iget v0, p0, Lp/j;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    .line 291
    iget-object v0, p0, Lp/j;->a:Landroid/content/Context;

    const v1, 0x7f0d00fc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 293
    :cond_1e
    const/4 v0, 0x0

    goto :goto_e
.end method
