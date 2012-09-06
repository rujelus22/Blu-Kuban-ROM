.class public Lcom/google/googlenav/ui/wizard/H;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/friend/j;

.field private final b:Lcom/google/googlenav/android/Y;

.field private c:Lcom/google/googlenav/ui/wizard/L;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/friend/j;Lcom/google/googlenav/android/Y;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/H;->a:Lcom/google/googlenav/friend/j;

    .line 60
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/H;->b:Lcom/google/googlenav/android/Y;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/H;)Lcom/google/googlenav/friend/j;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/H;->a:Lcom/google/googlenav/friend/j;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/H;)Lcom/google/googlenav/ui/wizard/L;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/H;->c:Lcom/google/googlenav/ui/wizard/L;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/H;)Lcom/google/googlenav/android/Y;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/H;->b:Lcom/google/googlenav/android/Y;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/H;->a:Lcom/google/googlenav/friend/j;

    new-instance v1, Lcom/google/googlenav/ui/wizard/J;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/wizard/J;-><init>(Lcom/google/googlenav/ui/wizard/H;Lcom/google/googlenav/ui/wizard/I;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/j;->a(Lcom/google/googlenav/friend/k;)V

    .line 77
    return-void
.end method

.method public a(Lcom/google/googlenav/h;Lcom/google/googlenav/cu;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-virtual {p1}, Lcom/google/googlenav/h;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 101
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/H;->a:Lcom/google/googlenav/friend/j;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/j;->k()Lcom/google/googlenav/friend/i;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_1e

    .line 103
    invoke-virtual {v0, p2}, Lcom/google/googlenav/friend/i;->a(Lcom/google/googlenav/cu;)V

    .line 104
    invoke-virtual {v0}, Lcom/google/googlenav/friend/i;->e()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 107
    new-instance v1, Lcom/google/googlenav/ui/wizard/I;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/googlenav/ui/wizard/I;-><init>(Lcom/google/googlenav/ui/wizard/H;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/cu;)V

    .line 118
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    .line 120
    :cond_1e
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/L;)V
    .registers 2
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/H;->c:Lcom/google/googlenav/ui/wizard/L;

    .line 68
    return-void
.end method
