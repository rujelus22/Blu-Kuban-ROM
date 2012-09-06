.class Lcom/google/android/maps/driveabout/vector/dc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw/j;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/vector/db;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/vector/db;)V
    .registers 2
    .parameter

    .prologue
    .line 752
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/dc;->a:Lcom/google/android/maps/driveabout/vector/db;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln/am;Lcom/google/android/maps/driveabout/vector/aV;ZJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 756
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dc;->a:Lcom/google/android/maps/driveabout/vector/db;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/db;->a(Lcom/google/android/maps/driveabout/vector/db;)Lw/e;

    move-result-object v1

    monitor-enter v1

    .line 757
    :try_start_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dc;->a:Lcom/google/android/maps/driveabout/vector/db;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/db;->b(Lcom/google/android/maps/driveabout/vector/db;)Lt/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lt/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 758
    if-eqz p2, :cond_18

    .line 759
    invoke-interface {p2}, Lcom/google/android/maps/driveabout/vector/aV;->g()V

    .line 762
    :cond_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_30

    .line 764
    if-eqz p2, :cond_20

    .line 765
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dc;->a:Lcom/google/android/maps/driveabout/vector/db;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/db;->c(Lcom/google/android/maps/driveabout/vector/db;)V

    .line 770
    :cond_20
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dc;->a:Lcom/google/android/maps/driveabout/vector/db;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/db;->a:Lcom/google/android/maps/driveabout/vector/cH;

    .line 771
    if-eqz v0, :cond_2f

    if-nez p2, :cond_2a

    if-nez p3, :cond_2f

    .line 772
    :cond_2a
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cH;->a(ZZ)V

    .line 774
    :cond_2f
    return-void

    .line 762
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method
