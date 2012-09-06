.class public final Lcom/google/android/maps/driveabout/vector/dZ;
.super Lcom/google/android/maps/driveabout/vector/dY;
.source "SourceFile"


# direct methods
.method public constructor <init>([I)V
    .registers 3
    .parameter

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/dY;-><init>()V

    .line 334
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/dZ;->b:[I

    .line 335
    array-length v0, p1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dZ;->c:I

    .line 336
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dZ;->c:I

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dZ;->d:I

    .line 337
    array-length v0, p1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dZ;->f:I

    .line 338
    return-void
.end method


# virtual methods
.method public a(FFF)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 349
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 4
    .parameter

    .prologue
    .line 357
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ln/Q;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 345
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
