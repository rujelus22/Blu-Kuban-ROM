.class Lcom/google/android/maps/driveabout/vector/cg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cK;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/vector/ce;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/vector/ce;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cg;->a:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .registers 6

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cg;->a:Lcom/google/android/maps/driveabout/vector/ce;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/ce;->a(Lcom/google/android/maps/driveabout/vector/ce;)LB/c;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cg;->a:Lcom/google/android/maps/driveabout/vector/ce;

    monitor-enter v1

    :try_start_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cg;->a:Lcom/google/android/maps/driveabout/vector/ce;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/vector/ce;->a(Lcom/google/android/maps/driveabout/vector/ce;Z)Z

    monitor-exit v1

    :cond_13
    return v3

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v0
.end method
