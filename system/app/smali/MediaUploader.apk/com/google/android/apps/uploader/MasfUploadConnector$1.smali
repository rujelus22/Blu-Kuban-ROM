.class Lcom/google/android/apps/uploader/MasfUploadConnector$1;
.super Ljava/lang/Object;
.source "MasfUploadConnector.java"

# interfaces
.implements Lcom/google/android/apps/uploader/googlemobile/masf/InputStreamProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/uploader/MasfUploadConnector;->makeUploadRequest(Lcom/google/android/apps/uploader/UploadInfo;Ljava/io/InputStream;Lcom/google/android/apps/uploader/Authorizer;ZLcom/google/android/apps/uploader/UploadConnector$UploadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/uploader/MasfUploadConnector;

.field final synthetic val$in:Ljava/io/InputStream;

.field final synthetic val$info:Lcom/google/android/apps/uploader/UploadInfo;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/MasfUploadConnector;Lcom/google/android/apps/uploader/UploadInfo;Ljava/io/InputStream;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/apps/uploader/MasfUploadConnector$1;->this$0:Lcom/google/android/apps/uploader/MasfUploadConnector;

    iput-object p2, p0, Lcom/google/android/apps/uploader/MasfUploadConnector$1;->val$info:Lcom/google/android/apps/uploader/UploadInfo;

    iput-object p3, p0, Lcom/google/android/apps/uploader/MasfUploadConnector$1;->val$in:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/MasfUploadConnector$1;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 90
    :goto_5
    return-void

    .line 87
    :catch_6
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/apps/uploader/MasfUploadConnector$1;->val$in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getStreamLength()I
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/uploader/MasfUploadConnector$1;->val$info:Lcom/google/android/apps/uploader/UploadInfo;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadInfo;->getBytesTotal()J

    move-result-wide v0

    long-to-int v0, v0

    .line 76
    if-lez v0, :cond_a

    .line 78
    :goto_9
    return v0

    .line 76
    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/google/android/apps/uploader/MasfUploadConnector$1;->val$in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_11

    move-result v0

    goto :goto_9

    .line 77
    :catch_11
    move-exception v1

    goto :goto_9
.end method
