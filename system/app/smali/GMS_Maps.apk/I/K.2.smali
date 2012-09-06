.class public Li/K;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li/K;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()Li/a;
    .registers 4

    .prologue
    .line 53
    iget-object v0, p0, Li/K;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 54
    const/4 v0, 0x0

    .line 58
    :goto_9
    return-object v0

    .line 55
    :cond_a
    iget-object v0, p0, Li/K;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 56
    iget-object v0, p0, Li/K;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/a;

    goto :goto_9

    .line 58
    :cond_1d
    new-instance v1, Li/J;

    iget-object v0, p0, Li/K;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Li/K;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Li/a;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/a;

    invoke-direct {v1, v0}, Li/J;-><init>([Li/a;)V

    move-object v0, v1

    goto :goto_9
.end method

.method public a(Li/a;)V
    .registers 3
    .parameter

    .prologue
    .line 47
    if-eqz p1, :cond_7

    .line 48
    iget-object v0, p0, Li/K;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_7
    return-void
.end method
