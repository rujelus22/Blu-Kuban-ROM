.class public Lcom/google/android/maps/driveabout/vector/dc;
.super Lcom/google/android/maps/driveabout/vector/bM;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bM;-><init>()V

    return-void
.end method


# virtual methods
.method protected c(Lcom/google/android/maps/driveabout/vector/t;)I
    .registers 3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->k()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method
