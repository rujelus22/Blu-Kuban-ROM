.class Lcom/google/googlenav/friend/history/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/google/googlenav/friend/history/C;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/history/C;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/google/googlenav/friend/history/F;->b:Lcom/google/googlenav/friend/history/C;

    iput-object p2, p0, Lcom/google/googlenav/friend/history/F;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/googlenav/friend/history/F;->a:Ljava/util/List;

    if-nez v0, :cond_c

    .line 294
    iget-object v0, p0, Lcom/google/googlenav/friend/history/F;->b:Lcom/google/googlenav/friend/history/C;

    iget-object v0, v0, Lcom/google/googlenav/friend/history/C;->a:Lcom/google/googlenav/friend/history/G;

    invoke-interface {v0}, Lcom/google/googlenav/friend/history/G;->a()V

    .line 298
    :goto_b
    return-void

    .line 296
    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/friend/history/F;->b:Lcom/google/googlenav/friend/history/C;

    iget-object v0, v0, Lcom/google/googlenav/friend/history/C;->a:Lcom/google/googlenav/friend/history/G;

    iget-object v1, p0, Lcom/google/googlenav/friend/history/F;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/google/googlenav/friend/history/G;->a(Ljava/util/List;)V

    goto :goto_b
.end method
