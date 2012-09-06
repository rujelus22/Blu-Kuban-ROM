.class final Lcom/dropbox/android/activity/base/f;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field private a:I

.field private b:J


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/dropbox/android/activity/base/f;->a:I

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/dropbox/android/activity/base/f;->b:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/android/activity/base/b;)V
    .registers 2
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/dropbox/android/activity/base/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 3

    .prologue
    .line 46
    iget v0, p0, Lcom/dropbox/android/activity/base/f;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/dropbox/android/activity/base/f;->a:I

    .line 47
    iget v0, p0, Lcom/dropbox/android/activity/base/f;->a:I

    if-nez v0, :cond_13

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dropbox/android/activity/base/f;->b:J

    .line 51
    invoke-static {}, Lcom/dropbox/android/util/h;->ae()V

    .line 53
    :cond_13
    iget v0, p0, Lcom/dropbox/android/activity/base/f;->a:I

    return v0
.end method

.method public final b()I
    .registers 3

    .prologue
    .line 60
    iget v0, p0, Lcom/dropbox/android/activity/base/f;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dropbox/android/activity/base/f;->a:I

    .line 63
    iget v0, p0, Lcom/dropbox/android/activity/base/f;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 64
    invoke-static {}, Lcom/dropbox/android/util/h;->ae()V

    .line 66
    :cond_e
    iget v0, p0, Lcom/dropbox/android/activity/base/f;->a:I

    return v0
.end method

.method public final c()J
    .registers 5

    .prologue
    const-wide/16 v0, -0x1

    .line 70
    iget-wide v2, p0, Lcom/dropbox/android/activity/base/f;->b:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_9

    .line 75
    :goto_8
    return-wide v0

    .line 74
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 75
    iget-wide v2, p0, Lcom/dropbox/android/activity/base/f;->b:J

    sub-long/2addr v0, v2

    goto :goto_8
.end method
