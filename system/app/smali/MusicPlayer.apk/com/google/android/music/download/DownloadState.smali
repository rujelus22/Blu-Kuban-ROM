.class public Lcom/google/android/music/download/DownloadState;
.super Ljava/lang/Object;
.source "DownloadState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/download/DownloadState$Error;,
        Lcom/google/android/music/download/DownloadState$State;
    }
.end annotation


# instance fields
.field private mByteLength:J

.field private mCompletedBytes:J

.field private mError:Lcom/google/android/music/download/DownloadState$Error;

.field private mExperiencedGlitch:Z

.field private mStartTimeUTC:J

.field private mState:Lcom/google/android/music/download/DownloadState$State;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lcom/google/android/music/download/DownloadState$State;->NOT_STARTED:Lcom/google/android/music/download/DownloadState$State;

    iput-object v0, p0, Lcom/google/android/music/download/DownloadState;->mState:Lcom/google/android/music/download/DownloadState$State;

    .line 51
    iput-wide v1, p0, Lcom/google/android/music/download/DownloadState;->mStartTimeUTC:J

    .line 52
    iput-wide v1, p0, Lcom/google/android/music/download/DownloadState;->mCompletedBytes:J

    .line 53
    iput-wide v1, p0, Lcom/google/android/music/download/DownloadState;->mByteLength:J

    .line 54
    sget-object v0, Lcom/google/android/music/download/DownloadState$Error;->UNKNOWN:Lcom/google/android/music/download/DownloadState$Error;

    iput-object v0, p0, Lcom/google/android/music/download/DownloadState;->mError:Lcom/google/android/music/download/DownloadState$Error;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/download/DownloadState;->mExperiencedGlitch:Z

    .line 56
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/download/DownloadState;->mState:Lcom/google/android/music/download/DownloadState$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, " mStartTimeUTC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/download/DownloadState;->mStartTimeUTC:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, " mCompletedBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/download/DownloadState;->mCompletedBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, " mError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/download/DownloadState;->mError:Lcom/google/android/music/download/DownloadState$Error;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    const-string v1, " mExperiencedGlitch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/music/download/DownloadState;->mExperiencedGlitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
