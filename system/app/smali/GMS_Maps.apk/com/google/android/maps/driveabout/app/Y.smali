.class final Lcom/google/android/maps/driveabout/app/Y;
.super Ljava/lang/Object;

# interfaces
.implements Lar/d;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    check-cast p1, Lcom/google/android/maps/driveabout/app/X;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/X;->g()F

    move-result v0

    check-cast p2, Lcom/google/android/maps/driveabout/app/X;

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/app/X;->g()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method
