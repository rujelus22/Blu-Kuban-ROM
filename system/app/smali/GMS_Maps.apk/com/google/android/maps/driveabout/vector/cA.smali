.class public Lcom/google/android/maps/driveabout/vector/cA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cB;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/cU;Z)Lcom/google/android/maps/driveabout/vector/cn;
    .registers 4

    if-eqz p2, :cond_8

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cn;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/cn;-><init>(Lcom/google/android/maps/driveabout/vector/cU;)V

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cU;IZ)Lcom/google/android/maps/driveabout/vector/cz;
    .registers 5

    if-eqz p3, :cond_8

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bQ;

    invoke-direct {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/bQ;-><init>(Lcom/google/android/maps/driveabout/vector/cU;I)V

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cn;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/cn;-><init>(Lcom/google/android/maps/driveabout/vector/cU;)V

    goto :goto_7
.end method
