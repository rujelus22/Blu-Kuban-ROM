.class Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;
.super Ljava/lang/Object;
.source "MediaTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/iu/MediaTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrackRecord"
.end annotation


# instance fields
.field final config:Lcom/google/android/apps/plus/iu/MediaTracker$Config;

.field currentTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

.field newMediaLastUploadedId:J

.field oldMediaCount:I

.field oldMediaLastId:J

.field oldMediaLastUploadedId:J

.field oldMediaProgress:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/iu/MediaTracker$Config;)V
    .registers 2
    .parameter "config"

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p1, p0, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->config:Lcom/google/android/apps/plus/iu/MediaTracker$Config;

    .line 208
    return-void
.end method


# virtual methods
.method hasMoreExistingMediaToUpload()Z
    .registers 3

    .prologue
    .line 211
    iget v0, p0, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaCount:I

    iget v1, p0, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaProgress:I

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method toString(Z)Ljava/lang/String;
    .registers 5
    .parameter "trackingNewMedia"

    .prologue
    .line 228
    if-eqz p1, :cond_3e

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->config:Lcom/google/android/apps/plus/iu/MediaTracker$Config;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->newMediaLastUploadedId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->currentTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    if-nez v0, :cond_28

    const-string v0, ""

    :goto_1f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    :goto_27
    return-object v0

    .line 229
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->currentTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 232
    :cond_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->config:Lcom/google/android/apps/plus/iu/MediaTracker$Config;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaLastUploadedId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaLastId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->currentTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    if-nez v0, :cond_88

    const-string v0, ""

    :goto_7f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :cond_88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->currentTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7f
.end method

.method updateProgress(JZ)V
    .registers 6
    .parameter "mediaId"
    .parameter "trackingNewMedia"

    .prologue
    .line 215
    if-eqz p3, :cond_b

    .line 216
    iget-wide v0, p0, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->newMediaLastUploadedId:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_a

    .line 217
    iput-wide p1, p0, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->newMediaLastUploadedId:J

    .line 225
    :cond_a
    :goto_a
    return-void

    .line 220
    :cond_b
    iget-wide v0, p0, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaLastUploadedId:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_a

    .line 221
    iput-wide p1, p0, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaLastUploadedId:J

    .line 222
    iget v0, p0, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaProgress:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/plus/iu/MediaTracker$TrackRecord;->oldMediaProgress:I

    goto :goto_a
.end method
