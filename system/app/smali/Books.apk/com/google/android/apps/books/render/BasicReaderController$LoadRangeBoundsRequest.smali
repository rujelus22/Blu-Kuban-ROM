.class Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;
.super Ljava/lang/Object;
.source "BasicReaderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/render/BasicReaderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadRangeBoundsRequest"
.end annotation


# instance fields
.field final mExternalRequestId:I

.field final mRange:Lcom/google/android/apps/books/render/TextRange;

.field final mTaskRequestId:I

.field final synthetic this$0:Lcom/google/android/apps/books/render/BasicReaderController;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/render/BasicReaderController;Lcom/google/android/apps/books/render/TextRange;II)V
    .registers 5
    .parameter
    .parameter "range"
    .parameter "externalRequestId"
    .parameter "taskRequestId"

    .prologue
    .line 711
    iput-object p1, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    iput-object p2, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;->mRange:Lcom/google/android/apps/books/render/TextRange;

    .line 713
    iput p3, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;->mExternalRequestId:I

    .line 714
    iput p4, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;->mTaskRequestId:I

    .line 715
    return-void
.end method


# virtual methods
.method run()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 717
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mLoadedPassages:Ljava/util/Set;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$200(Lcom/google/android/apps/books/render/BasicReaderController;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;->mRange:Lcom/google/android/apps/books/render/TextRange;

    iget v1, v1, Lcom/google/android/apps/books/render/TextRange;->passageIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 718
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mReader:Lcom/google/android/apps/books/render/TextReader;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$700(Lcom/google/android/apps/books/render/BasicReaderController;)Lcom/google/android/apps/books/render/TextReader;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;->mRange:Lcom/google/android/apps/books/render/TextRange;

    iget v2, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;->mTaskRequestId:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/books/render/TextReader;->loadRangeBounds(Lcom/google/android/apps/books/render/TextRange;I)V

    .line 736
    :goto_22
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/books/render/BasicReaderController;->mReaderIsBusy:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/books/render/BasicReaderController;->access$1302(Lcom/google/android/apps/books/render/BasicReaderController;Z)Z

    .line 737
    return-void

    .line 723
    :cond_29
    new-instance v7, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest$1;

    invoke-direct {v7, p0}, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest$1;-><init>(Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;)V

    .line 732
    .local v7, handler:Lcom/google/android/apps/books/render/BasicReaderController$OnPageLoadedHandler;
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mOnPageLoadedHandlers:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$1100(Lcom/google/android/apps/books/render/BasicReaderController;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;->mTaskRequestId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mReader:Lcom/google/android/apps/books/render/TextReader;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$700(Lcom/google/android/apps/books/render/BasicReaderController;)Lcom/google/android/apps/books/render/TextReader;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;->mRange:Lcom/google/android/apps/books/render/TextRange;

    iget v1, v1, Lcom/google/android/apps/books/render/TextRange;->passageIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;->mTaskRequestId:I

    invoke-interface/range {v0 .. v6}, Lcom/google/android/apps/books/render/TextReader;->loadPage(IILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    goto :goto_22
.end method
