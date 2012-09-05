.class Lcom/google/android/maps/driveabout/vector/ci;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Lcom/google/android/maps/driveabout/vector/aE;

.field private final b:[Lcom/google/android/maps/driveabout/vector/cI;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/aE;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/vector/aE;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->a:[Lcom/google/android/maps/driveabout/vector/aE;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/cI;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/vector/cI;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->b:[Lcom/google/android/maps/driveabout/vector/cI;

    return-void
.end method


# virtual methods
.method public a()[Lcom/google/android/maps/driveabout/vector/aE;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->a:[Lcom/google/android/maps/driveabout/vector/aE;

    return-object v0
.end method

.method public b()[Lcom/google/android/maps/driveabout/vector/cI;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->b:[Lcom/google/android/maps/driveabout/vector/cI;

    return-object v0
.end method
