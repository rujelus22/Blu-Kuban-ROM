.class public Lp/o;
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
    .line 335
    invoke-direct {p0, p1, p2}, Lp/h;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 336
    iput p3, p0, Lp/o;->b:I

    .line 337
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 351
    const/4 v0, 0x6

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 341
    iget v0, p0, Lp/o;->b:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 346
    iget-object v0, p0, Lp/o;->a:Landroid/content/Context;

    const v1, 0x7f0d00ff

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
