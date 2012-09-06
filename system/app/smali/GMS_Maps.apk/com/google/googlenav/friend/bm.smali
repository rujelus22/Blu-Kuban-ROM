.class Lcom/google/googlenav/friend/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/bk;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/bk;)V
    .registers 2
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/googlenav/friend/bm;->a:Lcom/google/googlenav/friend/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/googlenav/friend/bm;->a:Lcom/google/googlenav/friend/bk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/bk;->a(Lcom/google/googlenav/friend/bk;Z)Z

    .line 162
    iget-object v0, p0, Lcom/google/googlenav/friend/bm;->a:Lcom/google/googlenav/friend/bk;

    invoke-static {v0}, Lcom/google/googlenav/friend/bk;->a(Lcom/google/googlenav/friend/bk;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Las/h;

    .line 163
    invoke-interface {v0}, Las/h;->D_()V

    goto :goto_10

    .line 166
    :cond_20
    return-void
.end method
