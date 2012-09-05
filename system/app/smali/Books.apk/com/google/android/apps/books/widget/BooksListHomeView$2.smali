.class Lcom/google/android/apps/books/widget/BooksListHomeView$2;
.super Ljava/lang/Object;
.source "BooksListHomeView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/widget/BooksListHomeView;-><init>(Lcom/google/android/apps/books/widget/BooksHomeController;Landroid/widget/ListView;Ljava/util/List;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/widget/BooksListHomeView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/widget/BooksListHomeView;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/apps/books/widget/BooksListHomeView$2;->this$0:Lcom/google/android/apps/books/widget/BooksListHomeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/google/android/apps/books/widget/BooksListHomeView$2;->this$0:Lcom/google/android/apps/books/widget/BooksListHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksListHomeView;->mData:Ljava/util/List;
    invoke-static {v1}, Lcom/google/android/apps/books/widget/BooksListHomeView;->access$000(Lcom/google/android/apps/books/widget/BooksListHomeView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/model/CarouselVolumeData;

    iget-object v0, v1, Lcom/google/android/apps/books/model/CarouselVolumeData;->volumeId:Ljava/lang/String;

    .line 91
    .local v0, volumeId:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/books/widget/BooksListHomeView$2;->this$0:Lcom/google/android/apps/books/widget/BooksListHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksListHomeView;->mHomeController:Lcom/google/android/apps/books/widget/BooksHomeController;
    invoke-static {v1}, Lcom/google/android/apps/books/widget/BooksListHomeView;->access$100(Lcom/google/android/apps/books/widget/BooksListHomeView;)Lcom/google/android/apps/books/widget/BooksHomeController;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/books/widget/BooksHomeController;->isShowingOfflineUi()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 92
    iget-object v1, p0, Lcom/google/android/apps/books/widget/BooksListHomeView$2;->this$0:Lcom/google/android/apps/books/widget/BooksListHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksListHomeView;->mHomeController:Lcom/google/android/apps/books/widget/BooksHomeController;
    invoke-static {v1}, Lcom/google/android/apps/books/widget/BooksListHomeView;->access$100(Lcom/google/android/apps/books/widget/BooksListHomeView;)Lcom/google/android/apps/books/widget/BooksHomeController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/apps/books/widget/BooksHomeController;->togglePinned(Ljava/lang/String;)V

    .line 96
    :goto_23
    return-void

    .line 94
    :cond_24
    iget-object v1, p0, Lcom/google/android/apps/books/widget/BooksListHomeView$2;->this$0:Lcom/google/android/apps/books/widget/BooksListHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksListHomeView;->mHomeController:Lcom/google/android/apps/books/widget/BooksHomeController;
    invoke-static {v1}, Lcom/google/android/apps/books/widget/BooksListHomeView;->access$100(Lcom/google/android/apps/books/widget/BooksListHomeView;)Lcom/google/android/apps/books/widget/BooksHomeController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/apps/books/widget/BooksHomeController;->openBookInReader(Ljava/lang/String;)V

    goto :goto_23
.end method
