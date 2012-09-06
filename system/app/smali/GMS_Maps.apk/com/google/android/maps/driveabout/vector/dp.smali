.class Lcom/google/android/maps/driveabout/vector/dp;
.super Lcom/google/android/maps/driveabout/vector/dw;
.source "SourceFile"


# direct methods
.method private constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 731
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/dw;-><init>(ILcom/google/android/maps/driveabout/vector/dh;)V

    .line 732
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/maps/driveabout/vector/dh;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 728
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/dp;-><init>(I)V

    return-void
.end method


# virtual methods
.method a()Lcom/google/android/maps/driveabout/vector/dg;
    .registers 3

    .prologue
    .line 736
    new-instance v0, Lcom/google/android/maps/driveabout/vector/do;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/vector/do;-><init>(Lcom/google/android/maps/driveabout/vector/dp;Lcom/google/android/maps/driveabout/vector/dh;)V

    return-object v0
.end method
