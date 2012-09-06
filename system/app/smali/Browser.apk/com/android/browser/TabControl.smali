.class Lcom/android/browser/TabControl;
.super Ljava/lang/Object;
.source "TabControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;
    }
.end annotation


# static fields
.field private static final CURRENT:Ljava/lang/String; = "current"

.field private static final LOGTAG:Ljava/lang/String; = "TabControl"

.field private static final POSITIONS:Ljava/lang/String; = "positions"

.field private static sNextId:J


# instance fields
.field private final mController:Lcom/android/browser/Controller;

.field private mCurrentTab:I

.field private mMaxTabs:I

.field private mOnThumbnailUpdatedListener:Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;

.field private mTabQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/Tab;",
            ">;"
        }
    .end annotation
.end field

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/Tab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/android/browser/TabControl;->sNextId:J

    return-void
.end method

.method constructor <init>(Lcom/android/browser/Controller;)V
    .registers 4
    .parameter "controller"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    .line 59
    iput-object p1, p0, Lcom/android/browser/TabControl;->mController:Lcom/android/browser/Controller;

    .line 60
    iget-object v0, p0, Lcom/android/browser/TabControl;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getMaxTabs()I

    move-result v0

    iput v0, p0, Lcom/android/browser/TabControl;->mMaxTabs:I

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/browser/TabControl;->mMaxTabs:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/browser/TabControl;->mMaxTabs:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    .line 63
    return-void
.end method

.method private createNewWebView()Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 626
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/browser/TabControl;->createNewWebView(Z)Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method private createNewWebView(Z)Landroid/webkit/WebView;
    .registers 3
    .parameter "privateBrowsing"

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/browser/TabControl;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getWebViewFactory()Lcom/android/browser/WebViewFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/browser/WebViewFactory;->createWebView(Z)Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method private getHalfLeastUsedTabs(Lcom/android/browser/Tab;)Ljava/util/Vector;
    .registers 8
    .parameter "current"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/browser/Tab;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/android/browser/Tab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 486
    .local v3, tabsToGo:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/android/browser/Tab;>;"
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_e

    if-nez p1, :cond_f

    .line 512
    :cond_e
    :goto_e
    return-object v3

    .line 490
    :cond_f
    iget-object v4, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_e

    .line 497
    const/4 v1, 0x0

    .line 498
    .local v1, openTabCount:I
    iget-object v4, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1e
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/Tab;

    .line 499
    .local v2, t:Lcom/android/browser/Tab;
    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 500
    add-int/lit8 v1, v1, 0x1

    .line 501
    if-eq v2, p1, :cond_1e

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getParent()Lcom/android/browser/Tab;

    move-result-object v4

    if-eq v2, v4, :cond_1e

    .line 502
    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 507
    .end local v2           #t:Lcom/android/browser/Tab;
    :cond_40
    div-int/lit8 v1, v1, 0x2

    .line 508
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    if-le v4, v1, :cond_e

    .line 509
    invoke-virtual {v3, v1}, Ljava/util/Vector;->setSize(I)V

    goto :goto_e
.end method

.method static declared-synchronized getNextId()J
    .registers 6

    .prologue
    .line 66
    const-class v1, Lcom/android/browser/TabControl;

    monitor-enter v1

    :try_start_3
    sget-wide v2, Lcom/android/browser/TabControl;->sNextId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lcom/android/browser/TabControl;->sNextId:J
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    monitor-exit v1

    return-wide v2

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hasState(JLandroid/os/Bundle;)Z
    .registers 8
    .parameter "id"
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 363
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_8

    .line 365
    :cond_7
    :goto_7
    return v1

    .line 364
    :cond_8
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 365
    .local v0, tab:Landroid/os/Bundle;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v1, 0x1

    goto :goto_7
.end method

