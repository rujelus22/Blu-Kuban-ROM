.class public Lcom/google/android/maps/driveabout/vector/dP;
.super Lcom/google/android/maps/driveabout/vector/cf;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/df;)V
    .registers 2
    .parameter

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/cf;-><init>(Lcom/google/android/maps/driveabout/vector/df;)V

    .line 195
    return-void
.end method


# virtual methods
.method protected c(Lcom/google/android/maps/driveabout/vector/k;)I
    .registers 3
    .parameter

    .prologue
    .line 199
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method
