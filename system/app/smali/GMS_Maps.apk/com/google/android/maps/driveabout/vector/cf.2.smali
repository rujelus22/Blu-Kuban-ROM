.class final Lcom/google/android/maps/driveabout/vector/cf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aE;Lcom/google/android/maps/driveabout/vector/aE;)I
    .registers 5

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aE;->s_()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/aE;->s_()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/google/android/maps/driveabout/vector/aE;

    check-cast p2, Lcom/google/android/maps/driveabout/vector/aE;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/cf;->a(Lcom/google/android/maps/driveabout/vector/aE;Lcom/google/android/maps/driveabout/vector/aE;)I

    move-result v0

    return v0
.end method
