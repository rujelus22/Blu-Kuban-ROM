.class Lcom/google/android/maps/driveabout/vector/cD;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Lcom/google/android/maps/driveabout/vector/aD;

.field private final b:[Lcom/google/android/maps/driveabout/vector/db;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1609
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/aD;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/vector/aD;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cD;->a:[Lcom/google/android/maps/driveabout/vector/aD;

    .line 1610
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/db;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/vector/db;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cD;->b:[Lcom/google/android/maps/driveabout/vector/db;

    .line 1611
    return-void
.end method


# virtual methods
.method public a()[Lcom/google/android/maps/driveabout/vector/aD;
    .registers 2

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cD;->a:[Lcom/google/android/maps/driveabout/vector/aD;

    return-object v0
.end method

.method public b()[Lcom/google/android/maps/driveabout/vector/db;
    .registers 2

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cD;->b:[Lcom/google/android/maps/driveabout/vector/db;

    return-object v0
.end method
