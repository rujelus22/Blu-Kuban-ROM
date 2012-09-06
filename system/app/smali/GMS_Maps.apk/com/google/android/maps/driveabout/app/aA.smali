.class Lcom/google/android/maps/driveabout/app/aa;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/Y;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/Y;)V
    .registers 2
    .parameter

    .prologue
    .line 685
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aa;->a:Lcom/google/android/maps/driveabout/app/Y;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 688
    invoke-static {}, Lcom/google/android/maps/driveabout/app/R;->a()V

    .line 694
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aa;->a:Lcom/google/android/maps/driveabout/app/Y;

    monitor-enter v2

    .line 706
    :try_start_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aa;->a:Lcom/google/android/maps/driveabout/app/Y;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/Y;->d:Lm/b;

    if-nez v0, :cond_15

    move-object v0, v1

    .line 707
    :goto_e
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_1e

    .line 710
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aa;->a:Lcom/google/android/maps/driveabout/app/Y;

    invoke-virtual {v2, v0, v1, v1}, Lcom/google/android/maps/driveabout/app/Y;->a(Ln/s;Lo/P;Ljava/util/ArrayList;)V

    .line 711
    return-void

    .line 706
    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aa;->a:Lcom/google/android/maps/driveabout/app/Y;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/Y;->d:Lm/b;

    invoke-virtual {v0}, Lm/b;->m()Ln/s;

    move-result-object v0

    goto :goto_e

    .line 707
    :catchall_1e
    move-exception v0

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_1e

    throw v0
.end method