.method private isIncognito(JLandroid/os/Bundle;)Z
    .registers 6
    .parameter "id"
    .parameter "state"

    .prologue
    .line 369
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 370
    .local v0, tabstate:Landroid/os/Bundle;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    .line 371
    const-string v1, "privateBrowsingEnabled"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 373
    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method private setCurrentTab(Lcom/android/browser/Tab;Z)Z
    .registers 11
    .parameter "newTab"
    .parameter "force"

    .prologue
    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v4, 0x1

    .line 651
    iget v6, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    invoke-virtual {p0, v6}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    .line 652
    .local v0, current:Lcom/android/browser/Tab;
    if-ne v0, p1, :cond_e

    if-nez p2, :cond_e

    .line 680
    :goto_d
    return v4

    .line 655
    :cond_e
    if-eqz v0, :cond_15

    .line 656
    invoke-virtual {v0}, Lcom/android/browser/Tab;->putInBackground()V

    .line 657
    iput v7, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    .line 659
    :cond_15
    if-nez p1, :cond_19

    move v4, v5

    .line 660
    goto :goto_d

    .line 664
    :cond_19
    iget-object v6, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 665
    .local v1, index:I
    if-eq v1, v7, :cond_26

    .line 666
    iget-object v6, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 668
    :cond_26
    iget-object v6, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    iget-object v6, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    iput v6, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    .line 672
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 673
    .local v2, mainView:Landroid/webkit/WebView;
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isSnapshot()Z

    move-result v6

    if-nez v6, :cond_4d

    if-nez v2, :cond_4d

    move v3, v4

    .line 674
    .local v3, needRestore:Z
    :goto_40
    if-eqz v3, :cond_49

    .line 676
    invoke-direct {p0}, Lcom/android/browser/TabControl;->createNewWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 677
    invoke-virtual {p1, v2}, Lcom/android/browser/Tab;->setWebView(Landroid/webkit/WebView;)V

    .line 679
    :cond_49
    invoke-virtual {p1}, Lcom/android/browser/Tab;->putInForeground()V

    goto :goto_d

    .end local v3           #needRestore:Z
    :cond_4d
    move v3, v5

    .line 673
    goto :goto_40
.end method

.method private tabMatchesUrl(Lcom/android/browser/Tab;Ljava/lang/String;)Z
    .registers 4
    .parameter "t"
    .parameter "url"

    .prologue
    .line 581
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method addPreloadedTab(Lcom/android/browser/Tab;)V
    .registers 8
    .parameter "tab"

    .prologue
    .line 173
    iget-object v2, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/Tab;

    .line 174
    .local v0, current:Lcom/android/browser/Tab;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    .line 175
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tab with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already exists: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/browser/Tab;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    .end local v0           #current:Lcom/android/browser/Tab;
    :cond_4b
    iget-object v2, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v2, p0, Lcom/android/browser/TabControl;->mController:Lcom/android/browser/Controller;

    invoke-virtual {p1, v2}, Lcom/android/browser/Tab;->setController(Lcom/android/browser/WebViewController;)V

    .line 181
    iget-object v2, p0, Lcom/android/browser/TabControl;->mController:Lcom/android/browser/Controller;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/browser/Controller;->onSetWebView(Lcom/android/browser/Tab;Landroid/webkit/WebView;)V

    .line 182
    invoke-virtual {p1}, Lcom/android/browser/Tab;->putInBackground()V

    .line 183
    return-void
.end method

