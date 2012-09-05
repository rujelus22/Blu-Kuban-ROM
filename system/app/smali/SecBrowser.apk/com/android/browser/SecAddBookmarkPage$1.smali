.class Lcom/android/browser/SecAddBookmarkPage$1;
.super Ljava/lang/Object;
.source "SecAddBookmarkPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/SecAddBookmarkPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/SecAddBookmarkPage;


# direct methods
.method constructor <init>(Lcom/android/browser/SecAddBookmarkPage;)V
    .registers 2
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/browser/SecAddBookmarkPage$1;->this$0:Lcom/android/browser/SecAddBookmarkPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 367
    new-instance v7, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage$1;->this$0:Lcom/android/browser/SecAddBookmarkPage;

    const-class v1, Lcom/android/browser/FolderListPage;

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 371
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage$1;->this$0:Lcom/android/browser/SecAddBookmarkPage;

    #getter for: Lcom/android/browser/SecAddBookmarkPage;->mCurrentFolder:J
    invoke-static {v0}, Lcom/android/browser/SecAddBookmarkPage;->access$000(Lcom/android/browser/SecAddBookmarkPage;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_bc

    .line 374
    :try_start_16
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage$1;->this$0:Lcom/android/browser/SecAddBookmarkPage;

    invoke-virtual {v0}, Lcom/android/browser/SecAddBookmarkPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "account_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "account_type"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/SecAddBookmarkPage$1;->this$0:Lcom/android/browser/SecAddBookmarkPage;

    #getter for: Lcom/android/browser/SecAddBookmarkPage;->mCurrentFolder:J
    invoke-static {v4}, Lcom/android/browser/SecAddBookmarkPage;->access$000(Lcom/android/browser/SecAddBookmarkPage;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_49
    .catchall {:try_start_16 .. :try_end_49} :catchall_9e
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_49} :catch_75

    move-result-object v1

    .line 379
    :try_start_4a
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_ba

    .line 380
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 381
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_57
    .catchall {:try_start_4a .. :try_end_57} :catchall_a5
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_57} :catch_ab

    move-result-object v2

    .line 382
    const/4 v0, 0x1

    :try_start_59
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_a5
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_5c} :catch_b0

    move-result-object v0

    move-object v6, v2

    .line 387
    :goto_5e
    if-eqz v1, :cond_63

    .line 388
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 391
    :cond_63
    :goto_63
    const-string v1, "account_name"

    invoke-virtual {v7, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const-string v1, "account_type"

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage$1;->this$0:Lcom/android/browser/SecAddBookmarkPage;

    const/16 v1, 0x65

    invoke-virtual {v0, v7, v1}, Lcom/android/browser/SecAddBookmarkPage;->startActivityForResult(Landroid/content/Intent;I)V

    .line 403
    return-void

    .line 384
    :catch_75
    move-exception v0

    move-object v1, v0

    move-object v2, v6

    move-object v0, v6

    .line 385
    :goto_79
    :try_start_79
    const-string v3, "Bookmarks"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMoreFolderClick.onClick() exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catchall {:try_start_79 .. :try_end_95} :catchall_a8

    .line 387
    if-eqz v2, :cond_b6

    .line 388
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v8, v6

    move-object v6, v0

    move-object v0, v8

    goto :goto_63

    .line 387
    :catchall_9e
    move-exception v0

    :goto_9f
    if-eqz v6, :cond_a4

    .line 388
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_a4
    throw v0

    .line 387
    :catchall_a5
    move-exception v0

    move-object v6, v1

    goto :goto_9f

    :catchall_a8
    move-exception v0

    move-object v6, v2

    goto :goto_9f

    .line 384
    :catch_ab
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_79

    :catch_b0
    move-exception v0

    move-object v8, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_79

    :cond_b6
    move-object v8, v6

    move-object v6, v0

    move-object v0, v8

    goto :goto_63

    :cond_ba
    move-object v0, v6

    goto :goto_5e

    :cond_bc
    move-object v0, v6

    goto :goto_63
.end method
