.class public final Lcom/google/android/maps/driveabout/vector/cq;
.super Lcom/google/android/maps/driveabout/vector/cp;


# direct methods
.method public constructor <init>([I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cp;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cq;->c:[I

    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->d:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->d:I

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    array-length v0, p1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->j:I

    return-void
.end method


# virtual methods
.method public a(FF)V
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(II)V
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a([III)V
    .registers 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
