.class Lcom/google/googlenav/friend/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/bn;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/aK;

.field final synthetic b:Lcom/google/googlenav/friend/t;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/t;Lcom/google/googlenav/friend/aK;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/google/googlenav/friend/A;->b:Lcom/google/googlenav/friend/t;

    iput-object p2, p0, Lcom/google/googlenav/friend/A;->a:Lcom/google/googlenav/friend/aK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 499
    iget-object v0, p0, Lcom/google/googlenav/friend/A;->b:Lcom/google/googlenav/friend/t;

    iget-object v1, p0, Lcom/google/googlenav/friend/A;->a:Lcom/google/googlenav/friend/aK;

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/t;->a(Lcom/google/googlenav/friend/t;Lcom/google/googlenav/friend/aK;)V

    .line 500
    return-void
.end method

.method public b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 505
    return-void
.end method

.method public c(Z)V
    .registers 2
    .parameter

    .prologue
    .line 510
    return-void
.end method
