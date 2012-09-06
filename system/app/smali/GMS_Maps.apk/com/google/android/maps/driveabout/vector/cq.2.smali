.class public final Lcom/google/android/maps/driveabout/vector/cQ;
.super Lcom/google/android/maps/driveabout/vector/cP;
.source "SourceFile"


# direct methods
.method public constructor <init>([I)V
    .registers 4
    .parameter

    .prologue
    .line 242
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/cP;-><init>(IZ)V

    .line 243
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cQ;->b:[I

    .line 244
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cQ;->c:I

    .line 245
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cQ;->c:I

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cQ;->d:I

    .line 246
    array-length v0, p1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cQ;->i:I

    .line 247
    return-void
.end method


# virtual methods
.method public a(FF)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 254
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
    .line 250
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 4
    .parameter

    .prologue
    .line 262
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
    .line 258
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
