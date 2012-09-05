.class Lcom/google/android/apps/books/widget/BooksListHomeView$1;
.super Ljava/lang/Object;
.source "BooksListHomeView.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


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
    .line 74
    iput-object p1, p0, Lcom/google/android/apps/books/widget/BooksListHomeView$1;->this$0:Lcom/google/android/apps/books/widget/BooksListHomeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 8
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 77
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 78
    .local v0, adapterInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 79
    .local v1, position:I
    iget-object v2, p0, Lcom/google/android/apps/books/widget/BooksListHomeView$1;->this$0:Lcom/google/android/apps/books/widget/BooksListHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksListHomeView;->mData:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/apps/books/widget/BooksListHomeView;->access$000(Lcom/google/android/apps/books/widget/BooksListHomeView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v1, v2, :cond_29

    .line 80
    iget-object v2, p0, Lcom/google/android/apps/books/widget/BooksListHomeView$1;->this$0:Lcom/google/android/apps/books/widget/BooksListHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksListHomeView;->mHomeController:Lcom/google/android/apps/books/widget/BooksHomeController;
    invoke-static {v2}, Lcom/google/android/apps/books/widget/BooksListHomeView;->access$100(Lcom/google/android/apps/books/widget/BooksListHomeView;)Lcom/google/android/apps/books/widget/BooksHomeController;

    move-result-object v3

    iget-object v2, p0, Lcom/google/android/apps/books/widget/BooksListHomeView$1;->this$0:Lcom/google/android/apps/books/widget/BooksListHomeView;

    #getter for: Lcom/google/android/apps/books/widget/BooksListHomeView;->mData:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/apps/books/widget/BooksListHomeView;->access$000(Lcom/google/android/apps/books/widget/BooksListHomeView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/books/model/CarouselVolumeData;

    iget-object v2, v2, Lcom/google/android/apps/books/model/CarouselVolumeData;->volumeId:Ljava/lang/String;

    invoke-interface {v3, v2, p1}, Lcom/google/android/apps/books/widget/BooksHomeController;->populateBookMenu(Ljava/lang/String;Landroid/view/Menu;)V

    .line 84
    :cond_28
    :goto_28
    return-void

    .line 81
    :cond_29
    const-string v2, "ListHomeView"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 82
    const-string v2, "ListHomeView"

    const-string v3, "Asked to create context menu for out-of-bounds position"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method
