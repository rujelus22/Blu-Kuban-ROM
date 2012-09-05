.class Lcom/google/android/apps/books/appwidget/BooksRVFactory$1;
.super Landroid/database/ContentObserver;
.source "BooksAppWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/appwidget/BooksRVFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/appwidget/BooksRVFactory;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/appwidget/BooksRVFactory;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory$1;->this$0:Lcom/google/android/apps/books/appwidget/BooksRVFactory;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .parameter "selfUpdate"

    .prologue
    .line 69
    const-string v1, "BooksAppWidget"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 70
    const-string v1, "BooksAppWidget"

    const-string v2, "onChange() triggered from provider"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_10
    iget-object v1, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory$1;->this$0:Lcom/google/android/apps/books/appwidget/BooksRVFactory;

    #calls: Lcom/google/android/apps/books/appwidget/BooksRVFactory;->loadVolumeList()Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->access$000(Lcom/google/android/apps/books/appwidget/BooksRVFactory;)Ljava/util/ArrayList;

    move-result-object v0

    .line 76
    .local v0, volumeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory$1;->this$0:Lcom/google/android/apps/books/appwidget/BooksRVFactory;

    #getter for: Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mVolumeList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->access$100(Lcom/google/android/apps/books/appwidget/BooksRVFactory;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 77
    iget-object v1, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory$1;->this$0:Lcom/google/android/apps/books/appwidget/BooksRVFactory;

    #getter for: Lcom/google/android/apps/books/appwidget/BooksRVFactory;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-static {v1}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->access$300(Lcom/google/android/apps/books/appwidget/BooksRVFactory;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/appwidget/BooksRVFactory$1;->this$0:Lcom/google/android/apps/books/appwidget/BooksRVFactory;

    #calls: Lcom/google/android/apps/books/appwidget/BooksRVFactory;->getAppWidgetIds()[I
    invoke-static {v2}, Lcom/google/android/apps/books/appwidget/BooksRVFactory;->access$200(Lcom/google/android/apps/books/appwidget/BooksRVFactory;)[I

    move-result-object v2

    const v3, 0x7f0f0023

    invoke-virtual {v1, v2, v3}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 82
    :cond_34
    return-void
.end method
