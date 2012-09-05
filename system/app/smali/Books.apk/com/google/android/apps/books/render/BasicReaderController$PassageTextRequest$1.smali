.class Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest$1;
.super Ljava/lang/Object;
.source "BasicReaderController.java"

# interfaces
.implements Lcom/google/android/apps/books/render/BasicReaderController$OnPassageTextReadyHandler;


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


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;)V
    .registers 2
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest$1;->this$1:Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(ILjava/lang/String;Lcom/google/android/apps/books/model/PositionMap;)V
    .registers 7
    .parameter "passageIndex"
    .parameter "text"
    .parameter "positionOffsets"

    .prologue
    .line 175
    const-string v0, "ReaderController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 176
    const-string v0, "ReaderController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delivering request ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest$1;->this$1:Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->mExternalRequestId:I
    invoke-static {v2}, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->access$300(Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for internal request ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest$1;->this$1:Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->mTaskRequestId:I
    invoke-static {v2}, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->access$400(Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_37
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest$1;->this$1:Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;

    iget-object v0, v0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mOutboundListener:Lcom/google/android/apps/books/render/ReaderListener;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$500(Lcom/google/android/apps/books/render/BasicReaderController;)Lcom/google/android/apps/books/render/ReaderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest$1;->this$1:Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->mExternalRequestId:I
    invoke-static {v1}, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->access$300(Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;)I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/apps/books/render/ReaderListener;->onPassageTextReady(IILjava/lang/String;Lcom/google/android/apps/books/model/PositionMap;)V

    .line 181
    return-void
.end method
