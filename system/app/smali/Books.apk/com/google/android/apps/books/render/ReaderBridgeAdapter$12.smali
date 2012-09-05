.class Lcom/google/android/apps/books/render/ReaderBridgeAdapter$12;
.super Ljava/lang/Object;
.source "ReaderBridgeAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->onDocumentChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/render/ReaderBridgeAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/render/ReaderBridgeAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$12;->this$0:Lcom/google/android/apps/books/render/ReaderBridgeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/apps/books/render/ReaderBridgeAdapter$12;->this$0:Lcom/google/android/apps/books/render/ReaderBridgeAdapter;

    #getter for: Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->mListener:Lcom/google/android/apps/books/render/ReaderListener;
    invoke-static {v0}, Lcom/google/android/apps/books/render/ReaderBridgeAdapter;->access$000(Lcom/google/android/apps/books/render/ReaderBridgeAdapter;)Lcom/google/android/apps/books/render/ReaderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/render/ReaderListener;->onDocumentChanged()V

    .line 226
    return-void
.end method
