.class LaM/bm;
.super Lcom/google/googlenav/ui/view/b;
.source "SourceFile"


# instance fields
.field final synthetic a:LaM/bj;


# direct methods
.method constructor <init>(LaM/bj;)V
    .registers 2
    .parameter

    .prologue
    .line 3255
    iput-object p1, p0, LaM/bm;->a:LaM/bj;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/view/J;)Z
    .registers 5
    .parameter

    .prologue
    .line 3259
    iget-object v0, p0, LaM/bm;->a:LaM/bj;

    invoke-static {v0}, LaM/bj;->e(LaM/bj;)V

    .line 3262
    iget-object v0, p0, LaM/bm;->a:LaM/bj;

    iget-object v0, v0, LaM/bj;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    iget-object v1, p0, LaM/bm;->a:LaM/bj;

    invoke-virtual {v1}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, LaM/am;->a(Lcom/google/googlenav/aW;I)V

    .line 3264
    const/4 v0, 0x1

    return v0
.end method
