.class public Lcom/google/android/finsky/download/DownloadRequest;
.super Ljava/lang/Object;
.source "DownloadRequest.java"


# instance fields
.field private final SYSTEM_UID:I

.field mContentValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 13
    .parameter "uri"
    .parameter "title"
    .parameter "notificationPackage"
    .parameter "notificationClass"
    .parameter "cookieName"
    .parameter "cookieValue"
    .parameter "fileUri"

    .prologue
    const/16 v2, 0x3e8

    const/4 v4, 0x2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v2, p0, Lcom/google/android/finsky/download/DownloadRequest;->SYSTEM_UID:I

    .line 31
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "otheruid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 34
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "uri"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    if-eqz p7, :cond_83

    .line 37
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "destination"

    invoke-static {}, Lcom/google/android/finsky/download/DownloadManagerConstants;->getFileDestinationConstant()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 39
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "hint"

    invoke-virtual {p7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :goto_41
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "notificationpackage"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "notificationclass"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    if-eqz p5, :cond_71

    if-eqz p6, :cond_71

    .line 49
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "cookiedata"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_71
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 54
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "visibility"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 61
    :goto_82
    return-void

    .line 42
    :cond_83
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "destination"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_41

    .line 57
    :cond_8f
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "visibility"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 59
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_82
.end method


# virtual methods
.method toContentValues()Landroid/content/ContentValues;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRequest;->mContentValues:Landroid/content/ContentValues;

    return-object v0
.end method
