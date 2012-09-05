.class public Lcom/android/browser/OfflineComboViewActivity;
.super Landroid/app/Activity;
.source "OfflineComboViewActivity.java"

# interfaces
.implements Lcom/android/browser/CombinedBookmarksCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/OfflineComboViewActivity$5;,
        Lcom/android/browser/OfflineComboViewActivity$TabsAdapter;
    }
.end annotation


# static fields
.field static LOGTAG_S:Ljava/lang/String;

.field public static mDoNotExitBrowserOnClose:Z

.field public static mOfflinePageShowing:Z

.field public static mShowOfflineWhenResume:Z

.field public static mStartupHomepageSkipped:Z

.field public static mStartupOfflineCheckStarted:Z


# instance fields
.field LOGTAG:Ljava/lang/String;

.field private mTabsAdapter:Lcom/android/browser/OfflineComboViewActivity$TabsAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 58
    const-string v0, "OfflineActivity_S"

    sput-object v0, Lcom/android/browser/OfflineComboViewActivity;->LOGTAG_S:Ljava/lang/String;

    .line 71
    sput-boolean v1, Lcom/android/browser/OfflineComboViewActivity;->mShowOfflineWhenResume:Z

    .line 72
    sput-boolean v1, Lcom/android/browser/OfflineComboViewActivity;->mStartupOfflineCheckStarted:Z

    .line 73
    sput-boolean v1, Lcom/android/browser/OfflineComboViewActivity;->mStartupHomepageSkipped:Z

    .line 74
    sput-boolean v1, Lcom/android/browser/OfflineComboViewActivity;->mOfflinePageShowing:Z

    .line 75
    sput-boolean v1, Lcom/android/browser/OfflineComboViewActivity;->mDoNotExitBrowserOnClose:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const-string v0, "OfflineActivity"

    iput-object v0, p0, Lcom/android/browser/OfflineComboViewActivity;->LOGTAG:Ljava/lang/String;

    .line 422
    return-void
.end method

.method public static checkOfflineCombinedPageCondition(Lcom/android/browser/Controller;Landroid/content/Intent;)V
    .registers 4
    .parameter "mController"
    .parameter "intent"

    .prologue
    .line 129
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/browser/OfflineComboViewActivity;->mStartupOfflineCheckStarted:Z

    .line 130
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/browser/OfflineComboViewActivity;->mStartupHomepageSkipped:Z

    .line 132
    sget-object v0, Lcom/android/browser/OfflineComboViewActivity;->LOGTAG_S:Ljava/lang/String;

    const-string v1, "checkOfflineCombinedPageCondition()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method

.method public static handleGoBackOnePageOrQuit(Lcom/android/browser/Controller;Lcom/android/browser/TabControl;)V
    .registers 8
    .parameter "mController"
    .parameter "mTabControl"

    .prologue
    const/4 v5, 0x1

    .line 180
    sget-object v2, Lcom/android/browser/OfflineComboViewActivity;->LOGTAG_S:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkOfflineCombinedPageCondition() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/browser/OfflineComboViewActivity;->mStartupOfflineCheckStarted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " skipped "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/browser/OfflineComboViewActivity;->mStartupHomepageSkipped:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 183
    .local v0, current:Lcom/android/browser/Tab;
    if-nez v0, :cond_37

    .line 185
    sget-object v2, Lcom/android/browser/OfflineComboViewActivity;->LOGTAG_S:Ljava/lang/String;

    const-string v3, "goBackOnePageOrQuit : current tab is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sput-boolean v5, Lcom/android/browser/OfflineComboViewActivity;->mShowOfflineWhenResume:Z

    .line 210
    :cond_36
    :goto_36
    return-void

    .line 190
    :cond_37
    invoke-virtual {v0}, Lcom/android/browser/Tab;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 193
    sget-object v2, Lcom/android/browser/OfflineComboViewActivity;->LOGTAG_S:Ljava/lang/String;

    const-string v3, "go back once"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 197
    :cond_45
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getParent()Lcom/android/browser/Tab;

    move-result-object v1

    .line 199
    .local v1, parent:Lcom/android/browser/Tab;
    sget-object v2, Lcom/android/browser/OfflineComboViewActivity;->LOGTAG_S:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "goBackOnePageOrQuit : parent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    if-nez v1, :cond_36

    .line 203
    sget-object v2, Lcom/android/browser/OfflineComboViewActivity;->LOGTAG_S:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "goBackOnePageOrQuit : tab count is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p1}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_36

    .line 205
    sput-boolean v5, Lcom/android/browser/OfflineComboViewActivity;->mShowOfflineWhenResume:Z

    goto :goto_36
.end method

