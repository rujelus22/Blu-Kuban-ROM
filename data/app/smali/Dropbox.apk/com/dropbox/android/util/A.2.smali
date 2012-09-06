.class final Lcom/dropbox/android/util/A;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const/4 v0, -0x1

    iput v0, p0, Lcom/dropbox/android/util/A;->a:I

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/util/A;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/android/util/z;)V
    .registers 2
    .parameter

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/dropbox/android/util/A;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(DZ)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 180
    monitor-enter p0

    const-wide/high16 v0, 0x4059

    mul-double/2addr v0, p1

    double-to-int v0, v0

    .line 181
    :try_start_5
    iget v1, p0, Lcom/dropbox/android/util/A;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    iget-boolean v1, p0, Lcom/dropbox/android/util/A;->b:Z

    if-ne v1, p3, :cond_18

    iget v1, p0, Lcom/dropbox/android/util/A;->a:I

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_30

    .line 187
    :cond_18
    invoke-static {}, Lcom/dropbox/android/util/h;->u()Lcom/dropbox/android/util/r;

    move-result-object v1

    const-string v2, "percent"

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v1

    const-string v2, "plugged"

    invoke-virtual {v1, v2, p3}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Z)Lcom/dropbox/android/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/android/util/r;->c()V

    .line 188
    iput v0, p0, Lcom/dropbox/android/util/A;->a:I

    .line 189
    iput-boolean p3, p0, Lcom/dropbox/android/util/A;->b:Z
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_32

    .line 191
    :cond_30
    monitor-exit p0

    return-void

    .line 180
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method
