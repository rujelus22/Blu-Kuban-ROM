.class public Lat/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lat/K;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lat/L;->a:I

    .line 15
    iput v0, p0, Lat/L;->b:I

    return-void
.end method


# virtual methods
.method public a(Lat/P;)Lat/I;
    .registers 3
    .parameter

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 19
    return-void
.end method

.method public a(II)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 62
    iget v0, p0, Lat/L;->a:I

    if-eq p1, v0, :cond_9

    iget v0, p0, Lat/L;->a:I

    if-ne v0, v1, :cond_11

    :cond_9
    iget v0, p0, Lat/L;->b:I

    if-eq p2, v0, :cond_17

    iget v0, p0, Lat/L;->b:I

    if-eq v0, v1, :cond_17

    :cond_11
    const/4 v0, 0x1

    .line 64
    :goto_12
    iput p1, p0, Lat/L;->a:I

    .line 65
    iput p2, p0, Lat/L;->b:I

    .line 66
    return v0

    .line 62
    :cond_17
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public g()V
    .registers 1

    .prologue
    .line 37
    return-void
.end method

.method public h()V
    .registers 1

    .prologue
    .line 41
    return-void
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method
