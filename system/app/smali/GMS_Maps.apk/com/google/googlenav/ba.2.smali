.class Lcom/google/googlenav/bA;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/bz;


# direct methods
.method constructor <init>(Lcom/google/googlenav/bz;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/google/googlenav/bA;->b:Lcom/google/googlenav/bz;

    iput p2, p0, Lcom/google/googlenav/bA;->a:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 436
    const-string v0, "Stars$StarsCacheUpdater.runNextTaskInBackground$1.run"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->a(Ljava/lang/String;)V

    .line 438
    :try_start_5
    iget-object v0, p0, Lcom/google/googlenav/bA;->b:Lcom/google/googlenav/bz;

    invoke-static {v0}, Lcom/google/googlenav/bz;->c(Lcom/google/googlenav/bz;)Lax/r;

    move-result-object v0

    invoke-interface {v0}, Lax/r;->a()Ljava/util/List;

    move-result-object v0

    .line 439
    new-instance v2, Lcom/google/common/collect/bw;

    invoke-direct {v2}, Lcom/google/common/collect/bw;-><init>()V

    .line 441
    new-instance v3, Lcom/google/common/collect/by;

    invoke-direct {v3}, Lcom/google/common/collect/by;-><init>()V

    .line 443
    const/4 v1, 0x0

    .line 444
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/A;

    .line 445
    invoke-virtual {v0}, Lax/A;->n()Z

    move-result v5

    if-eqz v5, :cond_62

    .line 446
    invoke-static {v0}, Lcom/google/googlenav/bw;->a(Lax/A;)Lcom/google/googlenav/bv;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/common/collect/bw;->b(Ljava/lang/Object;)Lcom/google/common/collect/bw;

    .line 447
    invoke-virtual {v0}, Lax/A;->g()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v0, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Lcom/google/common/collect/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/by;

    :goto_44
    move v1, v0

    goto :goto_1e

    .line 450
    :cond_46
    iget-object v0, p0, Lcom/google/googlenav/bA;->b:Lcom/google/googlenav/bz;

    iget v1, p0, Lcom/google/googlenav/bA;->a:I

    new-instance v4, Lcom/google/googlenav/by;

    invoke-virtual {v2}, Lcom/google/common/collect/bw;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v3}, Lcom/google/common/collect/by;->a()Lcom/google/common/collect/bx;

    move-result-object v3

    invoke-direct {v4, v2, v3}, Lcom/google/googlenav/by;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/bx;)V

    invoke-static {v0, v1, v4}, Lcom/google/googlenav/bz;->a(Lcom/google/googlenav/bz;ILcom/google/googlenav/by;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5a} :catch_60

    .line 455
    :goto_5a
    const-string v0, "Stars$StarsCacheUpdater.runNextTaskInBackground$1.run"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V

    .line 456
    return-void

    .line 452
    :catch_60
    move-exception v0

    goto :goto_5a

    :cond_62
    move v0, v1

    goto :goto_44
.end method
