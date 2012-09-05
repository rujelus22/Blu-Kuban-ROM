.class Lcom/google/android/maps/driveabout/vector/cJ;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cH;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/vector/cI;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/vector/cI;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cJ;->a:Lcom/google/android/maps/driveabout/vector/cI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lt/af;Lcom/google/android/maps/driveabout/vector/aU;IJ)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->a:Lcom/google/android/maps/driveabout/vector/cI;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/cI;->a(Lcom/google/android/maps/driveabout/vector/cI;)Lcom/google/android/maps/driveabout/vector/cC;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->a:Lcom/google/android/maps/driveabout/vector/cI;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/cI;->b(Lcom/google/android/maps/driveabout/vector/cI;)Lz/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    if-eqz p2, :cond_18

    invoke-interface {p2}, Lcom/google/android/maps/driveabout/vector/aU;->g()V

    :cond_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_30

    if-eqz p2, :cond_20

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->a:Lcom/google/android/maps/driveabout/vector/cI;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/cI;->c(Lcom/google/android/maps/driveabout/vector/cI;)V

    :cond_20
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->a:Lcom/google/android/maps/driveabout/vector/cI;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cI;->c:Lcom/google/android/maps/driveabout/vector/cm;

    if-eqz v0, :cond_2f

    if-nez p2, :cond_2a

    if-nez p3, :cond_2f

    :cond_2a
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cm;->a(ZZ)V

    :cond_2f
    return-void

    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method
