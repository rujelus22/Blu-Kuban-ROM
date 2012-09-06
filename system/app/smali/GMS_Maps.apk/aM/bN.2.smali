.class LaM/bN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/c;


# instance fields
.field final synthetic a:LaM/bK;


# direct methods
.method constructor <init>(LaM/bK;)V
    .registers 2
    .parameter

    .prologue
    .line 794
    iput-object p1, p0, LaM/bN;->a:LaM/bK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/view/J;)Z
    .registers 6
    .parameter

    .prologue
    .line 797
    const/16 v0, 0x61

    const-string v1, "f"

    const-string v2, "nb"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 800
    iget-object v0, p0, LaM/bN;->a:LaM/bK;

    const/16 v1, 0xb58

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, LaM/bK;->a(IILjava/lang/Object;)Z

    .line 801
    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcom/google/googlenav/ui/view/J;)Z
    .registers 3
    .parameter

    .prologue
    .line 806
    const/4 v0, 0x0

    return v0
.end method
