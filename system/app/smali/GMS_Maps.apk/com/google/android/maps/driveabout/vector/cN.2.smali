.class public final Lcom/google/android/maps/driveabout/vector/cN;
.super Lcom/google/android/maps/driveabout/vector/cM;
.source "SourceFile"


# direct methods
.method public constructor <init>([I)V
    .registers 3
    .parameter

    .prologue
    .line 461
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cM;-><init>()V

    .line 462
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cN;->b:[I

    .line 463
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cN;->c:I

    .line 464
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cN;->c:I

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cN;->d:I

    .line 465
    array-length v0, p1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cN;->i:I

    .line 466
    return-void
.end method


# virtual methods
.method public a(FF)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 473
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 469
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 4
    .parameter

    .prologue
    .line 481
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a([III)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 477
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
