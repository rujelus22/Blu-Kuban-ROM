.class LaM/bZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/W;

.field final synthetic b:LaM/bY;


# direct methods
.method constructor <init>(LaM/bY;Lcom/google/googlenav/W;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, LaM/bZ;->b:LaM/bY;

    iput-object p2, p0, LaM/bZ;->a:Lcom/google/googlenav/W;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 521
    iget-object v0, p0, LaM/bZ;->b:LaM/bY;

    iget-object v0, v0, LaM/bY;->a:Lcom/google/googlenav/cq;

    invoke-virtual {v0}, Lcom/google/googlenav/cq;->i()V

    .line 522
    iget-object v0, p0, LaM/bZ;->b:LaM/bY;

    iget-object v0, v0, LaM/bY;->b:LaM/bU;

    iget-object v0, v0, LaM/bU;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->a()V

    .line 523
    iget-object v0, p0, LaM/bZ;->a:Lcom/google/googlenav/W;

    invoke-virtual {v0}, Lcom/google/googlenav/W;->bq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 524
    iget-object v0, p0, LaM/bZ;->b:LaM/bY;

    iget-object v0, v0, LaM/bY;->a:Lcom/google/googlenav/cq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/cq;->a(Z)V

    .line 525
    iget-object v0, p0, LaM/bZ;->b:LaM/bY;

    iget-object v0, v0, LaM/bY;->a:Lcom/google/googlenav/cq;

    iget-object v1, p0, LaM/bZ;->a:Lcom/google/googlenav/W;

    invoke-virtual {v1}, Lcom/google/googlenav/W;->bq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/cq;->a(Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, LaM/bZ;->a:Lcom/google/googlenav/W;

    invoke-virtual {v0}, Lcom/google/googlenav/W;->bs()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 527
    iget-object v0, p0, LaM/bZ;->b:LaM/bY;

    iget-object v0, v0, LaM/bY;->a:Lcom/google/googlenav/cq;

    iget-object v1, p0, LaM/bZ;->a:Lcom/google/googlenav/W;

    invoke-virtual {v1}, Lcom/google/googlenav/W;->bt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/cq;->a(I)V

    .line 529
    :cond_46
    iget-object v0, p0, LaM/bZ;->b:LaM/bY;

    iget-object v0, v0, LaM/bY;->b:LaM/bU;

    invoke-virtual {v0}, LaM/bU;->bq()V

    .line 531
    :cond_4d
    return-void
.end method
