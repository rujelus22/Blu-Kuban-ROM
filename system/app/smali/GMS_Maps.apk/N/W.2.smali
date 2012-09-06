.class public Ln/W;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:[I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 678
    const-class v0, Ln/U;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Ln/W;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 683
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Ln/W;-><init>(I)V

    .line 684
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 687
    sget-boolean v0, Ln/W;->a:Z

    if-nez v0, :cond_f

    if-gtz p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 688
    :cond_f
    mul-int/lit8 v0, p1, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Ln/W;->b:[I

    .line 690
    const/4 v0, 0x0

    iput v0, p0, Ln/W;->c:I

    .line 691
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 729
    iget v0, p0, Ln/W;->c:I

    return v0
.end method

.method public a(I)Ln/Q;
    .registers 7
    .parameter

    .prologue
    .line 733
    mul-int/lit8 v0, p1, 0x3

    .line 734
    new-instance v1, Ln/Q;

    iget-object v2, p0, Ln/W;->b:[I

    aget v2, v2, v0

    iget-object v3, p0, Ln/W;->b:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Ln/W;->b:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v4, v0

    invoke-direct {v1, v2, v3, v0}, Ln/Q;-><init>(III)V

    return-object v1
.end method

.method public a(II)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 721
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ln/W;->a(III)Z

    move-result v0

    return v0
.end method

.method public a(III)Z
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 698
    iget v1, p0, Ln/W;->c:I

    mul-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Ln/W;->b:[I

    array-length v2, v2

    if-ne v1, v2, :cond_1c

    .line 699
    iget-object v1, p0, Ln/W;->b:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 700
    iget-object v2, p0, Ln/W;->b:[I

    iget v3, p0, Ln/W;->c:I

    mul-int/lit8 v3, v3, 0x3

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 702
    iput-object v1, p0, Ln/W;->b:[I

    .line 706
    :cond_1c
    iget v1, p0, Ln/W;->c:I

    mul-int/lit8 v1, v1, 0x3

    .line 707
    iget v2, p0, Ln/W;->c:I

    if-lez v2, :cond_3d

    iget-object v2, p0, Ln/W;->b:[I

    add-int/lit8 v3, v1, -0x3

    aget v2, v2, v3

    if-ne p1, v2, :cond_3d

    iget-object v2, p0, Ln/W;->b:[I

    add-int/lit8 v3, v1, -0x2

    aget v2, v2, v3

    if-ne p2, v2, :cond_3d

    iget-object v2, p0, Ln/W;->b:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    if-ne p3, v2, :cond_3d

    .line 717
    :goto_3c
    return v0

    .line 713
    :cond_3d
    iget-object v0, p0, Ln/W;->b:[I

    aput p1, v0, v1

    .line 714
    iget-object v0, p0, Ln/W;->b:[I

    add-int/lit8 v2, v1, 0x1

    aput p2, v0, v2

    .line 715
    iget-object v0, p0, Ln/W;->b:[I

    add-int/lit8 v1, v1, 0x2

    aput p3, v0, v1

    .line 716
    iget v0, p0, Ln/W;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ln/W;->c:I

    .line 717
    const/4 v0, 0x1

    goto :goto_3c
.end method

.method public a(Ln/Q;)Z
    .registers 5
    .parameter

    .prologue
    .line 725
    invoke-virtual {p1}, Ln/Q;->f()I

    move-result v0

    invoke-virtual {p1}, Ln/Q;->g()I

    move-result v1

    invoke-virtual {p1}, Ln/Q;->h()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Ln/W;->a(III)Z

    move-result v0

    return v0
.end method

.method public b()Ln/Q;
    .registers 2

    .prologue
    .line 740
    iget v0, p0, Ln/W;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ln/W;->a(I)Ln/Q;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .registers 2

    .prologue
    .line 744
    const/4 v0, 0x0

    iput v0, p0, Ln/W;->c:I

    .line 745
    return-void
.end method

.method public d()Ln/U;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 748
    iget v0, p0, Ln/W;->c:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [I

    .line 749
    iget-object v1, p0, Ln/W;->b:[I

    iget v2, p0, Ln/W;->c:I

    mul-int/lit8 v2, v2, 0x3

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 751
    new-instance v1, Ln/U;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ln/U;-><init>([ILn/V;)V

    return-object v1
.end method
