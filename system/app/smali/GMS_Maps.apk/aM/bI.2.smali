.class LaM/bI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/cj;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ca;

.field final synthetic b:LaM/bH;


# direct methods
.method constructor <init>(LaM/bH;Lcom/google/googlenav/ca;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, LaM/bI;->b:LaM/bH;

    iput-object p2, p0, LaM/bI;->a:Lcom/google/googlenav/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 241
    iget-object v0, p0, LaM/bI;->b:LaM/bH;

    invoke-static {v0}, LaM/bH;->a(LaM/bH;)V

    .line 242
    iget-object v0, p0, LaM/bI;->a:Lcom/google/googlenav/ca;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ca;->a(Z)V

    .line 243
    iget-object v0, p0, LaM/bI;->a:Lcom/google/googlenav/ca;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ca;->b(Z)V

    .line 244
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 249
    return-void
.end method
