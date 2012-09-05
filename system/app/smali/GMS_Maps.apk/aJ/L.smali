.class public LaJ/L;
.super Ljava/lang/Object;

# interfaces
.implements LaJ/K;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, LaJ/L;->a:I

    iput v0, p0, LaJ/L;->b:I

    return-void
.end method


# virtual methods
.method public a(LaJ/P;)LaJ/I;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Z)V
    .registers 2

    return-void
.end method

.method public a(II)Z
    .registers 5

    const/4 v1, -0x1

    iget v0, p0, LaJ/L;->a:I

    if-eq p1, v0, :cond_9

    iget v0, p0, LaJ/L;->a:I

    if-ne v0, v1, :cond_11

    :cond_9
    iget v0, p0, LaJ/L;->b:I

    if-eq p2, v0, :cond_17

    iget v0, p0, LaJ/L;->b:I

    if-eq v0, v1, :cond_17

    :cond_11
    const/4 v0, 0x1

    :goto_12
    iput p1, p0, LaJ/L;->a:I

    iput p2, p0, LaJ/L;->b:I

    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public g()V
    .registers 1

    return-void
.end method

.method public h()V
    .registers 1

    return-void
.end method

.method public i()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
