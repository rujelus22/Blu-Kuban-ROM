.class Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter$3;
.super Landroid/os/AsyncTask;
.source "DownloadRestarterRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->removeDownloadRecords(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;Lcom/google/android/finsky/local/LocalAsset;Lcom/google/android/finsky/download/obb/Obb;Lcom/google/android/finsky/download/obb/Obb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;)V
    .registers 2
    .parameter

    .prologue
    .line 520
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter$3;->this$1:Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private remove(Landroid/net/Uri;)V
    .registers 3
    .parameter "param"

    .prologue
    .line 530
    if-eqz p1, :cond_15

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 531
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter$3;->this$1:Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->this$0:Lcom/google/android/finsky/download/DownloadRestarterRule;

    #getter for: Lcom/google/android/finsky/download/DownloadRestarterRule;->mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;
    invoke-static {v0}, Lcom/google/android/finsky/download/DownloadRestarterRule;->access$200(Lcom/google/android/finsky/download/DownloadRestarterRule;)Lcom/google/android/finsky/download/DownloadManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/finsky/download/DownloadManager;->remove(Landroid/net/Uri;)V

    .line 533
    :cond_15
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 520
    check-cast p1, [Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter$3;->doInBackground([Landroid/net/Uri;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/Void;
    .registers 3
    .parameter "params"

    .prologue
    .line 523
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter$3;->remove(Landroid/net/Uri;)V

    .line 524
    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter$3;->remove(Landroid/net/Uri;)V

    .line 525
    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter$3;->remove(Landroid/net/Uri;)V

    .line 526
    const/4 v0, 0x0

    return-object v0
.end method
