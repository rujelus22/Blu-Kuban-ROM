.class Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest$1;
.super Ljava/lang/Object;
.source "BasicReaderController.java"

# interfaces
.implements Lcom/google/android/apps/books/render/BasicReaderController$OnPageLoadedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;)V
    .registers 2
    .parameter

    .prologue
    .line 723
    iput-object p1, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest$1;->this$1:Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(IILjava/lang/String;I)V
    .registers 10
    .parameter "passageIndex"
    .parameter "pageIndex"
    .parameter "readingPosition"
    .parameter "highlightSearch"

    .prologue
    .line 726
    iget-object v2, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest$1;->this$1:Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;

    iget-object v2, v2, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #calls: Lcom/google/android/apps/books/render/BasicReaderController;->allocateRequestId()I
    invoke-static {v2}, Lcom/google/android/apps/books/render/BasicReaderController;->access$800(Lcom/google/android/apps/books/render/BasicReaderController;)I

    move-result v1

    .line 727
    .local v1, newRequestId:I
    new-instance v0, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;

    iget-object v2, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest$1;->this$1:Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;

    iget-object v2, v2, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    iget-object v3, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest$1;->this$1:Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;

    iget-object v3, v3, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;->mRange:Lcom/google/android/apps/books/render/TextRange;

    iget-object v4, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest$1;->this$1:Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;

    iget v4, v4, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;->mExternalRequestId:I

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;-><init>(Lcom/google/android/apps/books/render/BasicReaderController;Lcom/google/android/apps/books/render/TextRange;II)V

    .line 729
    .local v0, newRequest:Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;
    iget-object v2, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest$1;->this$1:Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;

    iget-object v2, v2, Lcom/google/android/apps/books/render/BasicReaderController$LoadRangeBoundsRequest;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mLoadRangeBoundsRequests:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/apps/books/render/BasicReaderController;->access$1800(Lcom/google/android/apps/books/render/BasicReaderController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    return-void
.end method
