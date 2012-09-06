.class public LER;
.super LET;
.source "GridViewModelInterface.java"


# instance fields
.field private a:J


# direct methods
.method public constructor <init>(JZ)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/google/android/apps/docs/editors/trixnative/mobilenativeJNI;->GridViewModelInterface_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, LET;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, LER;->a:J

    .line 17
    return-void
.end method


# virtual methods
.method public a(LEU;)LEV;
    .registers 9
    .parameter

    .prologue
    .line 67
    new-instance v6, LEV;

    iget-wide v0, p0, LER;->a:J

    invoke-static {p1}, LEU;->a(LEU;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/docs/editors/trixnative/mobilenativeJNI;->GridViewModelInterface_CanvasCoordToNearestGridCoord(JLER;JLEU;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, LEV;-><init>(JZ)V

    return-object v6
.end method

.method public declared-synchronized a()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 28
    monitor-enter p0

    :try_start_3
    iget-wide v0, p0, LER;->a:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    .line 29
    iget-boolean v0, p0, LER;->a:Z

    if-eqz v0, :cond_15

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, LER;->a:Z

    .line 31
    iget-wide v0, p0, LER;->a:J

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/trixnative/mobilenativeJNI;->delete_GridViewModelInterface(J)V

    .line 33
    :cond_15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LER;->a:J

    .line 35
    :cond_19
    invoke-super {p0}, LET;->a()V
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    .line 36
    monitor-exit p0

    return-void

    .line 28
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 24
    invoke-virtual {p0}, LER;->a()V

    .line 25
    return-void
.end method