.method public static loadOfflineCombinedPage(Lcom/android/browser/Controller;)V
    .registers 5
    .parameter

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/browser/Controller;->isInCustomActionMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 110
    invoke-virtual {p0}, Lcom/android/browser/Controller;->endActionMode()V

    .line 113
    :cond_9
    sget-object v0, Lcom/android/browser/OfflineComboViewActivity;->LOGTAG_S:Ljava/lang/String;

    const-string v1, "HIT OFFLINE PAGE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    const-string v1, "disable_new_window"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 117
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/browser/Controller;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/browser/OfflineComboViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    const-string v2, "initial_view"

    sget-object v3, Lcom/android/browser/UI$ComboViews;->Bookmarks:Lcom/android/browser/UI$ComboViews;

    invoke-virtual {v3}, Lcom/android/browser/UI$ComboViews;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v2, "combo_args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 120
    const-string v0, "url"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 122
    return-void
.end method

.method public static loadOfflineCombinedPageIfNeeded(Lcom/android/browser/Controller;Landroid/content/Intent;)Z
    .registers 10
    .parameter "mController"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 79
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    .line 82
    .local v1, flags:I
    sget-object v4, Lcom/android/browser/OfflineComboViewActivity;->LOGTAG_S:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget-object v4, Lcom/android/browser/OfflineComboViewActivity;->LOGTAG_S:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " flags = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_62

    .line 85
    sget-object v4, Lcom/android/browser/OfflineComboViewActivity;->LOGTAG_S:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " category = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    const-string v7, "android.intent.category.LAUNCHER"

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_62
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_95

    const/high16 v4, 0x1000

    and-int/2addr v4, v1

    if-eqz v4, :cond_95

    const/high16 v4, 0x20

    and-int/2addr v4, v1

    if-eqz v4, :cond_95

    const/high16 v4, 0x40

    and-int/2addr v4, v1

    if-eqz v4, :cond_95

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_95

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    const-string v5, "android.intent.category.LAUNCHER"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_95

    sget-boolean v4, Lcom/android/browser/OfflineComboViewActivity;->mShowOfflineWhenResume:Z

    if-ne v4, v2, :cond_95

    .line 95
    sput-boolean v3, Lcom/android/browser/OfflineComboViewActivity;->mShowOfflineWhenResume:Z

    .line 96
    invoke-static {p0}, Lcom/android/browser/OfflineComboViewActivity;->loadOfflineCombinedPage(Lcom/android/browser/Controller;)V

    .line 100
    :goto_94
    return v2

    :cond_95
    move v2, v3

    goto :goto_94
.end method

.method public static loadOfflineCombinedPageOnStartup(Lcom/android/browser/Controller;Landroid/content/Intent;)V
    .registers 9
    .parameter "mController"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 156
    sget-object v2, Lcom/android/browser/OfflineComboViewActivity;->LOGTAG_S:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkOfflineCombinedPageCondition() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/browser/OfflineComboViewActivity;->mStartupOfflineCheckStarted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " skipped "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/browser/OfflineComboViewActivity;->mStartupHomepageSkipped:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    .line 161
    .local v1, flags:I
    sget-boolean v2, Lcom/android/browser/OfflineComboViewActivity;->mStartupOfflineCheckStarted:Z

    if-ne v2, v5, :cond_3b

    sget-boolean v2, Lcom/android/browser/OfflineComboViewActivity;->mStartupHomepageSkipped:Z

    if-ne v2, v5, :cond_3b

    .line 162
    invoke-static {p0}, Lcom/android/browser/OfflineComboViewActivity;->loadOfflineCombinedPage(Lcom/android/browser/Controller;)V

    .line 165
    :cond_3b
    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const/high16 v2, 0x1000

    and-int/2addr v2, v1

    if-eqz v2, :cond_4a

    .line 168
    sput-boolean v5, Lcom/android/browser/OfflineComboViewActivity;->mDoNotExitBrowserOnClose:Z

    .line 171
    :cond_4a
    sput-boolean v6, Lcom/android/browser/OfflineComboViewActivity;->mStartupOfflineCheckStarted:Z

    .line 172
    sput-boolean v6, Lcom/android/browser/OfflineComboViewActivity;->mStartupHomepageSkipped:Z

    .line 173
    return-void
.end method

.method public static openTabToHomePage(Lcom/android/browser/Controller;)Lcom/android/browser/Tab;
    .registers 6
    .parameter "mController"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 141
    sget-object v0, Lcom/android/browser/OfflineComboViewActivity;->LOGTAG_S:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openTabToHomePage() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/browser/OfflineComboViewActivity;->mStartupOfflineCheckStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget-boolean v0, Lcom/android/browser/OfflineComboViewActivity;->mStartupOfflineCheckStarted:Z

    if-ne v0, v4, :cond_28

    .line 144
    sput-boolean v4, Lcom/android/browser/OfflineComboViewActivity;->mStartupHomepageSkipped:Z

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3, v4, v3}, Lcom/android/browser/Controller;->openTab(Ljava/lang/String;ZZZ)Lcom/android/browser/Tab;

    move-result-object v0

    .line 148
    :goto_27
    return-object v0

    :cond_28
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v3}, Lcom/android/browser/Controller;->openTab(Ljava/lang/String;ZZZ)Lcom/android/browser/Tab;

    move-result-object v0

    goto :goto_27
