.class Lcom/google/android/apps/books/render/ReaderBridgeAdapter$13;
.super Ljava/lang/Object;
.source "ReaderBridgeAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->onNearbyTextLoaded(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/render/ReaderBridgeAdapter;

.field final synthetic val$offset:I

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/render/ReaderBridgeAdapter;Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$13;->this$0:Lcom/google/android/apps/books/render/ReaderBridgeAdapter;

    iput-object p2, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$13;->val$str:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$13;->val$offset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$13;->this$0:Lcom/google/android/apps/books/render/ReaderBridgeAdapter;

    #getter for: Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->mListener:Lcom/google/android/apps/books/render/ReaderListener;
    invoke-static {v0}, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->access$000(Lcom/google/android/apps/books/render/ReaderBridgeAdapter;)Lcom/google/android/apps/books/render/ReaderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$13;->val$str:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$13;->val$offset:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/books/render/ReaderListener;->onNearbyTextLoaded(Ljava/lang/String;I)V

    .line 235
    return-void
.end method
