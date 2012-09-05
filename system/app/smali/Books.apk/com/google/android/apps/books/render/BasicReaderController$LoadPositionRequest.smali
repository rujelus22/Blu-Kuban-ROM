.class Lcom/google/android/apps/books/render/BasicReaderController$LoadPositionRequest;
.super Lcom/google/android/apps/books/render/BasicReaderController$LoadRequest;
.source "BasicReaderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/render/BasicReaderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadPositionRequest"
.end annotation


# instance fields
.field final fallbackChapterIndex:Ljava/lang/Integer;

.field final highlightSearch:Ljava/lang/Integer;

.field final nextHighlightChapterIndex:Ljava/lang/Integer;

.field final position:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/apps/books/render/BasicReaderController;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/render/BasicReaderController;IILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 9
    .parameter
    .parameter "requestId"
    .parameter "passage"
    .parameter "position"
    .parameter "offset"
    .parameter "fallbackChapterIndex"
    .parameter "highlightSearch"
    .parameter "nextHighlightChapterIndex"

    .prologue
    .line 314
    iput-object p1, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadPositionRequest;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    .line 315
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/google/android/apps/books/render/BasicReaderController$LoadRequest;-><init>(Lcom/google/android/apps/books/render/BasicReaderController;IILjava/lang/Integer;)V

    .line 316
    iput-object p4, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadPositionRequest;->position:Ljava/lang/String;

    .line 317
    iput-object p6, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadPositionRequest;->fallbackChapterIndex:Ljava/lang/Integer;

    .line 318
    iput-object p7, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadPositionRequest;->highlightSearch:Ljava/lang/Integer;

    .line 319
    iput-object p8, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadPositionRequest;->nextHighlightChapterIndex:Ljava/lang/Integer;

    .line 320
    return-void
.end method


# virtual methods
.method run()V
    .registers 9

    .prologue
    .line 324
    const-string v0, "ReaderController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 325
    const-string v0, "ReaderController"

    const-string v1, "Issuing loadPosition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadPositionRequest;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mReader:Lcom/google/android/apps/books/render/TextReader;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$700(Lcom/google/android/apps/books/render/BasicReaderController;)Lcom/google/android/apps/books/render/TextReader;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadPositionRequest;->passage:I

    iget-object v2, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadPositionRequest;->position:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadPositionRequest;->offset:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadPositionRequest;->fallbackChapterIndex:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadPositionRequest;->highlightSearch:Ljava/lang/Integer;

    iget v6, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadPositionRequest;->requestId:I

    iget-object v7, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadPositionRequest;->nextHighlightChapterIndex:Ljava/lang/Integer;

    invoke-interface/range {v0 .. v7}, Lcom/google/android/apps/books/render/TextReader;->loadPosition(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Integer;)V

    .line 329
    return-void
.end method
