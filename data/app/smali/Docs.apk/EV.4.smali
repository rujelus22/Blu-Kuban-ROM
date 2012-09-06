.class public LEV;
.super Ljava/lang/Object;
.source "Vector2I.java"


# instance fields
.field private a:J

.field protected a:Z


# direct methods
.method public constructor <init>(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-static {p1, p2}, Lcom/google/android/apps/docs/editors/trixnative/mobilenativeJNI;->new_Vector2I(II)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, LEV;-><init>(JZ)V

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
    iput-boolean p3, p0, LEV;->a:Z

    .line 17
    iput-wide p1, p0, LEV;->a:J

    .line 18
    return-void
.end method

.method public static a(LEV;)J
    .registers 3
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    :goto_4
    return-wide v0

    :cond_5
    iget-wide v0, p0, LEV;->a:J

    goto :goto_4
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 47
    iget-wide v0, p0, LEV;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/android/apps/docs/editors/trixnative/mobilenativeJNI;->Vector2I_x_get(JLEV;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized a()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_3
    iget-wide v0, p0, LEV;->a:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    .line 30
    iget-boolean v0, p0, LEV;->a:Z

    if-eqz v0, :cond_15

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, LEV;->a:Z

    .line 32
    iget-wide v0, p0, LEV;->a:J

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/trixnative/mobilenativeJNI;->delete_Vector2I(J)V

    .line 34
    :cond_15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LEV;->a:J
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

.method public b()I
    .registers 3

    .prologue
    .line 55
    iget-wide v0, p0, LEV;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/android/apps/docs/editors/trixnative/mobilenativeJNI;->Vector2I_y_get(JLEV;)I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 25
    invoke-virtual {p0}, LEV;->a()V

    .line 26
    return-void
.end method
