.class Lcom/sec/android/app/myfiles/fileselector/controllers/MXController$3;
.super Ljava/lang/Object;
.source "MXController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->onFileListChanged(Ljava/lang/String;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;)V
    .registers 2
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController$3;->this$0:Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 274
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController$3;->this$0:Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->getCount()I

    move-result v0

    .line 276
    .local v0, count:I
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController$3;->this$0:Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;

    if-eqz v1, :cond_11

    if-nez v0, :cond_26

    .line 277
    :cond_11
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController$3;->this$0:Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;

    iput-boolean v2, v1, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mListIsEmpty:Z

    .line 278
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController$3;->this$0:Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;

    iput v2, v1, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mListSize:I

    .line 280
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController$3;->this$0:Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXView;

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->showEmptyView()V

    .line 286
    :goto_20
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController$3;->this$0:Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->notifyDataSetChanged()V

    .line 287
    return-void

    .line 282
    :cond_26
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController$3;->this$0:Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mListIsEmpty:Z

    .line 283
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController$3;->this$0:Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;

    iput v0, v1, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mListSize:I

    .line 284
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController$3;->this$0:Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXView;

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->hideEmptyView()V

    goto :goto_20
.end method
