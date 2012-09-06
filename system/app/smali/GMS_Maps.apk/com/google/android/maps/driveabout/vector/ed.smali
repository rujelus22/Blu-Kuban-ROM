.class public final Lcom/google/android/maps/driveabout/vector/ed;
.super Lcom/google/android/maps/driveabout/vector/ec;
.source "SourceFile"


# direct methods
.method public constructor <init>([I)V
    .registers 4
    .parameter

    .prologue
    .line 173
    array-length v0, p1

    div-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/ec;-><init>(IZ)V

    .line 174
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ed;->b:[I

    .line 175
    array-length v0, p1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ed;->c:I

    .line 176
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ed;->c:I

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ed;->d:I

    .line 177
    array-length v0, p1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ed;->f:I

    .line 178
    return-void
.end method


# virtual methods
.method public a(FFF)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 189
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 4
    .parameter

    .prologue
    .line 197
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
    .line 185
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
