.class public LEQ;
.super Ljava/lang/Object;
.source "Grid.java"


# instance fields
.field private a:J

.field protected a:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 39
    invoke-static {}, Lcom/google/android/apps/docs/editors/trixnative/mobilenativeJNI;->new_Grid()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, LEQ;-><init>(JZ)V

    .line 40
    return-void
.end method

.method public constructor <init>(JZ)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, LEQ;->a:Z

    .line 17
    iput-wide p1, p0, LEQ;->a:J

    .line 18
    return-void
.end method

.method public static a(LEQ;)J
    .registers 3
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    :goto_4
    return-wide v0

    :cond_5
    iget-wide v0, p0, LEQ;->a:J

    goto :goto_4
.end method


# virtual methods
.method public a(LEV;)I
    .registers 8
    .parameter

    .prologue
    .line 56
    iget-wide v0, p0, LEQ;->a:J

    invoke-static {p1}, LEV;->a(LEV;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/docs/editors/trixnative/mobilenativeJNI;->Grid_GetCellContent(JLEQ;JLEV;)I

    move-result v0

    return v0
.end method

.method public a()LER;
    .registers 6

    .prologue
    .line 51
    iget-wide v0, p0, LEQ;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/android/apps/docs/editors/trixnative/mobilenativeJNI;->Grid_getGridViewModel(JLEQ;)J

    move-result-wide v1

    .line 52
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, LER;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, LER;-><init>(JZ)V

    goto :goto_d
.end method

.method public a(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 47
    iget-wide v0, p0, LEQ;->a:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/google/android/apps/docs/editors/trixnative/mobilenativeJNI;->Grid_Initialize(JLEQ;II)V

    .line 48
    return-void
.end method

.method public declared-synchronized b()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_3
    iget-wide v0, p0, LEQ;->a:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    .line 30
    iget-boolean v0, p0, LEQ;->a:Z

    if-eqz v0, :cond_15

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, LEQ;->a:Z

    .line 32
    iget-wide v0, p0, LEQ;->a:J

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/trixnative/mobilenativeJNI;->delete_Grid(J)V

    .line 34
    :cond_15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LEQ;->a:J
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    .line 36
    :cond_19
    monitor-exit p0

    return-void

    .line 29
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 25
    invoke-virtual {p0}, LEQ;->b()V

    .line 26
    return-void
.end method