.end method


# virtual methods
.method public onBackPressed()V
    .registers 3

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/browser/OfflineComboViewActivity;->LOGTAG:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/OfflineComboViewActivity;->setResult(I)V

    .line 351
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 352
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, -0x1

    const/4 v7, 0x0

    .line 214
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 216
    sput-boolean v8, Lcom/android/browser/OfflineComboViewActivity;->mOfflinePageShowing:Z

    .line 217
    sput-boolean v7, Lcom/android/browser/OfflineComboViewActivity;->mDoNotExitBrowserOnClose:Z

    .line 218
    invoke-virtual {p0}, Lcom/android/browser/OfflineComboViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 219
    const-string v1, "combo_args"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 220
    const-string v1, "initial_view"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_100

    invoke-static {v0}, Lcom/android/browser/UI$ComboViews;->valueOf(Ljava/lang/String;)Lcom/android/browser/UI$ComboViews;

    move-result-object v0

    move-object v1, v0

    .line 225
    :goto_27
    iget-object v0, p0, Lcom/android/browser/OfflineComboViewActivity;->LOGTAG:Ljava/lang/String;

    const-string v3, "OfflineCombined onCreate 3"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const v0, 0x7f040043

    invoke-virtual {p0, v0}, Lcom/android/browser/OfflineComboViewActivity;->setContentView(I)V

    .line 229
    const v0, 0x7f0d00c6

    invoke-virtual {p0, v0}, Lcom/android/browser/OfflineComboViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/browser/OfflineComboViewActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 231
    invoke-virtual {p0}, Lcom/android/browser/OfflineComboViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    .line 232
    invoke-virtual {v3, v9}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 233
    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 234
    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 240
    :goto_50
    invoke-virtual {p0}, Lcom/android/browser/OfflineComboViewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 241
    const v4, 0x7f040044

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 242
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 243
    invoke-virtual {v3}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 245
    new-instance v0, Lcom/android/browser/OfflineComboViewActivity$TabsAdapter;

    iget-object v5, p0, Lcom/android/browser/OfflineComboViewActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p0, v5}, Lcom/android/browser/OfflineComboViewActivity$TabsAdapter;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Lcom/android/browser/OfflineComboViewActivity;->mTabsAdapter:Lcom/android/browser/OfflineComboViewActivity$TabsAdapter;

    .line 246
    iget-object v0, p0, Lcom/android/browser/OfflineComboViewActivity;->mTabsAdapter:Lcom/android/browser/OfflineComboViewActivity$TabsAdapter;

    invoke-virtual {v3}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v5

    const v6, 0x7f0c0006

    invoke-virtual {v5, v6}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v5

    const-class v6, Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v0, v5, v6, v2}, Lcom/android/browser/OfflineComboViewActivity$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 248
    iget-object v0, p0, Lcom/android/browser/OfflineComboViewActivity;->mTabsAdapter:Lcom/android/browser/OfflineComboViewActivity$TabsAdapter;

    invoke-virtual {v3}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v5

    const v6, 0x7f0c0008

    invoke-virtual {v5, v6}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v5

    const-class v6, Lcom/android/browser/BrowserHistoryPage;

    invoke-virtual {v0, v5, v6, v2}, Lcom/android/browser/OfflineComboViewActivity$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 250
    iget-object v0, p0, Lcom/android/browser/OfflineComboViewActivity;->mTabsAdapter:Lcom/android/browser/OfflineComboViewActivity$TabsAdapter;

    invoke-virtual {v3}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v5

    const v6, 0x7f0c0009

    invoke-virtual {v5, v6}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v5

    const-class v6, Lcom/android/browser/BrowserSnapshotPage;

    invoke-virtual {v0, v5, v6, v2}, Lcom/android/browser/OfflineComboViewActivity$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 253
    sget-object v0, Lcom/android/browser/OfflineComboViewActivity$5;->$SwitchMap$com$android$browser$UI$ComboViews:[I

    invoke-virtual {v1}, Lcom/android/browser/UI$ComboViews;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_12c

    .line 266
    :goto_ba
    const v0, 0x7f0d0066

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 267
    if-eqz v0, :cond_11c

    .line 269
    new-instance v1, Lcom/android/browser/OfflineComboViewActivity$1;

    invoke-direct {v1, p0, v3}, Lcom/android/browser/OfflineComboViewActivity$1;-><init>(Lcom/android/browser/OfflineComboViewActivity;Landroid/app/ActionBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v0, p0, Lcom/android/browser/OfflineComboViewActivity;->LOGTAG:Ljava/lang/String;

    const-string v1, "add a new title bar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :goto_d4
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/android/browser/OfflineComboViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 296
    new-instance v1, Lcom/android/browser/OfflineComboViewActivity$2;

    invoke-direct {v1, p0, v3}, Lcom/android/browser/OfflineComboViewActivity$2;-><init>(Lcom/android/browser/OfflineComboViewActivity;Landroid/app/ActionBar;)V

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->setOnCancelListener(Landroid/app/SearchManager$OnCancelListener;)V

    .line 302
    new-instance v1, Lcom/android/browser/OfflineComboViewActivity$3;

    invoke-direct {v1, p0, v3}, Lcom/android/browser/OfflineComboViewActivity$3;-><init>(Lcom/android/browser/OfflineComboViewActivity;Landroid/app/ActionBar;)V

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V

    .line 310
    const v0, 0x7f0d00c8

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 311
    if-eqz v0, :cond_124

    .line 313
    new-instance v1, Lcom/android/browser/OfflineComboViewActivity$4;

    invoke-direct {v1, p0}, Lcom/android/browser/OfflineComboViewActivity$4;-><init>(Lcom/android/browser/OfflineComboViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    :goto_ff
    return-void

    .line 221
    :cond_100
    sget-object v0, Lcom/android/browser/UI$ComboViews;->Bookmarks:Lcom/android/browser/UI$ComboViews;

    move-object v1, v0

    goto/16 :goto_27

    .line 237
    :cond_105
    invoke-virtual {v3, v7}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    goto/16 :goto_50

    .line 255
    :pswitch_10a
    iget-object v0, p0, Lcom/android/browser/OfflineComboViewActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v7}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_ba

    .line 258
    :pswitch_110
    iget-object v0, p0, Lcom/android/browser/OfflineComboViewActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_ba

    .line 261
    :pswitch_116
    iget-object v0, p0, Lcom/android/browser/OfflineComboViewActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v9}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_ba

    .line 292
    :cond_11c
    iget-object v0, p0, Lcom/android/browser/OfflineComboViewActivity;->LOGTAG:Ljava/lang/String;

    const-string v1, "view is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4

    .line 321
    :cond_124
    iget-object v0, p0, Lcom/android/browser/OfflineComboViewActivity;->LOGTAG:Ljava/lang/String;

    const-string v1, "view is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ff

    .line 253
    :pswitch_data_12c
    .packed-switch 0x1
        :pswitch_10a
        :pswitch_110
        :pswitch_116
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/android/browser/OfflineComboViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 382
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 398
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_e

    .line 399
    invoke-virtual {p0}, Lcom/android/browser/OfflineComboViewActivity;->finish()V

    .line 408
    :goto_d
    return v0

    .line 401
    :cond_e
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0d0121

    if-ne v1, v2, :cond_32

    .line 402
    invoke-virtual {p0}, Lcom/android/browser/OfflineComboViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 403
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/browser/BrowserPreferencesPage;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 404
    const-string v3, "currentPage"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    const/4 v1, 0x3

    invoke-virtual {p0, v2, v1}, Lcom/android/browser/OfflineComboViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_d

    .line 408
    :cond_32
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_d
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    .line 387
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 389
    .local v1, ret:Z
    const v2, 0x7f0d00fe

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 390
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_13

    const v2, 0x7f0c010b

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 392
    :cond_13
    return v1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 328
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 329
    const-string v0, "tab"

    invoke-virtual {p0}, Lcom/android/browser/OfflineComboViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 331
    return-void
.end method

.method public varargs openInNewTab([Ljava/lang/String;)V
    .registers 4
    .parameter "urls"

    .prologue
    .line 342
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 343
    .local v0, i:Landroid/content/Intent;
    const-string v1, "open_all"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/browser/OfflineComboViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 345
    invoke-virtual {p0}, Lcom/android/browser/OfflineComboViewActivity;->finish()V

    .line 346
    return-void
.end method

.method public openSnapshot(J)V
    .registers 5
    .parameter "id"

    .prologue
    .line 362
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 363
    .local v0, i:Landroid/content/Intent;
    const-string v1, "snapshot_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 364
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/browser/OfflineComboViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 365
    invoke-virtual {p0}, Lcom/android/browser/OfflineComboViewActivity;->finish()V

    .line 366
    return-void
.end method

.method public openUrl(Ljava/lang/String;)V
    .registers 5
    .parameter "url"

    .prologue
    .line 335
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 336
    .local v0, i:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/browser/OfflineComboViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/browser/OfflineComboViewActivity;->finish()V

    .line 338
    return-void
.end method
