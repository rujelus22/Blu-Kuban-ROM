.class LaM/bX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:LaM/bW;


# direct methods
.method constructor <init>(LaM/bW;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, LaM/bX;->b:LaM/bW;

    iput-object p2, p0, LaM/bX;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 228
    iget-object v0, p0, LaM/bX;->b:LaM/bW;

    iget-object v0, v0, LaM/bW;->a:LaM/bU;

    invoke-virtual {v0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/Y;->k()Ljava/util/ArrayList;

    move-result-object v1

    .line 230
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 231
    iget-object v0, p0, LaM/bX;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ab;

    .line 232
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 234
    :cond_25
    iget-object v0, p0, LaM/bX;->b:LaM/bW;

    iget-object v0, v0, LaM/bW;->a:LaM/bU;

    invoke-static {v0}, LaM/bU;->d(LaM/bU;)V

    .line 235
    iget-object v0, p0, LaM/bX;->b:LaM/bW;

    iget-object v0, v0, LaM/bW;->a:LaM/bU;

    iget-object v0, v0, LaM/bU;->B:Lcom/google/googlenav/ui/android/ah;

    if-eqz v0, :cond_3d

    .line 236
    iget-object v0, p0, LaM/bX;->b:LaM/bW;

    iget-object v0, v0, LaM/bW;->a:LaM/bU;

    iget-object v0, v0, LaM/bU;->B:Lcom/google/googlenav/ui/android/ah;

    invoke-interface {v0}, Lcom/google/googlenav/ui/android/ah;->c()V

    .line 238
    :cond_3d
    return-void
.end method
