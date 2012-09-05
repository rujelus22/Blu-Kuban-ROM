.class Lcom/google/android/maps/driveabout/vector/ba;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/vector/aZ;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/vector/aZ;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ba;->a:Lcom/google/android/maps/driveabout/vector/aZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/bH;Lcom/google/android/maps/driveabout/vector/bH;)I
    .registers 5

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bH;->a()Lt/l;

    move-result-object v0

    invoke-interface {v0}, Lt/l;->i()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bH;->a()Lt/l;

    move-result-object v1

    invoke-interface {v1}, Lt/l;->i()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/google/android/maps/driveabout/vector/bH;

    check-cast p2, Lcom/google/android/maps/driveabout/vector/bH;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/ba;->a(Lcom/google/android/maps/driveabout/vector/bH;Lcom/google/android/maps/driveabout/vector/bH;)I

    move-result v0

    return v0
.end method
