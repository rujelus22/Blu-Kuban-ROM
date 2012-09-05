.class Lcom/google/android/maps/driveabout/app/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/g;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/g;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/h;->a:Lcom/google/android/maps/driveabout/app/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/h;->a:Lcom/google/android/maps/driveabout/app/g;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/h;->a:Lcom/google/android/maps/driveabout/app/g;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/g;->b(Lcom/google/android/maps/driveabout/app/g;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/h;->a:Lcom/google/android/maps/driveabout/app/g;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/app/g;->a(Lcom/google/android/maps/driveabout/app/g;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/h;->a:Lcom/google/android/maps/driveabout/app/g;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/g;->c(Lcom/google/android/maps/driveabout/app/g;)V

    :cond_16
    monitor-exit v1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method
