.class Lcom/google/googlenav/friend/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/bo;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/bo;)V
    .registers 2
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/google/googlenav/friend/bp;->a:Lcom/google/googlenav/friend/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/googlenav/friend/bp;->a:Lcom/google/googlenav/friend/bo;

    iget-object v0, v0, Lcom/google/googlenav/friend/bo;->a:Lcom/google/googlenav/friend/bk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/bk;->a(Lcom/google/googlenav/friend/bk;Ljava/lang/String;)Ljava/lang/String;

    .line 338
    iget-object v0, p0, Lcom/google/googlenav/friend/bp;->a:Lcom/google/googlenav/friend/bo;

    iget-object v0, v0, Lcom/google/googlenav/friend/bo;->a:Lcom/google/googlenav/friend/bk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/bk;->a(Lcom/google/googlenav/friend/bk;Z)Z

    .line 340
    iget-object v0, p0, Lcom/google/googlenav/friend/bp;->a:Lcom/google/googlenav/friend/bo;

    iget-object v0, v0, Lcom/google/googlenav/friend/bo;->a:Lcom/google/googlenav/friend/bk;

    invoke-static {v0}, Lcom/google/googlenav/friend/bk;->a(Lcom/google/googlenav/friend/bk;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Las/h;

    .line 341
    invoke-interface {v0}, Las/h;->L_()V

    goto :goto_1c

    .line 344
    :cond_2c
    return-void
.end method
