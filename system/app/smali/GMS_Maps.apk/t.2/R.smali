.class public Lt/R;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:[I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lt/P;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lt/R;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lt/R;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lt/R;->a:Z

    if-nez v0, :cond_f

    if-gtz p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_f
    mul-int/lit8 v0, p1, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lt/R;->b:[I

    const/4 v0, 0x0

    iput v0, p0, Lt/R;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lt/R;->c:I

    return v0
.end method

.method public a(I)Lt/L;
    .registers 7

    mul-int/lit8 v0, p1, 0x3

    new-instance v1, Lt/L;

    iget-object v2, p0, Lt/R;->b:[I

    aget v2, v2, v0

    iget-object v3, p0, Lt/R;->b:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lt/R;->b:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v4, v0

    invoke-direct {v1, v2, v3, v0}, Lt/L;-><init>(III)V

    return-object v1
.end method

.method public a(II)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lt/R;->a(III)Z

    move-result v0

    return v0
.end method

.method public a(III)Z
    .registers 8

    const/4 v0, 0x0

    iget v1, p0, Lt/R;->c:I

    mul-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lt/R;->b:[I

    array-length v2, v2

    if-ne v1, v2, :cond_1c

    iget-object v1, p0, Lt/R;->b:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lt/R;->b:[I

    iget v3, p0, Lt/R;->c:I

    mul-int/lit8 v3, v3, 0x3

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lt/R;->b:[I

    :cond_1c
    iget v1, p0, Lt/R;->c:I

    mul-int/lit8 v1, v1, 0x3

    iget v2, p0, Lt/R;->c:I

    if-lez v2, :cond_3d

    iget-object v2, p0, Lt/R;->b:[I

    add-int/lit8 v3, v1, -0x3

    aget v2, v2, v3

    if-ne p1, v2, :cond_3d

    iget-object v2, p0, Lt/R;->b:[I

    add-int/lit8 v3, v1, -0x2

    aget v2, v2, v3

    if-ne p2, v2, :cond_3d

    iget-object v2, p0, Lt/R;->b:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    if-ne p3, v2, :cond_3d

    :goto_3c
    return v0

    :cond_3d
    iget-object v0, p0, Lt/R;->b:[I

    aput p1, v0, v1

    iget-object v0, p0, Lt/R;->b:[I

    add-int/lit8 v2, v1, 0x1

    aput p2, v0, v2

    iget-object v0, p0, Lt/R;->b:[I

    add-int/lit8 v1, v1, 0x2

    aput p3, v0, v1

    iget v0, p0, Lt/R;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lt/R;->c:I

    const/4 v0, 0x1

    goto :goto_3c
.end method

.method public a(Lt/L;)Z
    .registers 5

    invoke-virtual {p1}, Lt/L;->f()I

    move-result v0

    invoke-virtual {p1}, Lt/L;->g()I

    move-result v1

    invoke-virtual {p1}, Lt/L;->h()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lt/R;->a(III)Z

    move-result v0

    return v0
.end method

.method public b()Lt/L;
    .registers 2

    iget v0, p0, Lt/R;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lt/R;->a(I)Lt/L;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lt/R;->c:I

    return-void
.end method

.method public d()Lt/P;
    .registers 5

    const/4 v3, 0x0

    iget v0, p0, Lt/R;->c:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [I

    iget-object v1, p0, Lt/R;->b:[I

    iget v2, p0, Lt/R;->c:I

    mul-int/lit8 v2, v2, 0x3

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lt/P;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lt/P;-><init>([ILt/Q;)V

    return-object v1
.end method
