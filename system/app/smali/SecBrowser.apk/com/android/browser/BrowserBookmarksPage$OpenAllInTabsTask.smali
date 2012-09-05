.class Lcom/android/browser/BrowserBookmarksPage$OpenAllInTabsTask;
.super Landroid/os/AsyncTask;
.source "BrowserBookmarksPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserBookmarksPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OpenAllInTabsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field mFolderId:J

.field final synthetic this$0:Lcom/android/browser/BrowserBookmarksPage;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserBookmarksPage;J)V
    .registers 4
    .parameter
    .parameter "id"

    .prologue
    .line 707
    iput-object p1, p0, Lcom/android/browser/BrowserBookmarksPage$OpenAllInTabsTask;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 708
    iput-wide p2, p0, Lcom/android/browser/BrowserBookmarksPage$OpenAllInTabsTask;->mFolderId:J

    .line 709
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;
    .registers 12
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 713
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage$OpenAllInTabsTask;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v0}, Lcom/android/browser/BrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 714
    .local v6, c:Landroid/content/Context;
    if-nez v6, :cond_a

    .line 715
    :goto_9
    return-object v5

    :cond_a
    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v6}, Lcom/android/browser/BookmarkUtils;->getBookmarksUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/browser/BookmarksLoader;->PROJECTION:[Ljava/lang/String;

    const-string v3, "parent=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/android/browser/BrowserBookmarksPage$OpenAllInTabsTask;->mFolderId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_9
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 705
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage$OpenAllInTabsTask;->doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .registers 6
    .parameter "result"

    .prologue
    .line 722
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksPage$OpenAllInTabsTask;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    iget-object v3, v3, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    if-eqz v3, :cond_2a

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2a

    .line 723
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 724
    .local v2, urls:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 725
    .local v0, i:I
    :goto_13
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 726
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-static {p1}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_13

    .line 728
    :cond_23
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksPage$OpenAllInTabsTask;->this$0:Lcom/android/browser/BrowserBookmarksPage;

    iget-object v3, v3, Lcom/android/browser/BrowserBookmarksPage;->mCallbacks:Lcom/android/browser/BookmarksPageCallbacks;

    invoke-interface {v3, v2}, Lcom/android/browser/BookmarksPageCallbacks;->onOpenInNewWindow([Ljava/lang/String;)Z

    .line 730
    .end local v0           #i:I
    .end local v2           #urls:[Ljava/lang/String;
    :cond_2a
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 705
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage$OpenAllInTabsTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
