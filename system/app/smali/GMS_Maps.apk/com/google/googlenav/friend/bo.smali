.class Lcom/google/googlenav/friend/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/be;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/bk;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/bk;)V
    .registers 2
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/google/googlenav/friend/bo;->a:Lcom/google/googlenav/friend/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/googlenav/friend/bo;->a:Lcom/google/googlenav/friend/bk;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/bk;->u()Lcom/google/googlenav/friend/d;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 324
    iget-object v0, p0, Lcom/google/googlenav/friend/bo;->a:Lcom/google/googlenav/friend/bk;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/bk;->u()Lcom/google/googlenav/friend/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/friend/d;->a()V

    .line 328
    :cond_11
    iget-object v0, p0, Lcom/google/googlenav/friend/bo;->a:Lcom/google/googlenav/friend/bk;

    iget-object v0, v0, Lcom/google/googlenav/friend/bk;->b:Lcom/google/googlenav/android/Y;

    if-nez v0, :cond_18

    .line 348
    :goto_17
    return-void

    .line 331
    :cond_18
    iget-object v0, p0, Lcom/google/googlenav/friend/bo;->a:Lcom/google/googlenav/friend/bk;

    iget-object v0, v0, Lcom/google/googlenav/friend/bk;->b:Lcom/google/googlenav/android/Y;

    new-instance v1, Lcom/google/googlenav/friend/bp;

    invoke-direct {v1, p0}, Lcom/google/googlenav/friend/bp;-><init>(Lcom/google/googlenav/friend/bo;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    goto :goto_17
.end method
