.class Lcom/google/android/apps/books/render/ReaderBridgeAdapter$14;
.super Ljava/lang/Object;
.source "ReaderBridgeAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/render/ReaderBridgeAdapter;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/render/ReaderBridgeAdapter;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$14;->this$0:Lcom/google/android/apps/books/render/ReaderBridgeAdapter;

    iput-object p2, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$14;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$14;->this$0:Lcom/google/android/apps/books/render/ReaderBridgeAdapter;

    #getter for: Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->mListener:Lcom/google/android/apps/books/render/ReaderListener;
    invoke-static {v0}, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->access$000(Lcom/google/android/apps/books/render/ReaderBridgeAdapter;)Lcom/google/android/apps/books/render/ReaderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$14;->val$s:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/apps/books/render/ReaderListener;->d(Ljava/lang/String;)V

    .line 245
    return-void
.end method
