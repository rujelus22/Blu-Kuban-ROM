.class final Lcom/google/android/maps/driveabout/vector/X;
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
.method public a(Lt/e;Lt/e;)I
    .registers 5

    invoke-virtual {p2}, Lt/e;->f()I

    move-result v0

    invoke-virtual {p1}, Lt/e;->f()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lt/e;

    check-cast p2, Lt/e;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/X;->a(Lt/e;Lt/e;)I

    move-result v0

    return v0
.end method
