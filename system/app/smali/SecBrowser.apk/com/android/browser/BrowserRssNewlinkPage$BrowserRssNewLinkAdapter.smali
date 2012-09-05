.class Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;
.super Ljava/lang/Object;
.source "BrowserRssNewlinkPage.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserRssNewlinkPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrowserRssNewLinkAdapter"
.end annotation


# instance fields
.field private mObservers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/browser/BrowserRssNewlinkPage;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserRssNewlinkPage;)V
    .registers 3
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;->this$0:Lcom/android/browser/BrowserRssNewlinkPage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;->mObservers:Ljava/util/Vector;

    .line 159
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 226
    invoke-static {}, Lcom/android/browser/BrowserRssNewlinkPage;->access$400()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 255
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 186
    if-nez p2, :cond_20

    .line 187
    new-instance v0, Lcom/android/browser/BrowserRssLinksItem;

    iget-object v3, p0, Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;->this$0:Lcom/android/browser/BrowserRssNewlinkPage;

    invoke-direct {v0, v3}, Lcom/android/browser/BrowserRssLinksItem;-><init>(Landroid/content/Context;)V

    .line 196
    .local v0, item:Lcom/android/browser/BrowserRssLinksItem;
    :goto_9
    iget-object v3, p0, Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;->this$0:Lcom/android/browser/BrowserRssNewlinkPage;

    #getter for: Lcom/android/browser/BrowserRssNewlinkPage;->FeedTitle:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/browser/BrowserRssNewlinkPage;->access$200(Lcom/android/browser/BrowserRssNewlinkPage;)[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, p1

    .line 197
    .local v1, title:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;->this$0:Lcom/android/browser/BrowserRssNewlinkPage;

    #getter for: Lcom/android/browser/BrowserRssNewlinkPage;->FeedUrl:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/browser/BrowserRssNewlinkPage;->access$300(Lcom/android/browser/BrowserRssNewlinkPage;)[Ljava/lang/String;

    move-result-object v3

    aget-object v2, v3, p1

    .line 202
    .local v2, url:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserRssLinksItem;->setName(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0, v2}, Lcom/android/browser/BrowserRssLinksItem;->setUrl(Ljava/lang/String;)V

    .line 214
    return-object v0

    .end local v0           #item:Lcom/android/browser/BrowserRssLinksItem;
    .end local v1           #title:Ljava/lang/String;
    .end local v2           #url:Ljava/lang/String;
    :cond_20
    move-object v0, p2

    .line 189
    check-cast v0, Lcom/android/browser/BrowserRssLinksItem;

    .restart local v0       #item:Lcom/android/browser/BrowserRssLinksItem;
    goto :goto_9
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isEnabled(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;->mObservers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 273
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;->mObservers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 277
    return-void
.end method
