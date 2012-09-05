.class Lcom/android/email/RefreshManager$Status;
.super Ljava/lang/Object;
.source "RefreshManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/RefreshManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Status"
.end annotation


# instance fields
.field private mIsRefreshRequested:Z

.field private mIsRefreshing:Z

.field private mLastRefreshTime:J


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 110
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canRefresh()Z
    .registers 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/email/RefreshManager$Status;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getLastRefreshTime()J
    .registers 3

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/android/email/RefreshManager$Status;->mLastRefreshTime:J

    return-wide v0
.end method

.method public isRefreshing()Z
    .registers 2

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/email/RefreshManager$Status;->mIsRefreshRequested:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/email/RefreshManager$Status;->mIsRefreshing:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onCallback(Lcom/android/emailcommon/mail/MessagingException;ILcom/android/email/Clock;)V
    .registers 6
    .parameter "exception"
    .parameter "progress"
    .parameter "clock"

    .prologue
    const/4 v1, 0x0

    .line 144
    if-nez p1, :cond_9

    if-nez p2, :cond_9

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/RefreshManager$Status;->mIsRefreshing:Z

    .line 153
    :cond_8
    :goto_8
    return-void

    .line 147
    :cond_9
    if-nez p1, :cond_f

    const/16 v0, 0x64

    if-ne p2, v0, :cond_8

    .line 149
    :cond_f
    iput-boolean v1, p0, Lcom/android/email/RefreshManager$Status;->mIsRefreshing:Z

    .line 150
    iput-boolean v1, p0, Lcom/android/email/RefreshManager$Status;->mIsRefreshRequested:Z

    .line 151
    invoke-virtual {p3}, Lcom/android/email/Clock;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/RefreshManager$Status;->mLastRefreshTime:J

    goto :goto_8
.end method

.method public onRefreshRequested()V
    .registers 2

    .prologue
    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/RefreshManager$Status;->mIsRefreshRequested:Z

    .line 137
    return-void
.end method
