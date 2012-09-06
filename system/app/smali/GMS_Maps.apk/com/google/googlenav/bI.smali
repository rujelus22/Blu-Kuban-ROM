.class public Lcom/google/googlenav/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/F;


# instance fields
.field private a:Lcom/google/googlenav/ai;

.field private b:B


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ai;)V
    .registers 3
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/googlenav/bi;->b:B

    .line 15
    iput-object p1, p0, Lcom/google/googlenav/bi;->a:Lcom/google/googlenav/ai;

    .line 16
    return-void
.end method


# virtual methods
.method public a(B)V
    .registers 2
    .parameter

    .prologue
    .line 39
    iput-byte p1, p0, Lcom/google/googlenav/bi;->b:B

    .line 40
    return-void
.end method

.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 22
    if-eqz p1, :cond_b

    const/4 v0, -0x1

    if-eq p1, v0, :cond_b

    .line 23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 25
    :cond_b
    return-void
.end method

.method public b(I)Lcom/google/googlenav/E;
    .registers 3
    .parameter

    .prologue
    .line 44
    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/google/googlenav/bi;->a:Lcom/google/googlenav/ai;

    :goto_4
    return-object v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public c()I
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public c(I)I
    .registers 3
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public d()B
    .registers 2

    .prologue
    .line 34
    iget-byte v0, p0, Lcom/google/googlenav/bi;->b:B

    return v0
.end method

.method public e()Lcom/google/googlenav/E;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/googlenav/bi;->a:Lcom/google/googlenav/ai;

    return-object v0
.end method

.method public f()I
    .registers 2

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method
