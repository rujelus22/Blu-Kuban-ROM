.class LaM/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/cj;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ca;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:LaM/bU;


# direct methods
.method constructor <init>(LaM/bU;Lcom/google/googlenav/ca;ZZ)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1538
    iput-object p1, p0, LaM/cd;->d:LaM/bU;

    iput-object p2, p0, LaM/cd;->a:Lcom/google/googlenav/ca;

    iput-boolean p3, p0, LaM/cd;->b:Z

    iput-boolean p4, p0, LaM/cd;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 1541
    iget-object v0, p0, LaM/cd;->d:LaM/bU;

    invoke-virtual {v0}, LaM/bU;->af()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1543
    iget-object v0, p0, LaM/cd;->d:LaM/bU;

    invoke-virtual {v0}, LaM/bU;->bp()V

    .line 1545
    :cond_d
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 1549
    iget-object v0, p0, LaM/cd;->a:Lcom/google/googlenav/ca;

    iget-boolean v1, p0, LaM/cd;->b:Z

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ca;->a(Z)V

    .line 1550
    iget-object v0, p0, LaM/cd;->a:Lcom/google/googlenav/ca;

    iget-boolean v1, p0, LaM/cd;->c:Z

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ca;->b(Z)V

    .line 1551
    return-void
.end method
