.class Lcom/sprint/w/installer/RssPackBrowser$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RssPackBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/RssPackBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/RssPackBrowser;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/RssPackBrowser;)V
    .registers 2
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/sprint/w/installer/RssPackBrowser$ListAdapter;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser$ListAdapter;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    #getter for: Lcom/sprint/w/installer/RssPackBrowser;->mFeedItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sprint/w/installer/RssPackBrowser;->access$700(Lcom/sprint/w/installer/RssPackBrowser;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/sprint/w/installer/RssPackBrowser$ListAdapter;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    #getter for: Lcom/sprint/w/installer/RssPackBrowser;->mFeedItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sprint/w/installer/RssPackBrowser;->access$700(Lcom/sprint/w/installer/RssPackBrowser;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_9
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 238
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "id"

    .prologue
    .line 243
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 248
    move-object v2, p2

    check-cast v2, Lcom/sprint/w/installer/RssPackBrowser$ItemView;

    .line 249
    .local v2, v:Lcom/sprint/w/installer/RssPackBrowser$ItemView;
    if-nez v2, :cond_e

    .line 250
    new-instance v2, Lcom/sprint/w/installer/RssPackBrowser$ItemView;

    .end local v2           #v:Lcom/sprint/w/installer/RssPackBrowser$ItemView;
    iget-object v3, p0, Lcom/sprint/w/installer/RssPackBrowser$ListAdapter;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    iget-object v4, p0, Lcom/sprint/w/installer/RssPackBrowser$ListAdapter;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    invoke-direct {v2, v3, v4}, Lcom/sprint/w/installer/RssPackBrowser$ItemView;-><init>(Lcom/sprint/w/installer/RssPackBrowser;Landroid/content/Context;)V

    .line 252
    .restart local v2       #v:Lcom/sprint/w/installer/RssPackBrowser$ItemView;
    :cond_e
    iget-object v3, p0, Lcom/sprint/w/installer/RssPackBrowser$ListAdapter;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    #getter for: Lcom/sprint/w/installer/RssPackBrowser;->mFeedItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sprint/w/installer/RssPackBrowser;->access$700(Lcom/sprint/w/installer/RssPackBrowser;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;

    .line 253
    .local v0, fi:Lcom/sprint/w/installer/RssPackBrowser$FeedItem;
    iget-object v3, v2, Lcom/sprint/w/installer/RssPackBrowser$ItemView;->mTitle:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    const-string v1, ""

    .line 255
    .local v1, secondTitle:Ljava/lang/String;
    iget-object v3, v0, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->id:Ljava/lang/String;

    if-eqz v3, :cond_4d

    iget-object v3, p0, Lcom/sprint/w/installer/RssPackBrowser$ListAdapter;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    #getter for: Lcom/sprint/w/installer/RssPackBrowser;->mInstalledPack:Lcom/sprint/w/installer/PackInfo;
    invoke-static {v3}, Lcom/sprint/w/installer/RssPackBrowser;->access$1000(Lcom/sprint/w/installer/RssPackBrowser;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v3

    if-eqz v3, :cond_4d

    .line 256
    iget-object v3, v0, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/sprint/w/installer/RssPackBrowser$ListAdapter;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    #getter for: Lcom/sprint/w/installer/RssPackBrowser;->mInstalledPack:Lcom/sprint/w/installer/PackInfo;
    invoke-static {v4}, Lcom/sprint/w/installer/RssPackBrowser;->access$1000(Lcom/sprint/w/installer/RssPackBrowser;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 257
    iget v3, v0, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->versionCode:I

    iget-object v4, p0, Lcom/sprint/w/installer/RssPackBrowser$ListAdapter;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    #getter for: Lcom/sprint/w/installer/RssPackBrowser;->mInstalledPack:Lcom/sprint/w/installer/PackInfo;
    invoke-static {v4}, Lcom/sprint/w/installer/RssPackBrowser;->access$1000(Lcom/sprint/w/installer/RssPackBrowser;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v4

    iget v4, v4, Lcom/sprint/w/installer/PackInfo;->versionCode:I

    if-gt v3, v4, :cond_60

    .line 258
    const-string v1, "Currently installed"

    .line 264
    :cond_4d
    :goto_4d
    iget-object v3, v2, Lcom/sprint/w/installer/RssPackBrowser$ItemView;->mSecondTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v3, v2, Lcom/sprint/w/installer/RssPackBrowser$ItemView;->mIcon:Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/sprint/w/installer/RssPackBrowser$FeedItem;->iconUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/sprint/w/installer/RssPackBrowser$ListAdapter;->this$0:Lcom/sprint/w/installer/RssPackBrowser;

    #getter for: Lcom/sprint/w/installer/RssPackBrowser;->mDefaultIcon:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/sprint/w/installer/RssPackBrowser;->access$1100(Lcom/sprint/w/installer/RssPackBrowser;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 267
    return-object v2

    .line 260
    :cond_60
    const-string v1, "Update available"

    goto :goto_4d
.end method
