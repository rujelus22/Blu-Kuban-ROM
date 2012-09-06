.class Lcom/google/android/apps/reader/widget/ReaderWindow$LoaderCallbacksObserver;
.super Ljava/lang/Object;
.source "ReaderWindow.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/widget/ReaderWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderCallbacksObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragment:Landroid/support/v4/app/Fragment;

.field final synthetic this$0:Lcom/google/android/apps/reader/widget/ReaderWindow;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/reader/widget/ReaderWindow;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;Landroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter
    .parameter
    .parameter "fragment"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 234
    .local p2, callbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;,"Landroid/support/v4/app/LoaderManager$LoaderCallbacks<Landroid/database/Cursor;>;"
    iput-object p1, p0, Lcom/google/android/apps/reader/widget/ReaderWindow$LoaderCallbacksObserver;->this$0:Lcom/google/android/apps/reader/widget/ReaderWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p2, p0, Lcom/google/android/apps/reader/widget/ReaderWindow$LoaderCallbacksObserver;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 236
    iput-object p3, p0, Lcom/google/android/apps/reader/widget/ReaderWindow$LoaderCallbacksObserver;->mFragment:Landroid/support/v4/app/Fragment;

    .line 237
    return-void
.end method

.method private key(I)Ljava/lang/String;
    .registers 4
    .parameter "loaderId"

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/apps/reader/widget/ReaderWindow$LoaderCallbacksObserver;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ReaderWindow$LoaderCallbacksObserver;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/ReaderWindow$LoaderCallbacksObserver;->this$0:Lcom/google/android/apps/reader/widget/ReaderWindow;

    #getter for: Lcom/google/android/apps/reader/widget/ReaderWindow;->mActiveLoaders:Ljava/util/Set;
    invoke-static {v1}, Lcom/google/android/apps/reader/widget/ReaderWindow;->access$000(Lcom/google/android/apps/reader/widget/ReaderWindow;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/widget/ReaderWindow$LoaderCallbacksObserver;->key(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/ReaderWindow$LoaderCallbacksObserver;->this$0:Lcom/google/android/apps/reader/widget/ReaderWindow;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/widget/ReaderWindow;->updateIndeterminateProgress()V

    .line 253
    return-object v0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ReaderWindow$LoaderCallbacksObserver;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    .line 262
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ReaderWindow$LoaderCallbacksObserver;->this$0:Lcom/google/android/apps/reader/widget/ReaderWindow;

    #getter for: Lcom/google/android/apps/reader/widget/ReaderWindow;->mActiveLoaders:Ljava/util/Set;
    invoke-static {v0}, Lcom/google/android/apps/reader/widget/ReaderWindow;->access$000(Lcom/google/android/apps/reader/widget/ReaderWindow;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/widget/ReaderWindow$LoaderCallbacksObserver;->key(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 263
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ReaderWindow$LoaderCallbacksObserver;->this$0:Lcom/google/android/apps/reader/widget/ReaderWindow;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/widget/ReaderWindow;->updateIndeterminateProgress()V

    .line 264
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 230
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/reader/widget/ReaderWindow$LoaderCallbacksObserver;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ReaderWindow$LoaderCallbacksObserver;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-interface {v0, p1}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onLoaderReset(Landroid/support/v4/content/Loader;)V

    .line 272
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ReaderWindow$LoaderCallbacksObserver;->this$0:Lcom/google/android/apps/reader/widget/ReaderWindow;

    #getter for: Lcom/google/android/apps/reader/widget/ReaderWindow;->mActiveLoaders:Ljava/util/Set;
    invoke-static {v0}, Lcom/google/android/apps/reader/widget/ReaderWindow;->access$000(Lcom/google/android/apps/reader/widget/ReaderWindow;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/widget/ReaderWindow$LoaderCallbacksObserver;->key(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 273
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ReaderWindow$LoaderCallbacksObserver;->this$0:Lcom/google/android/apps/reader/widget/ReaderWindow;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/widget/ReaderWindow;->updateIndeterminateProgress()V

    .line 274
    return-void
.end method
