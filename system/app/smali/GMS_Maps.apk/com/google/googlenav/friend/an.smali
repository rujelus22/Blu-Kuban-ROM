.class Lcom/google/googlenav/friend/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/aP;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/aS;

.field final synthetic b:Lcom/google/googlenav/friend/ai;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/ai;Lcom/google/googlenav/friend/aS;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/google/googlenav/friend/an;->b:Lcom/google/googlenav/friend/ai;

    iput-object p2, p0, Lcom/google/googlenav/friend/an;->a:Lcom/google/googlenav/friend/aS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/googlenav/friend/an;->a:Lcom/google/googlenav/friend/aS;

    if-eqz v0, :cond_a

    .line 272
    iget-object v0, p0, Lcom/google/googlenav/friend/an;->a:Lcom/google/googlenav/friend/aS;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/friend/aS;->a(I)V

    .line 274
    :cond_a
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/googlenav/friend/an;->a:Lcom/google/googlenav/friend/aS;

    if-eqz v0, :cond_a

    .line 279
    iget-object v0, p0, Lcom/google/googlenav/friend/an;->a:Lcom/google/googlenav/friend/aS;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/googlenav/friend/aS;->a(I)V

    .line 281
    :cond_a
    return-void
.end method
