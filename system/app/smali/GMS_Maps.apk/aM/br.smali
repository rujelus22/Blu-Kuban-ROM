.class LaM/br;
.super Lcom/google/googlenav/ui/view/b;
.source "SourceFile"


# instance fields
.field final synthetic a:LaM/bj;


# direct methods
.method constructor <init>(LaM/bj;)V
    .registers 2
    .parameter

    .prologue
    .line 2939
    iput-object p1, p0, LaM/br;->a:LaM/bj;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/view/J;)Z
    .registers 3
    .parameter

    .prologue
    .line 2943
    iget-object v0, p0, LaM/br;->a:LaM/bj;

    invoke-static {v0}, LaM/bj;->c(LaM/bj;)V

    .line 2945
    instance-of v0, p1, Lcom/google/googlenav/ui/view/a;

    if-nez v0, :cond_e

    .line 2946
    iget-object v0, p0, LaM/br;->a:LaM/bj;

    invoke-static {v0}, LaM/bj;->d(LaM/bj;)V

    .line 2948
    :cond_e
    const/4 v0, 0x1

    return v0
.end method
