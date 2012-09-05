.class Lcom/google/android/finsky/download/DownloadManagerImpl$3;
.super Ljava/lang/Object;
.source "DownloadManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/download/DownloadManagerImpl;->removeAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/download/DownloadManagerImpl;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/download/DownloadManagerImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadManagerImpl$3;->this$0:Lcom/google/android/finsky/download/DownloadManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 79
    iget-object v2, p0, Lcom/google/android/finsky/download/DownloadManagerImpl$3;->this$0:Lcom/google/android/finsky/download/DownloadManagerImpl;

    invoke-virtual {v2}, Lcom/google/android/finsky/download/DownloadManagerImpl;->queryAllDownloads()Landroid/database/Cursor;

    move-result-object v1

    .line 81
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_11

    .line 82
    const-string v2, "Not removing all downloads."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :goto_10
    return-void

    .line 86
    :cond_11
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 87
    .local v0, columnId:I
    :goto_17
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 88
    iget-object v2, p0, Lcom/google/android/finsky/download/DownloadManagerImpl$3;->this$0:Lcom/google/android/finsky/download/DownloadManagerImpl;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/finsky/download/DownloadManagerConstants;->getContentUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    #calls: Lcom/google/android/finsky/download/DownloadManagerImpl;->synchronousRemove(Landroid/net/Uri;)V
    invoke-static {v2, v3}, Lcom/google/android/finsky/download/DownloadManagerImpl;->access$100(Lcom/google/android/finsky/download/DownloadManagerImpl;Landroid/net/Uri;)V

    goto :goto_17

    .line 91
    :cond_2f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_10
.end method
