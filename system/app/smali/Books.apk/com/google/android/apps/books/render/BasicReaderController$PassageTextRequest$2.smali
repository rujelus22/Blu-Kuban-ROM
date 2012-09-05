.class Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest$2;
.super Ljava/lang/Object;
.source "BasicReaderController.java"

# interfaces
.implements Lcom/google/android/apps/books/render/BasicReaderController$OnPageLoadedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;

.field final synthetic val$finalPassage:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest$2;->this$1:Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;

    iput p2, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest$2;->val$finalPassage:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(IILjava/lang/String;I)V
    .registers 11
    .parameter "passageIndex"
    .parameter "pageIndex"
    .parameter "readingPosition"
    .parameter "highlightSearch"

    .prologue
    const/4 v4, 0x0

    .line 196
    iget v1, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest$2;->val$finalPassage:I

    if-ne v1, p1, :cond_30

    .line 197
    iget-object v1, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest$2;->this$1:Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;

    iget-object v1, v1, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #calls: Lcom/google/android/apps/books/render/BasicReaderController;->allocateRequestId()I
    invoke-static {v1}, Lcom/google/android/apps/books/render/BasicReaderController;->access$800(Lcom/google/android/apps/books/render/BasicReaderController;)I

    move-result v5

    .line 198
    .local v5, newRequestId:I
    new-instance v0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;

    iget-object v1, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest$2;->this$1:Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;

    iget-object v1, v1, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    iget v2, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest$2;->val$finalPassage:I

    iget-object v3, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest$2;->this$1:Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->mPosition:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->access$900(Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest$2;->this$1:Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->mExternalRequestId:I
    invoke-static {v4}, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->access$300(Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;)I

    move-result v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;-><init>(Lcom/google/android/apps/books/render/BasicReaderController;ILjava/lang/String;II)V

    .line 200
    .local v0, r:Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;
    iget-object v1, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest$2;->this$1:Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;

    iget-object v1, v1, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mPassageTextRequests:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/apps/books/render/BasicReaderController;->access$1000(Lcom/google/android/apps/books/render/BasicReaderController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    .end local v0           #r:Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;
    .end local v5           #newRequestId:I
    :goto_2f
    return-void

    .line 202
    :cond_30
    const-string v1, "ReaderController"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 203
    const-string v1, "ReaderController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected exact passage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest$2;->val$finalPassage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_5d
    iget-object v1, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest$2;->this$1:Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;

    iget-object v1, v1, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mOutboundListener:Lcom/google/android/apps/books/render/ReaderListener;
    invoke-static {v1}, Lcom/google/android/apps/books/render/BasicReaderController;->access$500(Lcom/google/android/apps/books/render/BasicReaderController;)Lcom/google/android/apps/books/render/ReaderListener;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest$2;->this$1:Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->mExternalRequestId:I
    invoke-static {v2}, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->access$300(Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;)I

    move-result v2

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3, v4, v4}, Lcom/google/android/apps/books/render/ReaderListener;->onPassageTextReady(IILjava/lang/String;Lcom/google/android/apps/books/model/PositionMap;)V

    goto :goto_2f
.end method
