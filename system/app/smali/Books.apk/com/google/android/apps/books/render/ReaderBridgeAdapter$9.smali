.class Lcom/google/android/apps/books/render/ReaderBridgeAdapter$9;
.super Ljava/lang/Object;
.source "ReaderBridgeAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->onNoHighlightFound(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/render/ReaderBridgeAdapter;

.field final synthetic val$highlightSearch:I

.field final synthetic val$requestId:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/render/ReaderBridgeAdapter;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$9;->this$0:Lcom/google/android/apps/books/render/ReaderBridgeAdapter;

    iput p2, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$9;->val$requestId:I

    iput p3, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$9;->val$highlightSearch:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$9;->this$0:Lcom/google/android/apps/books/render/ReaderBridgeAdapter;

    #getter for: Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->mListener:Lcom/google/android/apps/books/render/ReaderListener;
    invoke-static {v0}, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->access$000(Lcom/google/android/apps/books/render/ReaderBridgeAdapter;)Lcom/google/android/apps/books/render/ReaderListener;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$9;->val$requestId:I

    iget v2, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$9;->val$highlightSearch:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/books/render/ReaderListener;->onNoHighlightFound(II)V

    .line 154
    return-void
.end method
