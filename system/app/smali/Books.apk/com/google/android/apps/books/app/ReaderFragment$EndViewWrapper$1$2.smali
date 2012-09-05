.class Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1$2;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;

.field final synthetic val$volumeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1$2;->this$2:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;

    iput-object p2, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1$2;->val$volumeId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1$2;->this$2:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;

    iget-object v0, v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    iget-object v0, v0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;
    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2600(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1$2;->val$volumeId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1$2;->this$2:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;

    iget-object v2, v2, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    iget-object v2, v2, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1700(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/apps/books/model/VolumeMetadata;->buyUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->startBuyVolume(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    return-void
.end method
