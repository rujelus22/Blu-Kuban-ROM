.class public Lcom/google/android/maps/driveabout/vector/cZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/da;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/dg;ZLcom/google/android/maps/driveabout/vector/df;)Lcom/google/android/maps/driveabout/vector/cJ;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    if-eqz p2, :cond_8

    .line 26
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-direct {v0, p1, p3}, Lcom/google/android/maps/driveabout/vector/cJ;-><init>(Lcom/google/android/maps/driveabout/vector/dg;Lcom/google/android/maps/driveabout/vector/df;)V

    .line 30
    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/dg;IZLcom/google/android/maps/driveabout/vector/df;)Lcom/google/android/maps/driveabout/vector/cY;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    if-eqz p3, :cond_8

    .line 16
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cj;

    invoke-direct {v0, p1, p2, p4}, Lcom/google/android/maps/driveabout/vector/cj;-><init>(Lcom/google/android/maps/driveabout/vector/dg;ILcom/google/android/maps/driveabout/vector/df;)V

    .line 18
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-direct {v0, p1, p4}, Lcom/google/android/maps/driveabout/vector/cJ;-><init>(Lcom/google/android/maps/driveabout/vector/dg;Lcom/google/android/maps/driveabout/vector/df;)V

    goto :goto_7
.end method
