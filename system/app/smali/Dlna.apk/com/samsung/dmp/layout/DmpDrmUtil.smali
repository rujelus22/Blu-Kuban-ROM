.class public Lcom/samsung/dmp/layout/DmpDrmUtil;
.super Ljava/lang/Object;
.source "DmpDrmUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/dmp/layout/DmpDrmUtil$DrmCheckThread;
    }
.end annotation


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private isDrmChecked:Z

.field private isDrmFile:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "DLNA"

    iput-object v0, p0, Lcom/samsung/dmp/layout/DmpDrmUtil;->TAG:Ljava/lang/String;

    .line 24
    const-string v0, "SF_DmpDrmUtil."

    iput-object v0, p0, Lcom/samsung/dmp/layout/DmpDrmUtil;->CLASS_NAME:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/samsung/dmp/layout/DmpDrmUtil;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/dmp/layout/DmpDrmUtil;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/samsung/dmp/layout/DmpDrmUtil;->isDrmFile:I

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/dmp/layout/DmpDrmUtil;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/samsung/dmp/layout/DmpDrmUtil;->isDrmFile:I

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/dmp/layout/DmpDrmUtil;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DmpDrmUtil;->isDrmChecked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/dmp/layout/DmpDrmUtil;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/dmp/layout/DmpDrmUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public isDrmFile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I
    .registers 13
    .parameter "selectedItemUri"
    .parameter "mExtension"
    .parameter "flag"
    .parameter "mimeType"

    .prologue
    .line 44
    new-instance v0, Lcom/samsung/dmp/layout/DmpDrmUtil$DrmCheckThread;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/dmp/layout/DmpDrmUtil$DrmCheckThread;-><init>(Lcom/samsung/dmp/layout/DmpDrmUtil;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 45
    .local v0, mDrmCheckThread:Lcom/samsung/dmp/layout/DmpDrmUtil$DrmCheckThread;
    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DmpDrmUtil$DrmCheckThread;->start()V

    .line 47
    const/16 v7, 0xa

    .line 48
    .local v7, wait_time:I
    :cond_f
    iget-boolean v1, p0, Lcom/samsung/dmp/layout/DmpDrmUtil;->isDrmChecked:Z

    if-nez v1, :cond_5f

    .line 50
    const-wide/16 v1, 0x1f4

    :try_start_15
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_7c

    .line 54
    :goto_18
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SF_DmpDrmUtil.while isDrmChecked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/dmp/layout/DmpDrmUtil;->isDrmChecked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isDrmFile = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/dmp/layout/DmpDrmUtil;->isDrmFile:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    add-int/lit8 v7, v7, -0x1

    .line 57
    if-nez v7, :cond_f

    .line 58
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/dmp/layout/DmpDrmUtil;->isDrmFile:I

    .line 59
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SF_DmpDrmUtil.thread time out : isDrmFile = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/dmp/layout/DmpDrmUtil;->isDrmFile:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_5f
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SF_DmpDrmUtil.returning isDrmFile = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/dmp/layout/DmpDrmUtil;->isDrmFile:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget v1, p0, Lcom/samsung/dmp/layout/DmpDrmUtil;->isDrmFile:I

    return v1

    .line 51
    :catch_7c
    move-exception v6

    .line 52
    .local v6, e:Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_18
.end method
