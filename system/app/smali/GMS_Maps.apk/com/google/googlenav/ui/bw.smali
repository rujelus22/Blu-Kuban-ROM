.class public Lcom/google/googlenav/ui/bw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/af;


# instance fields
.field private final a:Lah/s;

.field private final b:LS/f;


# direct methods
.method public constructor <init>(Lah/s;)V
    .registers 3
    .parameter

    .prologue
    .line 21
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->q()LS/f;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/bw;-><init>(Lah/s;LS/f;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lah/s;LS/f;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/googlenav/ui/bw;->a:Lah/s;

    .line 26
    iput-object p2, p0, Lcom/google/googlenav/ui/bw;->b:LS/f;

    .line 27
    return-void
.end method


# virtual methods
.method public a()LS/f;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/googlenav/ui/bw;->b:LS/f;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/ag;)LS/f;
    .registers 3
    .parameter

    .prologue
    .line 37
    check-cast p1, Lcom/google/googlenav/ui/bx;

    .line 38
    iget-object v0, p0, Lcom/google/googlenav/ui/bw;->a:Lah/s;

    invoke-virtual {v0, p1}, Lah/s;->a(Lcom/google/googlenav/ui/bx;)LS/f;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_b

    .line 43
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/ui/bw;->b:LS/f;

    goto :goto_a
.end method

.method public b()Lah/s;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/googlenav/ui/bw;->a:Lah/s;

    return-object v0
.end method
