.class public abstract Lp/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/content/Context;

.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    iput-object p1, p0, Lp/h;->a:Landroid/content/Context;

    .line 357
    iput-object p2, p0, Lp/h;->b:Ljava/util/List;

    .line 358
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(I)Lo/K;
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 389
    iget-object v0, p0, Lp/h;->b:Ljava/util/List;

    if-nez v0, :cond_7

    move-object v0, v1

    .line 397
    :goto_6
    return-object v0

    .line 392
    :cond_7
    iget-object v0, p0, Lp/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/K;

    .line 393
    invoke-virtual {v0}, Lo/K;->a()I

    move-result v3

    if-ne v3, p1, :cond_d

    goto :goto_6

    :cond_20
    move-object v0, v1

    .line 397
    goto :goto_6
.end method

.method public b()I
    .registers 2

    .prologue
    .line 369
    const/4 v0, 0x0

    return v0
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public d()Ljava/util/List;
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, Lp/h;->b:Ljava/util/List;

    return-object v0
.end method
