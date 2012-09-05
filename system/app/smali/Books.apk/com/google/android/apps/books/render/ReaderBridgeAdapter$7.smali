.class Lcom/google/android/apps/books/render/ReaderBridgeAdapter$7;
.super Ljava/lang/Object;
.source "ReaderBridgeAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->onPageLoaded(IILjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/render/ReaderBridgeAdapter;

.field final synthetic val$chapterIndex:I

.field final synthetic val$highlightSearch:I

.field final synthetic val$pageIndex:I

.field final synthetic val$readingPosition:Ljava/lang/String;

.field final synthetic val$requestId:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/render/ReaderBridgeAdapter;IILjava/lang/String;II)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$7;->this$0:Lcom/google/android/apps/books/render/ReaderBridgeAdapter;

    iput p2, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$7;->val$chapterIndex:I

    iput p3, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$7;->val$pageIndex:I

    iput-object p4, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$7;->val$readingPosition:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$7;->val$requestId:I

    iput p6, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$7;->val$highlightSearch:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$7;->this$0:Lcom/google/android/apps/books/render/ReaderBridgeAdapter;

    #getter for: Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->mListener:Lcom/google/android/apps/books/render/ReaderListener;
    invoke-static {v0}, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->access$000(Lcom/google/android/apps/books/render/ReaderBridgeAdapter;)Lcom/google/android/apps/books/render/ReaderListener;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$7;->val$chapterIndex:I

    iget v2, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$7;->val$pageIndex:I

    iget-object v3, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$7;->val$readingPosition:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$7;->val$requestId:I

    iget v5, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$7;->val$highlightSearch:I

    invoke-interface/range {v0 .. v5}, Lcom/google/android/apps/books/render/ReaderListener;->onPageLoaded(IILjava/lang/String;II)V

    .line 134
    return-void
.end method
