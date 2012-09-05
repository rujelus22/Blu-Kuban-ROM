.class Lcom/google/android/picasasync/PhotoTracker$TrackRecord;
.super Ljava/lang/Object;
.source "PhotoTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/PhotoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrackRecord"
.end annotation


# instance fields
.field final config:Lcom/google/android/picasasync/PhotoTracker$Config;

.field currentTask:Lcom/google/android/picasasync/UploadTaskEntry;

.field newMediaLastUploadedId:J

.field oldMediaCount:I

.field oldMediaLastId:J

.field oldMediaLastUploadedId:J

.field oldMediaProgress:I


# direct methods
.method constructor <init>(Lcom/google/android/picasasync/PhotoTracker$Config;)V
    .registers 2
    .parameter "config"

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->config:Lcom/google/android/picasasync/PhotoTracker$Config;

    .line 165
    return-void
.end method


# virtual methods
.method hasMoreExistingMediaToUpload()Z
    .registers 3

    .prologue
    .line 168
    iget v0, p0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaCount:I

    iget v1, p0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaProgress:I

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
    .line 185
    if-eqz p1, :cond_3e

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->config:Lcom/google/android/picasasync/PhotoTracker$Config;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->newMediaLastUploadedId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->currentTask:Lcom/google/android/picasasync/UploadTaskEntry;

    if-nez v0, :cond_28

    const-string v0, ""

    :goto_1f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    :goto_27
    return-object v0

    .line 186
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->currentTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    .line 189
    :cond_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->config:Lcom/google/android/picasasync/PhotoTracker$Config;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaLastUploadedId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaLastId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->currentTask:Lcom/google/android/picasasync/UploadTaskEntry;

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

    iget-object v2, p0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->currentTask:Lcom/google/android/picasasync/UploadTaskEntry;

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
    .line 172
    if-eqz p3, :cond_b

    .line 173
    iget-wide v0, p0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->newMediaLastUploadedId:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_a

    .line 174
    iput-wide p1, p0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->newMediaLastUploadedId:J

    .line 182
    :cond_a
    :goto_a
    return-void

    .line 177
    :cond_b
    iget-wide v0, p0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaLastUploadedId:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_a

    .line 178
    iput-wide p1, p0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaLastUploadedId:J

    .line 179
    iget v0, p0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaProgress:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/picasasync/PhotoTracker$TrackRecord;->oldMediaProgress:I

    goto :goto_a
.end method
