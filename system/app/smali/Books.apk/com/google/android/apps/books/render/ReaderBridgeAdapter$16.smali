.class Lcom/google/android/apps/books/render/ReaderBridgeAdapter$16;
.super Ljava/lang/Object;
.source "ReaderBridgeAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->getSegmentContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/render/ReaderBridgeAdapter;

.field final synthetic val$e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/render/ReaderBridgeAdapter;Ljava/lang/Throwable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$16;->this$0:Lcom/google/android/apps/books/render/ReaderBridgeAdapter;

    iput-object p2, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$16;->val$e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$16;->this$0:Lcom/google/android/apps/books/render/ReaderBridgeAdapter;

    #getter for: Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->mListener:Lcom/google/android/apps/books/render/ReaderListener;
    invoke-static {v0}, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->access$000(Lcom/google/android/apps/books/render/ReaderBridgeAdapter;)Lcom/google/android/apps/books/render/ReaderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$16;->val$e:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/google/android/apps/books/render/ReaderListener;->onError(Ljava/lang/Throwable;)V

    .line 286
    return-void
.end method
