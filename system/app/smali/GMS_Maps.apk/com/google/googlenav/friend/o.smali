.class public Lcom/google/googlenav/friend/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/friend/o;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 20
    iget v0, p0, Lcom/google/googlenav/friend/o;->a:I

    return v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 28
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlenav/friend/o;->a:I

    .line 29
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 36
    iget v0, p0, Lcom/google/googlenav/friend/o;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlenav/friend/o;->a:I

    .line 39
    :cond_8
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/friend/o;->a:I

    .line 47
    return-void
.end method
