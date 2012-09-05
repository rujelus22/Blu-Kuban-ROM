.class Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;
.super Ljava/lang/Object;
.source "MessageViewForSeven.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewForSeven;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Z7AttachmentInfo"
.end annotation


# instance fields
.field private mContentId:Ljava/lang/String;

.field private mContentUri:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mId:J

.field private mMimeType:Ljava/lang/String;

.field private mPosition:I

.field private mSize:J

.field private status:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1251
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1252
    return-void
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 1218
    iget v0, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mPosition:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 1218
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mSize:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mContentUri:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getContentId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mContentId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 1337
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mId:J

    return-wide v0
.end method

.method public getPosition()I
    .registers 2

    .prologue
    .line 1314
    iget v0, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mPosition:I

    return v0
.end method

.method public getStatus()I
    .registers 2

    .prologue
    .line 1345
    iget v0, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->status:I

    return v0
.end method

.method public setContentId(Ljava/lang/String;)V
    .registers 2
    .parameter "contentId"

    .prologue
    .line 1329
    iput-object p1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mContentId:Ljava/lang/String;

    .line 1330
    return-void
.end method

.method public setContentUri(Ljava/lang/String;)V
    .registers 2
    .parameter "contentUri"

    .prologue
    .line 1283
    iput-object p1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mContentUri:Ljava/lang/String;

    .line 1284
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .registers 2
    .parameter "fileName"

    .prologue
    .line 1303
    iput-object p1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mFileName:Ljava/lang/String;

    .line 1304
    return-void
.end method

.method public setId(J)V
    .registers 3
    .parameter "id"

    .prologue
    .line 1341
    iput-wide p1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mId:J

    .line 1342
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .registers 2
    .parameter "mimeType"

    .prologue
    .line 1295
    iput-object p1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mMimeType:Ljava/lang/String;

    .line 1296
    return-void
.end method

.method public setPosition(I)V
    .registers 2
    .parameter "mPosition"

    .prologue
    .line 1321
    iput p1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mPosition:I

    .line 1322
    return-void
.end method

.method public setSize(J)V
    .registers 3
    .parameter "size"

    .prologue
    .line 1291
    iput-wide p1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mSize:J

    .line 1292
    return-void
.end method

.method public setStatus(I)V
    .registers 2
    .parameter "status"

    .prologue
    .line 1333
    iput p1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->status:I

    .line 1334
    return-void
.end method

.method public writeToBundle(Landroid/os/Bundle;I)V
    .registers 6
    .parameter "out"
    .parameter "nIdx"

    .prologue
    .line 1268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Z7AttachmentInfo.mId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Z7AttachmentInfo.mSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mSize:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Z7AttachmentInfo.mMimeType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Z7AttachmentInfo.mFileName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Z7AttachmentInfo.mPosition"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Z7AttachmentInfo.mContentId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mContentId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Z7AttachmentInfo.mContentUri"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->mContentUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Z7AttachmentInfo.status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7AttachmentInfo;->status:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1276
    return-void
.end method
