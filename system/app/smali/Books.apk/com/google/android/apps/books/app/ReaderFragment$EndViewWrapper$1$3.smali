.class Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1$3;
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


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;)V
    .registers 2
    .parameter

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1$3;->this$2:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 1134
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1$3;->this$2:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;

    iget-object v1, v1, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    iget-object v1, v1, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->getPlusOneUrl()Landroid/net/Uri;
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2700(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/net/Uri;

    move-result-object v0

    .line 1137
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_25

    .line 1138
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1$3;->this$2:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;

    iget-object v1, v1, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    iget-object v1, v1, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2600(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1$3;->this$2:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;

    iget-object v2, v2, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    iget-object v2, v2, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1700(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/apps/books/model/VolumeMetadata;->title:Ljava/lang/CharSequence;

    invoke-interface {v1, v0, v2}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->startShare(Landroid/net/Uri;Ljava/lang/CharSequence;)V

    .line 1140
    :cond_25
    return-void
.end method
