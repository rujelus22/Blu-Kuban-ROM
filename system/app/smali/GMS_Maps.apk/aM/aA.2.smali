.class LaM/aA;
.super Lcom/google/googlenav/ui/view/b;
.source "SourceFile"


# instance fields
.field final synthetic a:LaM/az;


# direct methods
.method constructor <init>(LaM/az;)V
    .registers 2
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, LaM/aA;->a:LaM/az;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/view/J;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 127
    iget-object v0, p0, LaM/aA;->a:LaM/az;

    invoke-virtual {v0, v1}, LaM/az;->k(Z)V

    .line 128
    iget-object v0, p0, LaM/aA;->a:LaM/az;

    invoke-static {v0}, LaM/az;->a(LaM/az;)V

    .line 129
    return v1
.end method
