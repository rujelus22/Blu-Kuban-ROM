.class public Lcom/google/android/maps/driveabout/vector/cO;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cB;


# instance fields
.field private final a:Lt/m;


# direct methods
.method public constructor <init>(Lt/m;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cO;->a:Lt/m;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/cU;Z)Lcom/google/android/maps/driveabout/vector/cn;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cU;IZ)Lcom/google/android/maps/driveabout/vector/cz;
    .registers 6

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cn;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cO;->a:Lt/m;

    invoke-direct {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/cn;-><init>(Lcom/google/android/maps/driveabout/vector/cU;Lt/m;)V

    return-object v0
.end method
