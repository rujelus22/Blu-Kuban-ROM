.class Lcom/google/android/apps/books/render/ReaderBridgeAdapter$5;
.super Ljava/lang/Object;
.source "ReaderBridgeAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->onChapterReady(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/render/ReaderBridgeAdapter;

.field final synthetic val$chapterIndex:I

.field final synthetic val$paginationResult:Lcom/google/android/apps/books/util/PassagePaginationResult;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/render/ReaderBridgeAdapter;ILcom/google/android/apps/books/util/PassagePaginationResult;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$5;->this$0:Lcom/google/android/apps/books/render/ReaderBridgeAdapter;

    iput p2, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$5;->val$chapterIndex:I

    iput-object p3, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$5;->val$paginationResult:Lcom/google/android/apps/books/util/PassagePaginationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$5;->this$0:Lcom/google/android/apps/books/render/ReaderBridgeAdapter;

    #getter for: Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->mListener:Lcom/google/android/apps/books/render/ReaderListener;
    invoke-static {v0}, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->access$000(Lcom/google/android/apps/books/render/ReaderBridgeAdapter;)Lcom/google/android/apps/books/render/ReaderListener;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$5;->val$chapterIndex:I

    iget-object v2, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$5;->val$paginationResult:Lcom/google/android/apps/books/util/PassagePaginationResult;

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/books/render/ReaderListener;->onChapterReady(ILcom/google/android/apps/books/util/PassagePaginationResult;)V

    .line 112
    return-void
.end method
