.class Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest$4;
.super Ljava/lang/Object;
.source "BasicReaderController.java"

# interfaces
.implements Lcom/google/android/apps/books/render/BasicReaderController$OnInvalidPositionHandler;


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
    .line 243
    iput-object p1, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest$4;->this$1:Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(I)V
    .registers 6
    .parameter "margin"

    .prologue
    const/4 v3, 0x0

    .line 245
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest$4;->this$1:Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;

    iget-object v0, v0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mOutboundListener:Lcom/google/android/apps/books/render/ReaderListener;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$500(Lcom/google/android/apps/books/render/BasicReaderController;)Lcom/google/android/apps/books/render/ReaderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest$4;->this$1:Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->mExternalRequestId:I
    invoke-static {v1}, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->access$300(Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;)I

    move-result v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2, v3, v3}, Lcom/google/android/apps/books/render/ReaderListener;->onPassageTextReady(IILjava/lang/String;Lcom/google/android/apps/books/model/PositionMap;)V

    .line 250
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest$4;->this$1:Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;

    iget-object v0, v0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mOnPageLoadedHandlers:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$1100(Lcom/google/android/apps/books/render/BasicReaderController;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest$4;->this$1:Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->mTaskRequestId:I
    invoke-static {v1}, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->access$400(Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    return-void
.end method
