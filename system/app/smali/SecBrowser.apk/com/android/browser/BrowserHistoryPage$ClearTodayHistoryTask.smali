.class Lcom/android/browser/BrowserHistoryPage$ClearTodayHistoryTask;
.super Ljava/lang/Thread;
.source "BrowserHistoryPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserHistoryPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClearTodayHistoryTask"
.end annotation


# instance fields
.field mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .registers 2
    .parameter "resolver"

    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 386
    iput-object p1, p0, Lcom/android/browser/BrowserHistoryPage$ClearTodayHistoryTask;->mResolver:Landroid/content/ContentResolver;

    .line 387
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 391
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 393
    .local v4, today:Ljava/util/Date;
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/util/Date;->getHours()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    mul-int/lit8 v7, v7, 0x3c

    invoke-virtual {v4}, Ljava/util/Date;->getMinutes()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    add-int/2addr v7, v8

    invoke-virtual {v4}, Ljava/util/Date;->getSeconds()I

    move-result v8

    add-int/2addr v7, v8

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    sub-long v0, v5, v7

    .line 394
    .local v0, begin:J
    const-wide/32 v5, 0x5265c00

    add-long v2, v0, v5

    .line 395
    .local v2, end:J
    iget-object v5, p0, Lcom/android/browser/BrowserHistoryPage$ClearTodayHistoryTask;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v0, v1, v2, v3}, Landroid/provider/Browser;->deleteHistoryTimeFrame(Landroid/content/ContentResolver;JJ)V

    .line 396
    return-void
.end method
