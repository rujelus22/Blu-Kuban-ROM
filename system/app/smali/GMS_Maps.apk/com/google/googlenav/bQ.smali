.class Lcom/google/googlenav/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/ji;


# instance fields
.field final synthetic a:Lcom/google/googlenav/bp;


# direct methods
.method constructor <init>(Lcom/google/googlenav/bp;)V
    .registers 2
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/google/googlenav/bq;->a:Lcom/google/googlenav/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/googlenav/bq;->a:Lcom/google/googlenav/bp;

    iget-object v0, v0, Lcom/google/googlenav/bp;->a:Lcom/google/googlenav/bj;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/bj;->a(Lcom/google/googlenav/bj;Z)V

    .line 377
    iget-object v0, p0, Lcom/google/googlenav/bq;->a:Lcom/google/googlenav/bp;

    iget-object v0, v0, Lcom/google/googlenav/bp;->a:Lcom/google/googlenav/bj;

    invoke-static {v0}, Lcom/google/googlenav/bj;->c(Lcom/google/googlenav/bj;)V

    .line 378
    return-void
.end method

.method public a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 370
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/bq;->a:Lcom/google/googlenav/bp;

    invoke-static {v1}, Lcom/google/googlenav/bp;->a(Lcom/google/googlenav/bp;)Lcom/google/googlenav/friend/bk;

    move-result-object v1

    invoke-virtual {v0, v1}, Las/f;->c(Las/g;)V

    .line 371
    return-void
.end method
