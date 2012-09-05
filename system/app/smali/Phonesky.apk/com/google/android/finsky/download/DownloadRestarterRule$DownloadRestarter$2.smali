.class Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter$2;
.super Ljava/lang/Object;
.source "DownloadRestarterRule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->handleAssetResuming(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecords;Lcom/google/android/finsky/local/LocalAsset;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;

.field final synthetic val$record:Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 462
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter$2;->this$1:Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;

    iput-object p2, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter$2;->val$record:Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter$2;->this$1:Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;

    #getter for: Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->mUriUrlMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;->access$900(Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRestarter$2;->val$record:Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;

    iget-object v1, v1, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;->contentUri:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    return-void
.end method
