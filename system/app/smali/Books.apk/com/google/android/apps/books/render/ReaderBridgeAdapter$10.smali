.class Lcom/google/android/apps/books/render/ReaderBridgeAdapter$10;
.super Ljava/lang/Object;
.source "ReaderBridgeAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->onPassageTextReady(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/render/ReaderBridgeAdapter;

.field final synthetic val$finalPositions:Lcom/google/android/apps/books/model/PositionMap;

.field final synthetic val$passageIndex:I

.field final synthetic val$requestId:I

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/render/ReaderBridgeAdapter;IILjava/lang/String;Lcom/google/android/apps/books/model/PositionMap;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$10;->this$0:Lcom/google/android/apps/books/render/ReaderBridgeAdapter;

    iput p2, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$10;->val$requestId:I

    iput p3, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$10;->val$passageIndex:I

    iput-object p4, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$10;->val$text:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$10;->val$finalPositions:Lcom/google/android/apps/books/model/PositionMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$10;->this$0:Lcom/google/android/apps/books/render/ReaderBridgeAdapter;

    #getter for: Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->mListener:Lcom/google/android/apps/books/render/ReaderListener;
    invoke-static {v0}, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->access$000(Lcom/google/android/apps/books/render/ReaderBridgeAdapter;)Lcom/google/android/apps/books/render/ReaderListener;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$10;->val$requestId:I

    iget v2, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$10;->val$passageIndex:I

    iget-object v3, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$10;->val$text:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$10;->val$finalPositions:Lcom/google/android/apps/books/model/PositionMap;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/apps/books/render/ReaderListener;->onPassageTextReady(IILjava/lang/String;Lcom/google/android/apps/books/model/PositionMap;)V

    .line 179
    return-void
.end method
