.class Lcom/google/android/maps/driveabout/app/bE;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cH;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/bD;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/bD;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bE;->a:Lcom/google/android/maps/driveabout/app/bD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lt/af;Lcom/google/android/maps/driveabout/vector/aU;IJ)V
    .registers 8

    if-eqz p2, :cond_8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bE;->a:Lcom/google/android/maps/driveabout/app/bD;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/bD;->a(Lcom/google/android/maps/driveabout/app/bv;)V

    :cond_8
    return-void
.end method
