.class final Lcom/google/android/youtube/core/transfer/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:I

.field private final c:Ljava/lang/Object;

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;IJ)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/g;->c:Ljava/lang/Object;

    .line 226
    iput-wide p3, p0, Lcom/google/android/youtube/core/transfer/g;->a:J

    .line 227
    iput p2, p0, Lcom/google/android/youtube/core/transfer/g;->b:I

    .line 228
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 232
    iget v0, p0, Lcom/google/android/youtube/core/transfer/g;->d:I

    return v0
.end method

.method public final a(I)V
    .registers 4
    .parameter

    .prologue
    .line 244
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/g;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 245
    const/4 v0, 0x0

    :try_start_4
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/transfer/g;->d:I

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/g;->e:Z

    .line 247
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/g;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 248
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/g;->e:Z

    return v0
.end method
