.class Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser$4;
.super Ljava/lang/Object;
.source "BtVisibilityFileBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->browseTo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;)V
    .registers 2
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser$4;->this$0:Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser$4;->this$0:Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->access$300(Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;)Lcom/sec/android/app/myfiles/ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ListAdapter;->pause()V

    .line 169
    invoke-static {}, Lcom/sec/android/app/myfiles/Util/GsRequestQueue;->getInstance()Lcom/sec/android/app/myfiles/Util/GsRequestQueue;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/myfiles/Util/GsRequest;

    const-string v2, "haha"

    invoke-direct {v1, v2}, Lcom/sec/android/app/myfiles/Util/GsRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/Util/GsRequestQueue;->putRequest(Lcom/sec/android/app/myfiles/Util/GsRequest;)V

    .line 170
    return-void
.end method
