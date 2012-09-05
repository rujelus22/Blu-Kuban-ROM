.class final Lcom/google/android/location/localizer/g;
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
.method public a(Le/v;Le/v;)I
    .registers 8

    iget-object v0, p2, Le/v;->b:Ljava/lang/Object;

    check-cast v0, Le/H;

    invoke-static {v0}, Lcom/google/android/location/localizer/e;->a(Le/H;)D

    move-result-wide v1

    iget-object v0, p1, Le/v;->b:Ljava/lang/Object;

    check-cast v0, Le/H;

    invoke-static {v0}, Lcom/google/android/location/localizer/e;->a(Le/H;)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Le/v;

    check-cast p2, Le/v;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/location/localizer/g;->a(Le/v;Le/v;)I

    move-result v0

    return v0
.end method
