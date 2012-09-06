.class final Lcom/google/googlenav/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/google/googlenav/z;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/google/googlenav/z;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/google/googlenav/v;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/google/googlenav/v;->b:Lcom/google/googlenav/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/googlenav/v;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/x;

    .line 285
    iget-object v2, p0, Lcom/google/googlenav/v;->b:Lcom/google/googlenav/z;

    invoke-static {v2, v0}, Lcom/google/googlenav/u;->b(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    .line 286
    invoke-virtual {v0}, Lcom/google/googlenav/x;->run()V

    goto :goto_6

    .line 288
    :cond_1b
    return-void
.end method
