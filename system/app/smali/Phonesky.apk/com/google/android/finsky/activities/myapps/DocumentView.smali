.class public Lcom/google/android/finsky/activities/myapps/DocumentView;
.super Landroid/widget/LinearLayout;
.source "DocumentView.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/myapps/DocumentView$WatchedInstallerListener;,
        Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;
    }
.end annotation


# instance fields
.field private final mAppStates:Lcom/google/android/finsky/appstate/AppStates;

.field private final mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mDetails:Lcom/google/android/finsky/api/model/DfeDetails;

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mDocId:Ljava/lang/String;

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private mFragment:Landroid/support/v4/app/Fragment;

.field private mHandler:Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;

.field private mHasSubscriptions:Z

.field private final mInstaller:Lcom/google/android/finsky/receivers/Installer;

.field private mInstallerListener:Lcom/google/android/finsky/installer/InstallerListener;

.field private mIsSystemPackage:Z

.field private final mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private final mRebindRunnable:Ljava/lang/Runnable;

.field private final mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    new-instance v0, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    invoke-direct {v0}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstallerListener:Lcom/google/android/finsky/installer/InstallerListener;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mUiHandler:Landroid/os/Handler;

    .line 80
    new-instance v0, Lcom/google/android/finsky/activities/myapps/DocumentView$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/myapps/DocumentView$1;-><init>(Lcom/google/android/finsky/activities/myapps/DocumentView;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mRebindRunnable:Ljava/lang/Runnable;

    .line 103
    const v0, 0x7f040061

    invoke-static {p1, v0, p0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 105
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    .line 106
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    .line 107
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    .line 108
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 109
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 111
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/library/Libraries;)V

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/myapps/DocumentView;Landroid/os/Bundle;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/myapps/DocumentView;->bind(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/myapps/DocumentView;)Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mHandler:Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/activities/myapps/DocumentView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mIsSystemPackage:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/activities/myapps/DocumentView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mHasSubscriptions:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/myapps/DocumentView;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mRebindRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/activities/myapps/DocumentView;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bind(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->resetViewState()V

    .line 158
    new-instance v0, Lcom/google/android/finsky/activities/AppActionAnalyzer;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/AppActionAnalyzer;-><init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/Libraries;)V

    .line 159
    .local v0, actions:Lcom/google/android/finsky/activities/AppActionAnalyzer;
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->showButtons(Lcom/google/android/finsky/activities/AppActionAnalyzer;)V

    .line 160
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/google/android/finsky/activities/myapps/DocumentView;->bindPermissions(Landroid/support/v4/app/FragmentManager;Landroid/os/Bundle;)V

    .line 161
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/myapps/DocumentView;->bindSubscriptions(Landroid/os/Bundle;)V

    .line 162
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->bindAvailabilityRestrictions()V

    .line 163
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/activities/myapps/DocumentView;->bindAutoUpdate(Landroid/support/v4/app/Fragment;)V

    .line 164
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->bindButtons(Lcom/google/android/finsky/activities/AppActionAnalyzer;)V

    .line 165
    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->bindHeader()V

    .line 166
    return-void
.end method

.method private bindAutoUpdate(Landroid/support/v4/app/Fragment;)V
    .registers 8
    .parameter "fragment"

    .prologue
    .line 307
    const v1, 0x7f080015

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/AutoUpdateSection;

    .line 308
    .local v0, section:Lcom/google/android/finsky/layout/AutoUpdateSection;
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/AutoUpdateSection;->bind(Ljava/lang/String;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/receivers/Installer;)V

    .line 309
    return-void
.end method

.method private bindAvailabilityRestrictions()V
    .registers 7

    .prologue
    .line 342
    const v1, 0x7f0800b6

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/WarningMessageSection;

    .line 345
    .local v0, warningMessagePanel:Lcom/google/android/finsky/layout/WarningMessageSection;
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    iget-object v5, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-interface {v5}, Lcom/google/android/finsky/api/DfeApi;->getAccount()Landroid/accounts/Account;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/WarningMessageSection;->bind(Lcom/google/android/finsky/api/model/Document;Landroid/widget/ImageView;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)V

    .line 347
    return-void
.end method

.method private bindButtons(Lcom/google/android/finsky/activities/AppActionAnalyzer;)V
    .registers 4
    .parameter "actions"

    .prologue
    .line 170
    const v0, 0x7f0800ad

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/activities/myapps/DocumentView$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/activities/myapps/DocumentView$2;-><init>(Lcom/google/android/finsky/activities/myapps/DocumentView;Lcom/google/android/finsky/activities/AppActionAnalyzer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    const v0, 0x7f0800ae

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/activities/myapps/DocumentView$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/myapps/DocumentView$3;-><init>(Lcom/google/android/finsky/activities/myapps/DocumentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/activities/myapps/DocumentView$4;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/myapps/DocumentView$4;-><init>(Lcom/google/android/finsky/activities/myapps/DocumentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    const v0, 0x7f080102

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/activities/myapps/DocumentView$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/activities/myapps/DocumentView$5;-><init>(Lcom/google/android/finsky/activities/myapps/DocumentView;Lcom/google/android/finsky/activities/AppActionAnalyzer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/activities/myapps/DocumentView$6;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/myapps/DocumentView$6;-><init>(Lcom/google/android/finsky/activities/myapps/DocumentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    return-void
.end method

.method private bindHeader()V
    .registers 6

    .prologue
    .line 211
    const v2, 0x7f0800e4

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    const v2, 0x7f0800e5

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 213
    .local v0, creator:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    const v2, 0x7f080098

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 217
    const v2, 0x7f0800b5

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/SmartThumbnailView;

    .line 218
    .local v1, thumbnailView:Lcom/google/android/finsky/layout/SmartThumbnailView;
    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/layout/SmartThumbnailView;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;)V

    .line 219
    const v2, 0x7f080101

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/google/android/finsky/activities/myapps/DocumentView$7;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/myapps/DocumentView$7;-><init>(Lcom/google/android/finsky/activities/myapps/DocumentView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    return-void
.end method

.method private bindPermissions(Landroid/support/v4/app/FragmentManager;Landroid/os/Bundle;)V
    .registers 11
    .parameter "fragmentManager"
    .parameter "savedInstanceState"

    .prologue
    .line 312
    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    .line 313
    .local v0, appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    if-nez v0, :cond_9

    .line 330
    :goto_8
    return-void

    .line 317
    :cond_9
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 318
    .local v5, permissionInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPermissionList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 320
    .local v3, permission:Ljava/lang/String;
    :try_start_21
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    .line 322
    .local v4, permissionInfo:Landroid/content/pm/PermissionInfo;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_31} :catch_32

    goto :goto_15

    .line 323
    .end local v4           #permissionInfo:Landroid/content/pm/PermissionInfo;
    :catch_32
    move-exception v6

    goto :goto_15

    .line 327
    .end local v3           #permission:Ljava/lang/String;
    :cond_34
    const v6, 0x7f080103

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/AppSecurityPermissions;

    .line 329
    .local v1, asp:Lcom/google/android/finsky/layout/AppSecurityPermissions;
    iget-object v6, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocId:Ljava/lang/String;

    invoke-virtual {v1, p1, v6, v5, p2}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->bindInfo(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_8
.end method

.method private bindSubscriptions(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 333
    const v0, 0x7f0800b7

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/SubscriptionsSection;

    .line 335
    .local v2, subscriptionsSection:Lcom/google/android/finsky/layout/SubscriptionsSection;
    if-eqz v2, :cond_18

    .line 336
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v3, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    const v4, 0x7f04009c

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->bind(Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/layout/SubscriptionsSection;Lcom/google/android/finsky/api/model/Document;ILandroid/os/Bundle;)V

    .line 339
    :cond_18
    return-void
.end method

.method private resetViewState()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 297
    const v0, 0x7f0800c1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 298
    const v0, 0x7f0800e7

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 299
    const v0, 0x7f0800ad

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 300
    const v0, 0x7f080102

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 302
    const v0, 0x7f0800ae

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 303
    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 304
    return-void
.end method

.method private showButtons(Lcom/google/android/finsky/activities/AppActionAnalyzer;)V
    .registers 15
    .parameter "actions"

    .prologue
    const v12, 0x7f0800c1

    const v11, 0x7f0800ad

    const/4 v10, 0x0

    .line 230
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v3

    .line 231
    .local v3, installer:Lcom/google/android/finsky/receivers/Installer;
    iget-object v7, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocId:Ljava/lang/String;

    invoke-interface {v3, v7}, Lcom/google/android/finsky/receivers/Installer;->getState(Ljava/lang/String;)Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-result-object v4

    .line 234
    .local v4, installerState:Lcom/google/android/finsky/receivers/Installer$InstallerState;
    sget-object v7, Lcom/google/android/finsky/receivers/Installer$InstallerState;->NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    if-eq v4, v7, :cond_24

    .line 235
    const v7, 0x7f0800e7

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 294
    :cond_23
    :goto_23
    return-void

    .line 240
    :cond_24
    invoke-virtual {p0, v12}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 242
    iget-boolean v7, p1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalledSystemApp:Z

    iput-boolean v7, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mIsSystemPackage:Z

    .line 244
    iget-boolean v7, p1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isRefundable:Z

    if-eqz v7, :cond_af

    .line 245
    const v7, 0x7f080102

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 251
    :cond_3d
    :goto_3d
    iget-object v7, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-static {v7, v8, v9}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v5

    .line 253
    .local v5, isAvailable:Z
    if-eqz v5, :cond_6b

    iget-boolean v7, p1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isDisabledByUser:Z

    if-nez v7, :cond_6b

    .line 254
    iget v7, p1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->installedVersion:I

    if-ltz v7, :cond_be

    iget v7, p1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->installedVersion:I

    iget-object v8, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v8}, Lcom/google/android/finsky/api/model/Document;->getVersionCode()I

    move-result v8

    if-ge v7, v8, :cond_be

    .line 256
    const v7, 0x7f0800ae

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 267
    :cond_6b
    :goto_6b
    iget-boolean v7, p1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isLaunchable:Z

    if-eqz v7, :cond_82

    .line 268
    invoke-virtual {p0, v11}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 270
    .local v6, launchButton:Landroid/widget/Button;
    iget-boolean v7, p1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isContinueLaunch:Z

    if-eqz v7, :cond_cd

    .line 271
    const v7, 0x7f07012b

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 275
    :goto_7f
    invoke-virtual {v6, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 279
    .end local v6           #launchButton:Landroid/widget/Button;
    :cond_82
    iget-boolean v7, p1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isDisabledByUser:Z

    if-eqz v7, :cond_95

    .line 280
    invoke-virtual {p0, v11}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 281
    .restart local v6       #launchButton:Landroid/widget/Button;
    const v7, 0x7f07012d

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 282
    invoke-virtual {v6, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 285
    .end local v6           #launchButton:Landroid/widget/Button;
    :cond_95
    invoke-virtual {p0, v12}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 286
    .local v0, buttonContainer:Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9c
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_23

    .line 287
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 288
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_d4

    .line 286
    add-int/lit8 v2, v2, 0x1

    goto :goto_9c

    .line 246
    .end local v0           #buttonContainer:Landroid/view/ViewGroup;
    .end local v1           #child:Landroid/view/View;
    .end local v2           #i:I
    .end local v5           #isAvailable:Z
    :cond_af
    iget-boolean v7, p1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isUninstallable:Z

    if-eqz v7, :cond_3d

    .line 247
    const v7, 0x7f0800af

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3d

    .line 257
    .restart local v5       #isAvailable:Z
    :cond_be
    iget-boolean v7, p1, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalled:Z

    if-nez v7, :cond_6b

    .line 262
    const v7, 0x7f0800b1

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/activities/myapps/DocumentView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6b

    .line 273
    .restart local v6       #launchButton:Landroid/widget/Button;
    :cond_cd
    const v7, 0x7f07012a

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    goto :goto_7f

    .line 291
    .end local v6           #launchButton:Landroid/widget/Button;
    .restart local v0       #buttonContainer:Landroid/view/ViewGroup;
    .restart local v1       #child:Landroid/view/View;
    .restart local v2       #i:I
    :cond_d4
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_23
.end method


# virtual methods
.method public bind(Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;Landroid/os/Bundle;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .registers 9
    .parameter "fragment"
    .parameter "doc"
    .parameter "handler"
    .parameter "savedInstanceState"
    .parameter "navigationManager"

    .prologue
    .line 130
    iput-object p2, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 131
    iput-object p3, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mHandler:Lcom/google/android/finsky/activities/myapps/DocumentView$DocumentActionHandler;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mIsSystemPackage:Z

    .line 133
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-static {v0, p2}, Lcom/google/android/finsky/utils/DocUtils;->hasAutoRenewingSubscriptions(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/api/model/Document;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mHasSubscriptions:Z

    .line 134
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocId:Ljava/lang/String;

    .line 135
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mFragment:Landroid/support/v4/app/Fragment;

    .line 136
    iput-object p5, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 138
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v0, :cond_27

    .line 139
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 140
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 142
    :cond_27
    new-instance v0, Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/api/model/DfeDetails;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    .line 143
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 144
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeDetails;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 146
    invoke-direct {p0, p4}, Lcom/google/android/finsky/activities/myapps/DocumentView;->bind(Landroid/os/Bundle;)V

    .line 148
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstallerListener:Lcom/google/android/finsky/installer/InstallerListener;

    if-eqz v0, :cond_4e

    .line 149
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstallerListener:Lcom/google/android/finsky/installer/InstallerListener;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/receivers/Installer;->removeListener(Lcom/google/android/finsky/installer/InstallerListener;)V

    .line 152
    :cond_4e
    new-instance v0, Lcom/google/android/finsky/activities/myapps/DocumentView$WatchedInstallerListener;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocId:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/activities/myapps/DocumentView$WatchedInstallerListener;-><init>(Lcom/google/android/finsky/activities/myapps/DocumentView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstallerListener:Lcom/google/android/finsky/installer/InstallerListener;

    .line 153
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstallerListener:Lcom/google/android/finsky/installer/InstallerListener;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/receivers/Installer;->addListener(Lcom/google/android/finsky/installer/InstallerListener;)V

    .line 154
    return-void
.end method

.method public onDataChanged()V
    .registers 3

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDetails:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->getDocument()Lcom/google/android/finsky/api/model/Document;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 368
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/DocUtils;->hasAutoRenewingSubscriptions(Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/api/model/Document;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mHasSubscriptions:Z

    .line 369
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/myapps/DocumentView;->bind(Landroid/os/Bundle;)V

    .line 370
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->onDestroyView()V

    .line 119
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstallerListener:Lcom/google/android/finsky/installer/InstallerListener;

    if-eqz v0, :cond_10

    .line 120
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mInstallerListener:Lcom/google/android/finsky/installer/InstallerListener;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/receivers/Installer;->removeListener(Lcom/google/android/finsky/installer/InstallerListener;)V

    .line 123
    :cond_10
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mRebindRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 125
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 126
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2
    .parameter "error"

    .prologue
    .line 363
    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .registers 4
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 379
    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    .line 380
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->onNegativeClick(ILandroid/os/Bundle;)V

    .line 382
    :cond_8
    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .registers 4
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 373
    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    .line 374
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/DocumentView;->mSubscriptionsViewBinder:Lcom/google/android/finsky/activities/SubscriptionsViewBinder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/activities/SubscriptionsViewBinder;->onPositiveClick(ILandroid/os/Bundle;)V

    .line 376
    :cond_8
    return-void
.end method
