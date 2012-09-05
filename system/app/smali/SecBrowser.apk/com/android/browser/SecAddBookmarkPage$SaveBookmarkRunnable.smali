.class Lcom/android/browser/SecAddBookmarkPage$SaveBookmarkRunnable;
.super Ljava/lang/Object;
.source "SecAddBookmarkPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/SecAddBookmarkPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveBookmarkRunnable"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMessage:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/browser/SecAddBookmarkPage;


# direct methods
.method public constructor <init>(Lcom/android/browser/SecAddBookmarkPage;Landroid/content/Context;Landroid/os/Message;)V
    .registers 5
    .parameter
    .parameter "ctx"
    .parameter "msg"

    .prologue
    .line 683
    iput-object p1, p0, Lcom/android/browser/SecAddBookmarkPage$SaveBookmarkRunnable;->this$0:Lcom/android/browser/SecAddBookmarkPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 684
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/SecAddBookmarkPage$SaveBookmarkRunnable;->mContext:Landroid/content/Context;

    .line 685
    iput-object p3, p0, Lcom/android/browser/SecAddBookmarkPage$SaveBookmarkRunnable;->mMessage:Landroid/os/Message;

    .line 686
    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 689
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage$SaveBookmarkRunnable;->mMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    .line 690
    .local v7, bundle:Landroid/os/Bundle;
    const-string v0, "title"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 691
    .local v3, title:Ljava/lang/String;
    const-string v0, "url"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 692
    .local v2, url:Ljava/lang/String;
    const-string v0, "remove_thumbnail"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 693
    .local v10, invalidateThumbnail:Z
    if-eqz v10, :cond_57

    const/4 v4, 0x0

    .line 695
    .local v4, thumbnail:Landroid/graphics/Bitmap;
    :goto_1c
    const-string v0, "touch_icon_url"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 699
    .local v11, touchIconUrl:Ljava/lang/String;
    :try_start_22
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage$SaveBookmarkRunnable;->this$0:Lcom/android/browser/SecAddBookmarkPage;

    invoke-virtual {v0}, Lcom/android/browser/SecAddBookmarkPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 700
    .local v8, cr:Landroid/content/ContentResolver;
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage$SaveBookmarkRunnable;->this$0:Lcom/android/browser/SecAddBookmarkPage;

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/browser/SecAddBookmarkPage$SaveBookmarkRunnable;->this$0:Lcom/android/browser/SecAddBookmarkPage;

    #getter for: Lcom/android/browser/SecAddBookmarkPage;->mCurrentFolder:J
    invoke-static {v5}, Lcom/android/browser/SecAddBookmarkPage;->access$000(Lcom/android/browser/SecAddBookmarkPage;)J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/android/browser/Bookmarks;->addBookmark(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;J)V

    .line 702
    if-eqz v11, :cond_4c

    .line 703
    new-instance v0, Lcom/android/browser/DownloadTouchIcon;

    iget-object v1, p0, Lcom/android/browser/SecAddBookmarkPage$SaveBookmarkRunnable;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v8, v2}, Lcom/android/browser/DownloadTouchIcon;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/browser/SecAddBookmarkPage$SaveBookmarkRunnable;->this$0:Lcom/android/browser/SecAddBookmarkPage;

    #getter for: Lcom/android/browser/SecAddBookmarkPage;->mTouchIconUrl:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/browser/SecAddBookmarkPage;->access$200(Lcom/android/browser/SecAddBookmarkPage;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-virtual {v0, v1}, Lcom/android/browser/DownloadTouchIcon;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 705
    :cond_4c
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage$SaveBookmarkRunnable;->mMessage:Landroid/os/Message;

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I
    :try_end_51
    .catch Ljava/lang/IllegalStateException; {:try_start_22 .. :try_end_51} :catch_61

    .line 709
    .end local v8           #cr:Landroid/content/ContentResolver;
    :goto_51
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage$SaveBookmarkRunnable;->mMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 710
    return-void

    .line 693
    .end local v4           #thumbnail:Landroid/graphics/Bitmap;
    .end local v11           #touchIconUrl:Ljava/lang/String;
    :cond_57
    const-string v0, "thumbnail"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v4, v0

    goto :goto_1c

    .line 706
    .restart local v4       #thumbnail:Landroid/graphics/Bitmap;
    .restart local v11       #touchIconUrl:Ljava/lang/String;
    :catch_61
    move-exception v9

    .line 707
    .local v9, e:Ljava/lang/IllegalStateException;
    iget-object v0, p0, Lcom/android/browser/SecAddBookmarkPage$SaveBookmarkRunnable;->mMessage:Landroid/os/Message;

    iput v12, v0, Landroid/os/Message;->arg1:I

    goto :goto_51
.end method
