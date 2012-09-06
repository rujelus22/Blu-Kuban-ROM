.class LaM/bn;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:LaM/bj;


# direct methods
.method constructor <init>(LaM/bj;LY/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 833
    iput-object p1, p0, LaM/bn;->a:LaM/bj;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 836
    iget-object v0, p0, LaM/bn;->a:LaM/bj;

    invoke-virtual {v0}, LaM/bj;->bG()V

    .line 837
    iget-object v0, p0, LaM/bn;->a:LaM/bj;

    invoke-virtual {v0}, LaM/bj;->bH()V

    .line 838
    return-void
.end method
