.class Lcom/google/android/apps/books/app/BooksActivity$ResetStorageTask;
.super Landroid/os/AsyncTask;
.source "BooksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/BooksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResetStorageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/common/FileStorageManager;)V
    .registers 2
    .parameter "fsm"

    .prologue
    .line 1676
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1677
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksActivity$ResetStorageTask;->mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

    .line 1678
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1672
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/BooksActivity$ResetStorageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6
    .parameter "params"

    .prologue
    .line 1683
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity$ResetStorageTask;->mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

    invoke-virtual {v1}, Lcom/google/android/apps/books/common/FileStorageManager;->resetFileStorageLocation()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1689
    :cond_5
    :goto_5
    const/4 v1, 0x0

    return-object v1

    .line 1684
    :catch_7
    move-exception v0

    .line 1685
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BooksActivity"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1686
    const-string v1, "BooksActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occurred resetting file storage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method
