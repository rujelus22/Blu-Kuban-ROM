.class Lcom/google/android/apps/books/widget/BooksCarouselHomeView$1;
.super Ljava/lang/Object;
.source "BooksCarouselHomeView.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/widget/BooksCarouselHomeView;-><init>(Lcom/google/android/apps/books/widget/BooksHomeController;Landroid/view/View;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)V
    .registers 2
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$1;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$1;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mLongPressedVolumeId:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$000(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$1;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mHomeController:Lcom/google/android/apps/books/widget/BooksHomeController;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$100(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Lcom/google/android/apps/books/widget/BooksHomeController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$1;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mLongPressedVolumeId:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$000(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/apps/books/widget/BooksHomeController;->populateBookMenu(Ljava/lang/String;Landroid/view/Menu;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/books/widget/BooksCarouselHomeView$1;->this$0:Lcom/google/android/apps/books/widget/BooksCarouselHomeView;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->mLongPressedVolumeId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/apps/books/widget/BooksCarouselHomeView;->access$002(Lcom/google/android/apps/books/widget/BooksCarouselHomeView;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    :cond_1d
    return-void
.end method
