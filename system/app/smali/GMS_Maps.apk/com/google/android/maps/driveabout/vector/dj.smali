.class public final Lcom/google/android/maps/driveabout/vector/dj;
.super Lcom/google/android/maps/driveabout/vector/di;


# direct methods
.method public constructor <init>([I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/di;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/dj;->g:[I

    array-length v0, p1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dj;->h:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dj;->h:I

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dj;->i:I

    array-length v0, p1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dj;->k:I

    return-void
.end method


# virtual methods
.method public a(FFF)V
    .registers 6

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

.method public a(Lt/L;I)V
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Immutable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
