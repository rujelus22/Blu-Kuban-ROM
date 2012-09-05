.class final Lcom/google/android/location/localizer/k;
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
.method public a(Lcom/google/android/location/localizer/m;Lcom/google/android/location/localizer/m;)I
    .registers 7

    invoke-static {p2}, Lcom/google/android/location/localizer/m;->a(Lcom/google/android/location/localizer/m;)D

    move-result-wide v0

    invoke-static {p1}, Lcom/google/android/location/localizer/m;->a(Lcom/google/android/location/localizer/m;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/google/android/location/localizer/m;

    check-cast p2, Lcom/google/android/location/localizer/m;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/location/localizer/k;->a(Lcom/google/android/location/localizer/m;Lcom/google/android/location/localizer/m;)I

    move-result v0

    return v0
.end method
