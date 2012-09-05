.class Lcom/android/browser/Controller$10;
.super Landroid/os/AsyncTask;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Controller;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/browser/Tab;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Controller;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/browser/Controller;Landroid/content/ContentResolver;Landroid/content/ContentValues;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1987
    iput-object p1, p0, Lcom/android/browser/Controller$10;->this$0:Lcom/android/browser/Controller;

    iput-object p2, p0, Lcom/android/browser/Controller$10;->val$cr:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/android/browser/Controller$10;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/browser/Tab;)Ljava/lang/Long;
    .registers 8
    .parameter "params"

    .prologue
    .line 1991
    iget-object v3, p0, Lcom/android/browser/Controller$10;->val$cr:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/browser/provider/SnapshotProvider$Snapshots;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/browser/Controller$10;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 1992
    .local v2, result:Landroid/net/Uri;
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 1993
    .local v0, id:J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1987
    check-cast p1, [Lcom/android/browser/Tab;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller$10;->doInBackground([Lcom/android/browser/Tab;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .registers 9
    .parameter "id"

    .prologue
    .line 1998
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1999
    .local v0, b:Landroid/os/Bundle;
    const-string v4, "animate_id"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2001
    iget-object v4, p0, Lcom/android/browser/Controller$10;->this$0:Lcom/android/browser/Controller;

    invoke-virtual {v4}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v3

    .line 2002
    .local v3, w:Landroid/webkit/WebView;
    if-nez v3, :cond_17

    .line 2027
    :goto_16
    return-void

    .line 2005
    :cond_17
    const-string v4, "url"

    invoke-virtual {v3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2006
    const-string v4, "title"

    invoke-virtual {v3}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    invoke-virtual {v3}, Landroid/webkit/WebView;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v2

    .line 2008
    .local v2, touchIconUrl:Ljava/lang/String;
    if-eqz v2, :cond_43

    .line 2009
    const-string v4, "touch_icon_url"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 2012
    .local v1, settings:Landroid/webkit/WebSettings;
    if-eqz v1, :cond_43

    .line 2013
    const-string v4, "user_agent"

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2017
    .end local v1           #settings:Landroid/webkit/WebSettings;
    :cond_43
    const-string v4, "thumbnail"

    iget-object v5, p0, Lcom/android/browser/Controller$10;->this$0:Lcom/android/browser/Controller;

    #getter for: Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/browser/Controller;->access$200(Lcom/android/browser/Controller;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/browser/Controller;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v5

    iget-object v6, p0, Lcom/android/browser/Controller$10;->this$0:Lcom/android/browser/Controller;

    #getter for: Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/browser/Controller;->access$200(Lcom/android/browser/Controller;)Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/browser/Controller;->getDesiredThumbnailHeight(Landroid/content/Context;)I

    move-result v6

    invoke-static {v3, v5, v6}, Lcom/android/browser/Controller;->createScreenshot(Landroid/webkit/WebView;II)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2020
    const-string v4, "favicon"

    invoke-virtual {v3}, Landroid/webkit/WebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2023
    const-string v4, "gravity"

    const-wide/16 v5, 0x35

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2026
    iget-object v4, p0, Lcom/android/browser/Controller$10;->this$0:Lcom/android/browser/Controller;

    #getter for: Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;
    invoke-static {v4}, Lcom/android/browser/Controller;->access$800(Lcom/android/browser/Controller;)Lcom/android/browser/UI;

    move-result-object v4

    sget-object v5, Lcom/android/browser/UI$ComboViews;->Snapshots:Lcom/android/browser/UI$ComboViews;

    invoke-interface {v4, v5, v0}, Lcom/android/browser/UI;->showComboView(Lcom/android/browser/UI$ComboViews;Landroid/os/Bundle;)V

    goto :goto_16
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1987
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller$10;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
