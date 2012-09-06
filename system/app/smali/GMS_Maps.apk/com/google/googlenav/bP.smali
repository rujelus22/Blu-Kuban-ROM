.class Lcom/google/googlenav/bp;
.super Lcom/google/googlenav/friend/bt;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/bj;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/bj;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/android/Y;Lcom/google/googlenav/friend/bk;Lcom/google/googlenav/br;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/google/googlenav/bp;->a:Lcom/google/googlenav/bj;

    .line 351
    invoke-direct {p0, p2, p3, p4}, Lcom/google/googlenav/friend/bt;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/android/Y;Lcom/google/googlenav/friend/bk;)V

    .line 352
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/bp;)Lcom/google/googlenav/friend/bk;
    .registers 2
    .parameter

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/googlenav/bp;->d:Lcom/google/googlenav/friend/bk;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/googlenav/bp;->b:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 364
    iget-object v0, p0, Lcom/google/googlenav/bp;->b:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v1, p0, Lcom/google/googlenav/bp;->a:Lcom/google/googlenav/bj;

    invoke-static {v1}, Lcom/google/googlenav/bj;->a(Lcom/google/googlenav/bj;)Lcom/google/googlenav/br;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/bp;->a:Lcom/google/googlenav/bj;

    invoke-static {v2}, Lcom/google/googlenav/bj;->b(Lcom/google/googlenav/bj;)Lcom/google/googlenav/bo;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/bq;

    invoke-direct {v3, p0}, Lcom/google/googlenav/bq;-><init>(Lcom/google/googlenav/bp;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/br;Lcom/google/googlenav/bo;Lcom/google/googlenav/ui/wizard/ji;)V

    .line 380
    return-void
.end method
