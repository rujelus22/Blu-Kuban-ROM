.class final LaM/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/bn;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/v;

.field final synthetic b:Lad/w;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/v;Lad/w;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2051
    iput-object p1, p0, LaM/P;->a:Lcom/google/googlenav/ui/v;

    iput-object p2, p0, LaM/P;->b:Lad/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 5
    .parameter

    .prologue
    .line 2055
    const/16 v0, 0x61

    const-string v1, "sr"

    const-string v2, "r"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 2058
    iget-object v0, p0, LaM/P;->a:Lcom/google/googlenav/ui/v;

    iget-object v1, p0, LaM/P;->b:Lad/w;

    invoke-static {v0, v1}, LaM/O;->a(Lcom/google/googlenav/ui/v;Lad/b;)V

    .line 2059
    return-void
.end method

.method public b(Z)V
    .registers 5
    .parameter

    .prologue
    .line 2064
    const/16 v0, 0x61

    const-string v1, "sr"

    const-string v2, "u"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 2067
    iget-object v0, p0, LaM/P;->b:Lad/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lad/w;->c(Z)V

    .line 2068
    iget-object v0, p0, LaM/P;->a:Lcom/google/googlenav/ui/v;

    iget-object v1, p0, LaM/P;->b:Lad/w;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->a(Lad/w;)V

    .line 2069
    return-void
.end method

.method public c(Z)V
    .registers 5
    .parameter

    .prologue
    .line 2074
    const/16 v0, 0x61

    const-string v1, "sr"

    const-string v2, "b"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 2077
    return-void
.end method
