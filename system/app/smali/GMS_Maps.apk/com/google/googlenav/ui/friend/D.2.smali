.class public Lcom/google/googlenav/ui/friend/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/af;


# instance fields
.field private final a:I

.field private final b:Lah/a;

.field private final c:Lcom/google/googlenav/friend/aM;


# direct methods
.method public constructor <init>(Lah/a;Lcom/google/googlenav/friend/aM;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/googlenav/ui/friend/D;->b:Lah/a;

    .line 26
    iput-object p2, p0, Lcom/google/googlenav/ui/friend/D;->c:Lcom/google/googlenav/friend/aM;

    .line 27
    iput p3, p0, Lcom/google/googlenav/ui/friend/D;->a:I

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/ag;)LS/f;
    .registers 6
    .parameter

    .prologue
    .line 41
    check-cast p1, Lcom/google/googlenav/ui/friend/E;

    .line 43
    invoke-static {p1}, Lcom/google/googlenav/ui/friend/E;->a(Lcom/google/googlenav/ui/friend/E;)Ljava/lang/Long;

    move-result-object v1

    .line 44
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/D;->b:Lah/a;

    new-instance v2, Lcom/google/googlenav/ui/friend/E;

    iget v3, p0, Lcom/google/googlenav/ui/friend/D;->a:I

    invoke-direct {v2, v1, v3}, Lcom/google/googlenav/ui/friend/E;-><init>(Ljava/lang/Long;I)V

    invoke-virtual {v0, v2}, Lah/a;->a(Lcom/google/googlenav/ui/friend/E;)LS/f;

    move-result-object v0

    .line 46
    if-nez v0, :cond_3c

    .line 48
    iget-object v2, p0, Lcom/google/googlenav/ui/friend/D;->c:Lcom/google/googlenav/friend/aM;

    if-eqz v2, :cond_2f

    .line 49
    iget-object v2, p0, Lcom/google/googlenav/ui/friend/D;->c:Lcom/google/googlenav/friend/aM;

    invoke-virtual {v2, v1}, Lcom/google/googlenav/friend/aM;->a(Ljava/lang/Long;)Lcom/google/googlenav/friend/aK;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_2f

    .line 51
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/googlenav/friend/aK;->j()Z

    move-result v1

    iget v2, p0, Lcom/google/googlenav/ui/friend/D;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/bn;->a(ZI)LS/f;

    move-result-object v0

    .line 55
    :cond_2f
    if-nez v0, :cond_3c

    .line 57
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/googlenav/ui/friend/D;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/bn;->a(ZI)LS/f;

    move-result-object v0

    .line 61
    :cond_3c
    return-object v0
.end method
