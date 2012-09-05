.class public Lcom/google/android/finsky/layout/AssetView;
.super Landroid/widget/LinearLayout;
.source "AssetView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/AssetView$AssetActionHandler;
    }
.end annotation


# instance fields
.field private mAsset:Lcom/google/android/vending/model/Asset;

.field private mHandler:Lcom/google/android/finsky/layout/AssetView$AssetActionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/AssetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const v0, 0x7f040009

    invoke-static {p1, v0, p0}, Lcom/google/android/finsky/layout/AssetView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/AssetView;)Lcom/google/android/finsky/layout/AssetView$AssetActionHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/finsky/layout/AssetView;->mHandler:Lcom/google/android/finsky/layout/AssetView$AssetActionHandler;

    return-object v0
.end method

.method private bind(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .registers 5
    .parameter "fragment"
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/android/finsky/layout/AssetView;->resetViewState()V

    .line 71
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/AssetView;->mAsset:Lcom/google/android/vending/model/Asset;

    invoke-virtual {v1}, Lcom/google/android/vending/model/Asset;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 72
    invoke-direct {p0}, Lcom/google/android/finsky/layout/AssetView;->showInstalledButtons()V

    .line 77
    :goto_1a
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/finsky/layout/AssetView;->bindPermissions(Landroid/support/v4/app/FragmentManager;Landroid/os/Bundle;)V

    .line 78
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/AssetView;->bindAutoUpdate(Landroid/support/v4/app/Fragment;)V

    .line 79
    invoke-direct {p0}, Lcom/google/android/finsky/layout/AssetView;->bindButtons()V

    .line 80
    invoke-direct {p0}, Lcom/google/android/finsky/layout/AssetView;->bindHeader()V

    .line 81
    return-void

    .line 74
    :cond_2b
    invoke-direct {p0}, Lcom/google/android/finsky/layout/AssetView;->showUninstalledButtons()V

    goto :goto_1a
.end method

.method private bindAutoUpdate(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter "fragment"

    .prologue
    .line 205
    const v1, 0x7f080024

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/AssetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/AutoUpdateSection;

    .line 206
    .local v0, section:Lcom/google/android/finsky/layout/AutoUpdateSection;
    iget-object v1, p0, Lcom/google/android/finsky/layout/AssetView;->mAsset:Lcom/google/android/vending/model/Asset;

    invoke-virtual {v1}, Lcom/google/android/vending/model/Asset;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/layout/AutoUpdateSection;->setApplicationPackageName(Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 207
    return-void
.end method

.method private bindBitmapForAsset(Lcom/google/android/vending/model/Asset;Landroid/widget/ImageView;)V
    .registers 10
    .parameter "asset"
    .parameter "imageView"

    .prologue
    .line 233
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/finsky/layout/AssetView$7;

    invoke-direct {v5, p0, p2}, Lcom/google/android/finsky/layout/AssetView$7;-><init>(Lcom/google/android/finsky/layout/AssetView;Landroid/widget/ImageView;)V

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->getOrBindImmediately(Ljava/lang/String;ILandroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v6

    .line 244
    .local v6, container:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    invoke-virtual {v6}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 245
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AssetView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    :cond_2c
    return-void
.end method

.method private bindButtons()V
    .registers 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/google/android/finsky/layout/AssetView;->bindLaunchButton()V

    .line 85
    invoke-direct {p0}, Lcom/google/android/finsky/layout/AssetView;->bindUpdateButton()V

    .line 86
    invoke-direct {p0}, Lcom/google/android/finsky/layout/AssetView;->bindInstallButton()V

    .line 87
    invoke-direct {p0}, Lcom/google/android/finsky/layout/AssetView;->bindRefundButton()V

    .line 88
    invoke-direct {p0}, Lcom/google/android/finsky/layout/AssetView;->bindUninstallButton()V

    .line 89
    return-void
.end method

.method private bindHeader()V
    .registers 5

    .prologue
    .line 137
    const v1, 0x7f08007b

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/AssetView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/finsky/layout/AssetView;->mAsset:Lcom/google/android/vending/model/Asset;

    invoke-virtual {v2}, Lcom/google/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const v1, 0x7f0800bc

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/AssetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 139
    .local v0, creator:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/google/android/finsky/layout/AssetView;->mAsset:Lcom/google/android/vending/model/Asset;

    invoke-virtual {v1}, Lcom/google/android/vending/model/Asset;->getDevName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    const v1, 0x7f080021

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/AssetView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/AssetView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 143
    iget-object v2, p0, Lcom/google/android/finsky/layout/AssetView;->mAsset:Lcom/google/android/vending/model/Asset;

    const v1, 0x7f08001a

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/AssetView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {p0, v2, v1}, Lcom/google/android/finsky/layout/AssetView;->bindBitmapForAsset(Lcom/google/android/vending/model/Asset;Landroid/widget/ImageView;)V

    .line 144
    const v1, 0x7f080019

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/AssetView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/google/android/finsky/layout/AssetView$6;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/layout/AssetView$6;-><init>(Lcom/google/android/finsky/layout/AssetView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    return-void
.end method

.method private bindInstallButton()V
    .registers 3

    .prologue
    .line 110
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AssetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/layout/AssetView$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/AssetView$3;-><init>(Lcom/google/android/finsky/layout/AssetView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void
.end method

.method private bindLaunchButton()V
    .registers 3

    .prologue
    .line 92
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AssetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/layout/AssetView$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/AssetView$1;-><init>(Lcom/google/android/finsky/layout/AssetView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void
.end method

.method private bindPermissions(Landroid/support/v4/app/FragmentManager;Landroid/os/Bundle;)V
    .registers 11
    .parameter "fragmentManager"
    .parameter "savedInstanceState"

    .prologue
    .line 210
    iget-object v6, p0, Lcom/google/android/finsky/layout/AssetView;->mAsset:Lcom/google/android/vending/model/Asset;

    invoke-virtual {v6}, Lcom/google/android/vending/model/Asset;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, packageName:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 212
    .local v5, permissionInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    iget-object v6, p0, Lcom/google/android/finsky/layout/AssetView;->mAsset:Lcom/google/android/vending/model/Asset;

    invoke-virtual {v6}, Lcom/google/android/vending/model/Asset;->getPermissions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 214
    .local v3, permission:Ljava/lang/String;
    :try_start_20
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    .line 216
    .local v4, permissionInfo:Landroid/content/pm/PermissionInfo;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_30} :catch_31

    goto :goto_14

    .line 217
    .end local v4           #permissionInfo:Landroid/content/pm/PermissionInfo;
    :catch_31
    move-exception v6

    goto :goto_14

    .line 221
    .end local v3           #permission:Ljava/lang/String;
    :cond_33
    const v6, 0x7f080023

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/layout/AssetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/AppSecurityPermissions;

    .line 223
    .local v0, asp:Lcom/google/android/finsky/layout/AppSecurityPermissions;
    invoke-virtual {v0, p1, v2, v5, p2}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->bindInfo(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    .line 224
    return-void
.end method

.method private bindRefundButton()V
    .registers 3

    .prologue
    .line 119
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AssetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/layout/AssetView$4;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/AssetView$4;-><init>(Lcom/google/android/finsky/layout/AssetView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-void
.end method

.method private bindUninstallButton()V
    .registers 3

    .prologue
    .line 128
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AssetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/layout/AssetView$5;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/AssetView$5;-><init>(Lcom/google/android/finsky/layout/AssetView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    return-void
.end method

.method private bindUpdateButton()V
    .registers 3

    .prologue
    .line 101
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AssetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/layout/AssetView$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/AssetView$2;-><init>(Lcom/google/android/finsky/layout/AssetView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-void
.end method

.method private resetViewState()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 195
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AssetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    const v0, 0x7f0800e2

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AssetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AssetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 198
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AssetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AssetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 200
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AssetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AssetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 202
    return-void
.end method

.method private showInstalledButtons()V
    .registers 10

    .prologue
    const v5, 0x7f08001b

    const/4 v8, 0x0

    .line 154
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getAssetStore()Lcom/google/android/finsky/local/AssetStore;

    move-result-object v1

    .line 155
    .local v1, assetStore:Lcom/google/android/finsky/local/AssetStore;
    iget-object v4, p0, Lcom/google/android/finsky/layout/AssetView;->mAsset:Lcom/google/android/vending/model/Asset;

    invoke-virtual {v4}, Lcom/google/android/vending/model/Asset;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, packageName:Ljava/lang/String;
    invoke-interface {v1, v3}, Lcom/google/android/finsky/local/AssetStore;->getAsset(Ljava/lang/String;)Lcom/google/android/finsky/local/LocalAsset;

    move-result-object v2

    .line 157
    .local v2, localAsset:Lcom/google/android/finsky/local/LocalAsset;
    invoke-interface {v2}, Lcom/google/android/finsky/local/LocalAsset;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v0

    .line 159
    .local v0, assetState:Lcom/google/android/finsky/local/AssetState;
    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/AssetView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 160
    sget-object v4, Lcom/google/android/finsky/local/AssetState;->INSTALLED:Lcom/google/android/finsky/local/AssetState;

    if-ne v0, v4, :cond_5a

    .line 161
    invoke-interface {v2}, Lcom/google/android/finsky/local/LocalAsset;->getVersionCode()I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lcom/google/android/finsky/layout/AssetView;->mAsset:Lcom/google/android/vending/model/Asset;

    invoke-virtual {v6}, Lcom/google/android/vending/model/Asset;->getVersionCode()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_3e

    .line 162
    const v4, 0x7f08001d

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/layout/AssetView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 164
    :cond_3e
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoCache()Lcom/google/android/finsky/utils/PackageInfoCache;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/finsky/utils/PackageInfoCache;->canLaunch(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 165
    const v4, 0x7f08001c

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/layout/AssetView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 167
    :cond_56
    invoke-direct {p0, v3, v2}, Lcom/google/android/finsky/layout/AssetView;->showRefundOrUninstallButton(Ljava/lang/String;Lcom/google/android/finsky/local/LocalAsset;)V

    .line 174
    :goto_59
    return-void

    .line 168
    :cond_5a
    invoke-interface {v2}, Lcom/google/android/finsky/local/LocalAsset;->isDownloadingOrInstalling()Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 169
    const v4, 0x7f0800e2

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/layout/AssetView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_59

    .line 171
    :cond_6b
    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/AssetView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 172
    const v4, 0x7f080020

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/layout/AssetView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_59
.end method

.method private showRefundOrUninstallButton(Ljava/lang/String;Lcom/google/android/finsky/local/LocalAsset;)V
    .registers 9
    .parameter "packageName"
    .parameter "localAsset"

    .prologue
    const/4 v2, 0x0

    .line 177
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoCache()Lcom/google/android/finsky/utils/PackageInfoCache;

    move-result-object v1

    .line 178
    .local v1, packageInfo:Lcom/google/android/finsky/utils/PackageInfoCache;
    invoke-virtual {v1, p1}, Lcom/google/android/finsky/utils/PackageInfoCache;->isSystemPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v1, p1}, Lcom/google/android/finsky/utils/PackageInfoCache;->isUpdatedSystemPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    :cond_15
    const/4 v0, 0x1

    .line 180
    .local v0, isUninstallable:Z
    :goto_16
    if-eqz v0, :cond_45

    if-eqz p2, :cond_45

    invoke-interface {p2}, Lcom/google/android/finsky/local/LocalAsset;->getRefundPeriodEndTime()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_45

    new-instance v3, Ljava/util/Date;

    invoke-interface {p2}, Lcom/google/android/finsky/local/LocalAsset;->getRefundPeriodEndTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 183
    const v3, 0x7f08001f

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/AssetView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    :cond_42
    :goto_42
    return-void

    .end local v0           #isUninstallable:Z
    :cond_43
    move v0, v2

    .line 178
    goto :goto_16

    .line 184
    .restart local v0       #isUninstallable:Z
    :cond_45
    if-eqz v0, :cond_42

    .line 185
    const v3, 0x7f08001e

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/AssetView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_42
.end method

.method private showUninstalledButtons()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 190
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AssetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/AssetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    return-void
.end method


# virtual methods
.method public bind(Landroid/support/v4/app/Fragment;Lcom/google/android/vending/model/Asset;Lcom/google/android/finsky/layout/AssetView$AssetActionHandler;Landroid/os/Bundle;)V
    .registers 5
    .parameter "fragment"
    .parameter "asset"
    .parameter "handler"
    .parameter "savedInstanceState"

    .prologue
    .line 63
    iput-object p2, p0, Lcom/google/android/finsky/layout/AssetView;->mAsset:Lcom/google/android/vending/model/Asset;

    .line 64
    iput-object p3, p0, Lcom/google/android/finsky/layout/AssetView;->mHandler:Lcom/google/android/finsky/layout/AssetView$AssetActionHandler;

    .line 65
    invoke-direct {p0, p1, p4}, Lcom/google/android/finsky/layout/AssetView;->bind(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 66
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "bundle"

    .prologue
    .line 227
    const v1, 0x7f080023

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/AssetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/AppSecurityPermissions;

    .line 229
    .local v0, asp:Lcom/google/android/finsky/layout/AppSecurityPermissions;
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->saveInstanceState(Landroid/os/Bundle;)V

    .line 230
    return-void
.end method
