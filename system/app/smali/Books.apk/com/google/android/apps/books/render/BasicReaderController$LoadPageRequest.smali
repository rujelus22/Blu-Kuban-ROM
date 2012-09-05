.class Lcom/google/android/apps/books/render/BasicReaderController$LoadPageRequest;
.super Lcom/google/android/apps/books/render/BasicReaderController$LoadRequest;
.source "BasicReaderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/render/BasicReaderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadPageRequest"
.end annotation


# instance fields
.field final highlightSearch:Ljava/lang/Integer;

.field final nextHighlightChapterIndex:Ljava/lang/Integer;

.field final page:I

.field final synthetic this$0:Lcom/google/android/apps/books/render/BasicReaderController;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/render/BasicReaderController;IIILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 8
    .parameter
    .parameter "requestId"
    .parameter "passage"
    .parameter "page"
    .parameter "offset"
    .parameter "highlightSearch"
    .parameter "nextHighlightChapterIndex"

    .prologue
    .line 289
    iput-object p1, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadPageRequest;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    .line 290
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/google/android/apps/books/render/BasicReaderController$LoadRequest;-><init>(Lcom/google/android/apps/books/render/BasicReaderController;IILjava/lang/Integer;)V

    .line 291
    iput p4, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadPageRequest;->page:I

    .line 292
    iput-object p6, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadPageRequest;->highlightSearch:Ljava/lang/Integer;

    .line 293
    iput-object p7, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadPageRequest;->nextHighlightChapterIndex:Ljava/lang/Integer;

    .line 294
    return-void
.end method


# virtual methods
.method run()V
    .registers 8

    .prologue
    .line 298
    const-string v0, "ReaderController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 299
    const-string v0, "ReaderController"

    const-string v1, "Issuing loadPage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadPageRequest;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mReader:Lcom/google/android/apps/books/render/TextReader;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$700(Lcom/google/android/apps/books/render/BasicReaderController;)Lcom/google/android/apps/books/render/TextReader;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadPageRequest;->passage:I

    iget v2, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadPageRequest;->page:I

    iget-object v3, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadPageRequest;->offset:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadPageRequest;->highlightSearch:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadPageRequest;->nextHighlightChapterIndex:Ljava/lang/Integer;

    iget v6, p0, Lcom/google/android/apps/books/render/BasicReaderController$LoadPageRequest;->requestId:I

    invoke-interface/range {v0 .. v6}, Lcom/google/android/apps/books/render/TextReader;->loadPage(IILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    .line 303
    return-void
.end method