.method canCreateNewTab()Z
    .registers 3

    .prologue
    .line 155
    iget v0, p0, Lcom/android/browser/TabControl;->mMaxTabs:I

    iget-object v1, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method canRestoreState(Landroid/os/Bundle;Z)J
    .registers 14
    .parameter "inState"
    .parameter "restoreIncognitoTabs"

    .prologue
    .line 342
    if-nez p1, :cond_8

    const/4 v6, 0x0

    .line 343
    .local v6, ids:[J
    :goto_3
    if-nez v6, :cond_f

    .line 344
    const-wide/16 v1, -0x1

    .line 359
    :cond_7
    :goto_7
    return-wide v1

    .line 342
    .end local v6           #ids:[J
    :cond_8
    const-string v10, "positions"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v6

    goto :goto_3

    .line 346
    .restart local v6       #ids:[J
    :cond_f
    const-string v10, "current"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 347
    .local v8, oldcurrent:J
    const-wide/16 v1, -0x1

    .line 348
    .local v1, current:J
    if-nez p2, :cond_25

    invoke-direct {p0, v8, v9, p1}, Lcom/android/browser/TabControl;->hasState(JLandroid/os/Bundle;)Z

    move-result v10

    if-eqz v10, :cond_27

    invoke-direct {p0, v8, v9, p1}, Lcom/android/browser/TabControl;->isIncognito(JLandroid/os/Bundle;)Z

    move-result v10

    if-nez v10, :cond_27

    .line 349
    :cond_25
    move-wide v1, v8

    goto :goto_7

    .line 352
    :cond_27
    move-object v0, v6

    .local v0, arr$:[J
    array-length v7, v0

    .local v7, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2a
    if-ge v3, v7, :cond_7

    aget-wide v4, v0, v3

    .line 353
    .local v4, id:J
    invoke-direct {p0, v4, v5, p1}, Lcom/android/browser/TabControl;->hasState(JLandroid/os/Bundle;)Z

    move-result v10

    if-eqz v10, :cond_3c

    invoke-direct {p0, v4, v5, p1}, Lcom/android/browser/TabControl;->isIncognito(JLandroid/os/Bundle;)Z

    move-result v10

    if-nez v10, :cond_3c

    .line 354
    move-wide v1, v4

    .line 355
    goto :goto_7

    .line 352
    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a
.end method

.method createNewTab()Lcom/android/browser/Tab;
    .registers 2

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/TabControl;->createNewTab(Z)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method createNewTab(Landroid/os/Bundle;Z)Lcom/android/browser/Tab;
    .registers 7
    .parameter "state"
    .parameter "privateBrowsing"

    .prologue
    .line 195
    iget-object v3, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 197
    .local v0, size:I
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v3

    if-nez v3, :cond_e

    .line 198
    const/4 v1, 0x0

    .line 208
    :goto_d
    return-object v1

    .line 201
    :cond_e
    invoke-direct {p0, p2}, Lcom/android/browser/TabControl;->createNewWebView(Z)Landroid/webkit/WebView;

    move-result-object v2

    .line 204
    .local v2, w:Landroid/webkit/WebView;
    new-instance v1, Lcom/android/browser/Tab;

    iget-object v3, p0, Lcom/android/browser/TabControl;->mController:Lcom/android/browser/Controller;

    invoke-direct {v1, v3, v2, p1}, Lcom/android/browser/Tab;-><init>(Lcom/android/browser/WebViewController;Landroid/webkit/WebView;Landroid/os/Bundle;)V

    .line 205
    .local v1, t:Lcom/android/browser/Tab;
    iget-object v3, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-virtual {v1}, Lcom/android/browser/Tab;->putInBackground()V

    goto :goto_d
.end method

.method createNewTab(Z)Lcom/android/browser/Tab;
    .registers 3
    .parameter "privateBrowsing"

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/browser/TabControl;->createNewTab(Landroid/os/Bundle;Z)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method createSnapshotTab(J)Lcom/android/browser/SnapshotTab;
    .registers 5
    .parameter "snapshotId"

    .prologue
    .line 220
    new-instance v0, Lcom/android/browser/SnapshotTab;

    iget-object v1, p0, Lcom/android/browser/TabControl;->mController:Lcom/android/browser/Controller;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/browser/SnapshotTab;-><init>(Lcom/android/browser/WebViewController;J)V

    .line 221
    .local v0, t:Lcom/android/browser/SnapshotTab;
    iget-object v1, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    return-object v0
.end method

.method destroy()V
    .registers 4

    .prologue
    .line 274
    iget-object v2, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/Tab;

    .line 275
    .local v1, t:Lcom/android/browser/Tab;
    invoke-virtual {v1}, Lcom/android/browser/Tab;->destroy()V

    goto :goto_6

    .line 277
    .end local v1           #t:Lcom/android/browser/Tab;
    :cond_16
    iget-object v2, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 278
    iget-object v2, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 279
    return-void
.end method

.method findTabWithUrl(Ljava/lang/String;)Lcom/android/browser/Tab;
    .registers 7
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 589
    if-nez p1, :cond_5

    move-object v0, v3

    .line 603
    :cond_4
    :goto_4
    return-object v0

    .line 593
    :cond_5
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 594
    .local v0, currentTab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_11

    invoke-direct {p0, v0, p1}, Lcom/android/browser/TabControl;->tabMatchesUrl(Lcom/android/browser/Tab;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 598
    :cond_11
    iget-object v4, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/Tab;

    .line 599
    .local v2, tab:Lcom/android/browser/Tab;
    invoke-direct {p0, v2, p1}, Lcom/android/browser/TabControl;->tabMatchesUrl(Lcom/android/browser/Tab;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    move-object v0, v2

    .line 600
    goto :goto_4

    .end local v2           #tab:Lcom/android/browser/Tab;
    :cond_2b
    move-object v0, v3

    .line 603
    goto :goto_4
.end method

.method freeMemory()V
    .registers 8

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v4

    if-nez v4, :cond_7

    .line 479
    :cond_6
    :goto_6
    return-void

    .line 461
    :cond_7
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/browser/TabControl;->getHalfLeastUsedTabs(Lcom/android/browser/Tab;)Ljava/util/Vector;

    move-result-object v2

    .line 462
    .local v2, tabs:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/android/browser/Tab;>;"
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_4e

    .line 463
    const-string v4, "TabControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Free "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " tabs in the browser"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/Tab;

    .line 466
    .local v1, t:Lcom/android/browser/Tab;
    invoke-virtual {v1}, Lcom/android/browser/Tab;->saveState()Landroid/os/Bundle;

    .line 468
    invoke-virtual {v1}, Lcom/android/browser/Tab;->destroy()V

    goto :goto_3b

    .line 474
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #t:Lcom/android/browser/Tab;
    :cond_4e
    const-string v4, "TabControl"

    const-string v5, "Free WebView\'s unused memory and cache"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v3

    .line 476
    .local v3, view:Landroid/webkit/WebView;
    if-eqz v3, :cond_6

    .line 477
    invoke-virtual {v3}, Landroid/webkit/WebView;->freeMemory()V

    goto :goto_6
.end method

.method getCurrentPosition()I
    .registers 2

    .prologue
    .line 139
    iget v0, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    return v0
.end method

.method getCurrentSubWindow()Landroid/webkit/WebView;
    .registers 3

    .prologue
    .line 100
    iget v1, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    invoke-virtual {p0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    .line 101
    .local v0, t:Lcom/android/browser/Tab;
    if-nez v0, :cond_a

    .line 102
    const/4 v1, 0x0

    .line 104
    :goto_9
    return-object v1

    :cond_a
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v1

    goto :goto_9
.end method

.method getCurrentTab()Lcom/android/browser/Tab;
    .registers 2

    .prologue
    .line 131
    iget v0, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    invoke-virtual {p0, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method getCurrentTopWebView()Landroid/webkit/WebView;
    .registers 3

    .prologue
    .line 88
    iget v1, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    invoke-virtual {p0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    .line 89
    .local v0, t:Lcom/android/browser/Tab;
    if-nez v0, :cond_a

    .line 90
    const/4 v1, 0x0

    .line 92
    :goto_9
    return-object v1

    :cond_a
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    goto :goto_9
.end method

.method getCurrentWebView()Landroid/webkit/WebView;
    .registers 3

    .prologue
    .line 75
    iget v1, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    invoke-virtual {p0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    .line 76
    .local v0, t:Lcom/android/browser/Tab;
    if-nez v0, :cond_a

    .line 77
    const/4 v1, 0x0

    .line 79
    :goto_9
    return-object v1

    :cond_a
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    goto :goto_9
.end method

.method getLeastUsedTab(Lcom/android/browser/Tab;)Lcom/android/browser/Tab;
    .registers 7
    .parameter "current"

    .prologue
    const/4 v2, 0x0

    .line 516
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_a

    if-nez p1, :cond_c

    :cond_a
    move-object v1, v2

    .line 531
    :goto_b
    return-object v1

    .line 519
    :cond_c
    iget-object v3, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_16

    move-object v1, v2

    .line 520
    goto :goto_b

    .line 524
    :cond_16
    iget-object v3, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/Tab;

    .line 525
    .local v1, t:Lcom/android/browser/Tab;
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 526
    if-eq v1, p1, :cond_1c

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getParent()Lcom/android/browser/Tab;

    move-result-object v3

    if-eq v1, v3, :cond_1c

    goto :goto_b

    .end local v1           #t:Lcom/android/browser/Tab;
    :cond_39
    move-object v1, v2

    .line 531
    goto :goto_b
.end method

.method public getOnThumbnailUpdatedListener()Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;
    .registers 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/browser/TabControl;->mOnThumbnailUpdatedListener:Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;

    return-object v0
.end method

.method getTab(I)Lcom/android/browser/Tab;
    .registers 3
    .parameter "position"

    .prologue
    .line 120
    if-ltz p1, :cond_13

    iget-object v0, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_13

    .line 121
    iget-object v0, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/Tab;

    .line 123
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method getTabCount()I
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getTabFromAppId(Ljava/lang/String;)Lcom/android/browser/Tab;
    .registers 6
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 552
    if-nez p1, :cond_5

    move-object v1, v2

    .line 560
    :goto_4
    return-object v1

    .line 555
    :cond_5
    iget-object v3, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/Tab;

    .line 556
    .local v1, t:Lcom/android/browser/Tab;
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_4

    .end local v1           #t:Lcom/android/browser/Tab;
    :cond_22
    move-object v1, v2

    .line 560
    goto :goto_4
.end method

.method getTabFromView(Landroid/webkit/WebView;)Lcom/android/browser/Tab;
    .registers 5
    .parameter "view"

    .prologue
    .line 539
    iget-object v2, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/Tab;

    .line 540
    .local v1, t:Lcom/android/browser/Tab;
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v2

    if-eq v2, p1, :cond_1e

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    if-ne v2, p1, :cond_6

    .line 544
    .end local v1           #t:Lcom/android/browser/Tab;
    :cond_1e
    :goto_1e
    return-object v1

    :cond_1f
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method getTabPosition(Lcom/android/browser/Tab;)I
    .registers 3
    .parameter "tab"

    .prologue
    .line 148
    if-nez p1, :cond_4

    .line 149
    const/4 v0, -0x1

    .line 151
    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_3
.end method

.method getTabs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/Tab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method hasAnyOpenIncognitoTabs()Z
    .registers 4

    .prologue
    .line 163
    iget-object v2, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/Tab;

    .line 164
    .local v1, tab:Lcom/android/browser/Tab;
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 166
    const/4 v2, 0x1

    .line 169
    .end local v1           #tab:Lcom/android/browser/Tab;
    :goto_23
    return v2

    :cond_24
    const/4 v2, 0x0

    goto :goto_23
.end method

.method recreateWebView(Lcom/android/browser/Tab;)V
    .registers 4
    .parameter "t"

    .prologue
    .line 610
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 611
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_9

    .line 612
    invoke-virtual {p1}, Lcom/android/browser/Tab;->destroy()V

    .line 616
    :cond_9
    invoke-direct {p0}, Lcom/android/browser/TabControl;->createNewWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/browser/Tab;->setWebView(Landroid/webkit/WebView;)V

    .line 617
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    if-ne v1, p1, :cond_1a

    .line 618
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;Z)Z

    .line 620
    :cond_1a
    return-void
.end method

.method removeParentChildRelationShips()V
    .registers 4

    .prologue
    .line 229
    iget-object v2, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/Tab;

    .line 230
    .local v1, tab:Lcom/android/browser/Tab;
    invoke-virtual {v1}, Lcom/android/browser/Tab;->removeFromTree()V

    goto :goto_6

    .line 232
    .end local v1           #tab:Lcom/android/browser/Tab;
    :cond_16
    return-void
.end method

.method removeTab(Lcom/android/browser/Tab;)Z
    .registers 4
    .parameter "t"

    .prologue
    .line 240
    if-nez p1, :cond_4

    .line 241
    const/4 v1, 0x0

    .line 267
    :goto_3
    return v1

    .line 245
    :cond_4
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 248
    .local v0, current:Lcom/android/browser/Tab;
    iget-object v1, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 251
    if-ne v0, p1, :cond_22

    .line 252
    invoke-virtual {p1}, Lcom/android/browser/Tab;->putInBackground()V

    .line 253
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    .line 261
    :goto_15
    invoke-virtual {p1}, Lcom/android/browser/Tab;->destroy()V

    .line 263
    invoke-virtual {p1}, Lcom/android/browser/Tab;->removeFromTree()V

    .line 266
    iget-object v1, p0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 267
    const/4 v1, 0x1

    goto :goto_3

    .line 257
    :cond_22
    invoke-virtual {p0, v0}, Lcom/android/browser/TabControl;->getTabPosition(Lcom/android/browser/Tab;)I

    move-result v1

    iput v1, p0, Lcom/android/browser/TabControl;->mCurrentTab:I

    goto :goto_15
.end method

.method restoreState(Landroid/os/Bundle;JZZ)V
    .registers 29
    .parameter "inState"
    .parameter "currentId"
    .parameter "restoreIncognitoTabs"
    .parameter "restoreAll"

    .prologue
    .line 386
    const-wide/16 v20, -0x1

    cmp-long v20, p2, v20

    if-nez v20, :cond_7

    .line 451
    :cond_6
    return-void

    .line 389
    :cond_7
    const-string v20, "positions"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v9

    .line 390
    .local v9, ids:[J
    const-wide v11, -0x7fffffffffffffffL

    .line 391
    .local v11, maxId:J
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 392
    .local v19, tabMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/browser/Tab;>;"
    move-object v3, v9

    .local v3, arr$:[J
    array-length v10, v3

    .local v10, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1e
    if-ge v5, v10, :cond_b4

    aget-wide v6, v3, v5

    .line 393
    .local v6, id:J
    cmp-long v20, v6, v11

    if-lez v20, :cond_27

    .line 394
    move-wide v11, v6

    .line 396
    :cond_27
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 397
    .local v8, idkey:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v16

    .line 398
    .local v16, state:Landroid/os/Bundle;
    if-eqz v16, :cond_39

    invoke-virtual/range {v16 .. v16}, Landroid/os/Bundle;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_3c

    .line 392
    :cond_39
    :goto_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 401
    :cond_3c
    if-nez p4, :cond_4a

    const-string v20, "privateBrowsingEnabled"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_39

    .line 404
    :cond_4a
    cmp-long v20, v6, p2

    if-eqz v20, :cond_50

    if-eqz p5, :cond_77

    .line 405
    :cond_50
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/TabControl;->createNewTab(Landroid/os/Bundle;Z)Lcom/android/browser/Tab;

    move-result-object v17

    .line 406
    .local v17, t:Lcom/android/browser/Tab;
    if-eqz v17, :cond_39

    .line 411
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    cmp-long v20, v6, p2

    if-nez v20, :cond_39

    .line 415
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    goto :goto_39

    .line 420
    .end local v17           #t:Lcom/android/browser/Tab;
    :cond_77
    new-instance v17, Lcom/android/browser/Tab;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/TabControl;->mController:Lcom/android/browser/Controller;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/browser/Tab;-><init>(Lcom/android/browser/WebViewController;Landroid/os/Bundle;)V

    .line 421
    .restart local v17       #t:Lcom/android/browser/Tab;
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/TabControl;->mTabQueue:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_39

    .line 430
    .end local v6           #id:J
    .end local v8           #idkey:Ljava/lang/String;
    .end local v16           #state:Landroid/os/Bundle;
    .end local v17           #t:Lcom/android/browser/Tab;
    :cond_b4
    const-wide/16 v20, 0x1

    add-long v20, v20, v11

    sput-wide v20, Lcom/android/browser/TabControl;->sNextId:J

    .line 432
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/TabControl;->mCurrentTab:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_df

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v20

    if-lez v20, :cond_df

    .line 434
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 438
    :cond_df
    move-object v3, v9

    array-length v10, v3

    const/4 v5, 0x0

    :goto_e2
    if-ge v5, v10, :cond_6

    aget-wide v6, v3, v5

    .line 439
    .restart local v6       #id:J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/browser/Tab;

    .line 440
    .local v18, tab:Lcom/android/browser/Tab;
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 441
    .local v4, b:Landroid/os/Bundle;
    if-eqz v4, :cond_123

    if-eqz v18, :cond_123

    .line 442
    const-string v20, "parentTab"

    const-wide/16 v21, -0x1

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 443
    .local v14, parentId:J
    const-wide/16 v20, -0x1

    cmp-long v20, v14, v20

    if-eqz v20, :cond_123

    .line 444
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/browser/Tab;

    .line 445
    .local v13, parent:Lcom/android/browser/Tab;
    if-eqz v13, :cond_123

    .line 446
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/android/browser/Tab;->addChildTab(Lcom/android/browser/Tab;)V

    .line 438
    .end local v13           #parent:Lcom/android/browser/Tab;
    .end local v14           #parentId:J
    :cond_123
    add-int/lit8 v5, v5, 0x1

    goto :goto_e2
.end method

.method saveState(Landroid/os/Bundle;)V
    .registers 16
    .parameter "outState"

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v9

    .line 299
    .local v9, numTabs:I
    if-nez v9, :cond_7

    .line 333
    :cond_6
    :goto_6
    return-void

    .line 302
    :cond_7
    new-array v7, v9, [J

    .line 303
    .local v7, ids:[J
    const/4 v4, 0x0

    .line 304
    .local v4, i:I
    iget-object v12, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/browser/Tab;

    .line 305
    .local v10, tab:Lcom/android/browser/Tab;
    invoke-virtual {v10}, Lcom/android/browser/Tab;->saveState()Landroid/os/Bundle;

    move-result-object v11

    .line 306
    .local v11, tabState:Landroid/os/Bundle;
    if-eqz v11, :cond_61

    .line 307
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .local v5, i:I
    invoke-virtual {v10}, Lcom/android/browser/Tab;->getId()J

    move-result-wide v12

    aput-wide v12, v7, v4

    .line 308
    invoke-virtual {v10}, Lcom/android/browser/Tab;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 309
    .local v8, key:Ljava/lang/String;
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5c

    .line 311
    iget-object v12, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_54

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/browser/Tab;

    .line 312
    .local v3, dt:Lcom/android/browser/Tab;
    const-string v12, "TabControl"

    invoke-virtual {v3}, Lcom/android/browser/Tab;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 314
    .end local v3           #dt:Lcom/android/browser/Tab;
    :cond_54
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "Error saving state, duplicate tab ids!"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 317
    :cond_5c
    invoke-virtual {p1, v8, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move v4, v5

    .line 318
    .end local v5           #i:I
    .restart local v4       #i:I
    goto :goto_10

    .line 319
    .end local v8           #key:Ljava/lang/String;
    :cond_61
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    const-wide/16 v12, -0x1

    aput-wide v12, v7, v4

    .line 321
    invoke-virtual {v10}, Lcom/android/browser/Tab;->deleteThumbnail()V

    move v4, v5

    .end local v5           #i:I
    .restart local v4       #i:I
    goto :goto_10

    .line 324
    .end local v10           #tab:Lcom/android/browser/Tab;
    .end local v11           #tabState:Landroid/os/Bundle;
    :cond_6c
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    .line 325
    const-string v12, "positions"

    invoke-virtual {p1, v12, v7}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 326
    invoke-virtual {p0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v2

    .line 327
    .local v2, current:Lcom/android/browser/Tab;
    const-wide/16 v0, -0x1

    .line 328
    .local v0, cid:J
    if-eqz v2, :cond_83

    .line 329
    invoke-virtual {v2}, Lcom/android/browser/Tab;->getId()J

    move-result-wide v0

    .line 331
    :cond_83
    const-string v12, "current"

    invoke-virtual {p1, v12, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_6
.end method

.method setCurrentTab(Lcom/android/browser/Tab;)Z
    .registers 3
    .parameter "newTab"

    .prologue
    .line 644
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;Z)Z

    move-result v0

    return v0
.end method

.method public setOnThumbnailUpdatedListener(Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;)V
    .registers 6
    .parameter "listener"

    .prologue
    .line 684
    iput-object p1, p0, Lcom/android/browser/TabControl;->mOnThumbnailUpdatedListener:Lcom/android/browser/TabControl$OnThumbnailUpdatedListener;

    .line 685
    iget-object v3, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/Tab;

    .line 686
    .local v1, t:Lcom/android/browser/Tab;
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 687
    .local v2, web:Landroid/webkit/WebView;
    if-eqz v2, :cond_8

    .line 688
    if-eqz p1, :cond_20

    .end local v1           #t:Lcom/android/browser/Tab;
    :goto_1c
    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    goto :goto_8

    .restart local v1       #t:Lcom/android/browser/Tab;
    :cond_20
    const/4 v1, 0x0

    goto :goto_1c

    .line 691
    .end local v1           #t:Lcom/android/browser/Tab;
    .end local v2           #web:Landroid/webkit/WebView;
    :cond_22
    return-void
.end method

.method stopAllLoading()V
    .registers 6

    .prologue
    .line 567
    iget-object v4, p0, Lcom/android/browser/TabControl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/Tab;

    .line 568
    .local v2, t:Lcom/android/browser/Tab;
    invoke-virtual {v2}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    .line 569
    .local v3, webview:Landroid/webkit/WebView;
    if-eqz v3, :cond_1b

    .line 570
    invoke-virtual {v3}, Landroid/webkit/WebView;->stopLoading()V

    .line 572
    :cond_1b
    invoke-virtual {v2}, Lcom/android/browser/Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 573
    .local v1, subview:Landroid/webkit/WebView;
    if-eqz v1, :cond_6

    .line 574
    invoke-virtual {v3}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_6

    .line 577
    .end local v1           #subview:Landroid/webkit/WebView;
    .end local v2           #t:Lcom/android/browser/Tab;
    .end local v3           #webview:Landroid/webkit/WebView;
    :cond_25
    return-void
.end method
