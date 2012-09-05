.class final Lcom/google/android/maps/driveabout/vector/bK;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/vector/bJ;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bK;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/bH;Lcom/google/android/maps/driveabout/vector/bH;)I
    .registers 5

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bH;->a()Lt/l;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lt/l;)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bH;->a()Lt/l;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lt/l;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/google/android/maps/driveabout/vector/bH;

    check-cast p2, Lcom/google/android/maps/driveabout/vector/bH;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/bK;->a(Lcom/google/android/maps/driveabout/vector/bH;Lcom/google/android/maps/driveabout/vector/bH;)I

    move-result v0

    return v0
.end method
