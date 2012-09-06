.class Lcom/google/android/maps/driveabout/vector/dt;
.super Lcom/google/android/maps/driveabout/vector/dk;
.source "SourceFile"


# direct methods
.method private constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 853
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/dk;-><init>(ILcom/google/android/maps/driveabout/vector/dh;)V

    .line 854
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/maps/driveabout/vector/dh;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 851
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/dt;-><init>(I)V

    return-void
.end method


# virtual methods
.method a()Lcom/google/android/maps/driveabout/vector/dg;
    .registers 3

    .prologue
    .line 858
    new-instance v0, Lcom/google/android/maps/driveabout/vector/ds;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/vector/ds;-><init>(Lcom/google/android/maps/driveabout/vector/dt;Lcom/google/android/maps/driveabout/vector/dh;)V

    return-object v0
.end method
