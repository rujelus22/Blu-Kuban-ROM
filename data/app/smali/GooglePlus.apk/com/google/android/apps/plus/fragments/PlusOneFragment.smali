.class public Lcom/google/android/apps/plus/fragments/PlusOneFragment;
.super Lcom/google/android/apps/plus/fragments/EsFragment;
.source "PlusOneFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/PlusOneFragment$PreviewLoaderCallbacks;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mApiaryApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

.field private mInsert:Z

.field private mLoggedPreview:Z

.field private final mPreviewLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mRequestId:Ljava/lang/Integer;

.field private final mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private mToken:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;-><init>()V

    .line 72
    new-instance v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 82
    new-instance v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$PreviewLoaderCallbacks;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment$PreviewLoaderCallbacks;-><init>(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mPreviewLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 312
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mRequestId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/PlusOneFragment;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mApiaryApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mInsert:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mLoggedPreview:Z

    return v0
.end method

.method static synthetic access$702(Lcom/google/android/apps/plus/fragments/PlusOneFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mLoggedPreview:Z

    return p1
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/fragments/PlusOneFragment;Lcom/google/android/apps/plus/network/ApiaryActivity;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->setPreview(Lcom/google/android/apps/plus/network/ApiaryActivity;)V

    return-void
.end method

.method private getAppText(Ljava/lang/CharSequence;)Landroid/text/Spanned;
    .registers 6
    .parameter "appName"

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080332

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method private getUserText()Landroid/text/Spanned;
    .registers 6

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080331

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/EsAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method private recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 5
    .parameter "action"

    .prologue
    .line 410
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v1, :cond_1f

    .line 411
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mApiaryApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    invoke-static {v2}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->getCallingPackageAnalytics(Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getAnalyticsInfo(Ljava/util/Map;)Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    move-result-object v0

    .line 414
    .local v0, analytics:Lcom/google/android/apps/plus/analytics/AnalyticsInfo;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    invoke-static {v1, v2, v0, p1}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)J

    .line 416
    .end local v0           #analytics:Lcom/google/android/apps/plus/analytics/AnalyticsInfo;
    :cond_1f
    return-void
.end method

.method private setPreview(Lcom/google/android/apps/plus/network/ApiaryActivity;)V
    .registers 6
    .parameter "activity"

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0901b9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 371
    .local v1, previewContainer:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 373
    if-eqz p1, :cond_1f

    .line 375
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/apps/plus/views/ActivityPreviewViewFactory;->createViewFromActivity(Landroid/content/Context;Lcom/google/android/apps/plus/network/ApiaryActivity;)Lcom/google/android/apps/plus/views/ActivityPreviewView;

    move-result-object v0

    .line 376
    .local v0, preview:Lcom/google/android/apps/plus/views/ActivityPreviewView;
    if-eqz v0, :cond_1f

    .line 377
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 380
    .end local v0           #preview:Lcom/google/android/apps/plus/views/ActivityPreviewView;
    :cond_1f
    return-void
.end method


# virtual methods
.method public getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 3

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PlusOneFragment#mAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected isEmpty()Z
    .registers 2

    .prologue
    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 25
    .parameter "savedInstanceState"

    .prologue
    .line 176
    invoke-super/range {p0 .. p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v12

    .line 180
    .local v12, args:Landroid/os/Bundle;
    const-string v2, "PlusOneFragment#mApiaryApiInfo"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mApiaryApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    .line 181
    const-string v2, "PlusOneFragment#mToken"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mToken:Ljava/lang/String;

    .line 182
    const-string v2, "PlusOneFragment#mUrl"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mUrl:Ljava/lang/String;

    .line 183
    const-string v2, "PlusOneFragment#mInsert"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mInsert:Z

    .line 184
    const-string v2, "PlusOneFragment#mAccount"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 186
    if-nez p1, :cond_16e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mInsert:Z

    if-eqz v2, :cond_16e

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mApiaryApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    invoke-static {v3}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->getCallingPackageAnalytics(Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getAnalyticsInfo(Ljava/util/Map;)Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    move-result-object v4

    .line 190
    .local v4, analytics:Lcom/google/android/apps/plus/analytics/AnalyticsInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mApiaryApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mInsert:Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mToken:Ljava/lang/String;

    invoke-static/range {v2 .. v8}, Lcom/google/android/apps/plus/service/EsService;->applyPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/android/apps/plus/network/ApiaryApiInfo;Ljava/lang/String;ZLjava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mRequestId:Ljava/lang/Integer;

    .line 192
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mLoggedPreview:Z

    .line 199
    .end local v4           #analytics:Lcom/google/android/apps/plus/analytics/AnalyticsInfo;
    :cond_80
    :goto_80
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0901b4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/google/android/apps/plus/views/AvatarView;

    .line 201
    .local v13, avatarView:Lcom/google/android/apps/plus/views/AvatarView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/google/android/apps/plus/views/AvatarView;->setGaiaId(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0901b5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 204
    .local v22, userText:Landroid/widget/TextView;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getUserText()Landroid/text/Spanned;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mApiaryApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getSourceInfo()Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getPackageName()Ljava/lang/String;

    move-result-object v18

    .line 207
    .local v18, pkgName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 209
    .local v17, pkgManager:Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0901b7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 210
    .local v9, appIcon:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0901b8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 212
    .local v11, appText:Landroid/widget/TextView;
    :try_start_dc
    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    const/4 v2, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 216
    .local v10, appName:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getAppText(Ljava/lang/CharSequence;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_fb
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_dc .. :try_end_fb} :catch_19a

    .line 225
    .end local v10           #appName:Ljava/lang/CharSequence;
    :goto_fb
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0901ba

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    .line 226
    .local v19, shareButton:Landroid/widget/Button;
    new-instance v2, Lcom/google/android/apps/plus/fragments/PlusOneFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment$2;-><init>(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0901bb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 247
    .local v14, continueButton:Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0901bc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Button;

    .line 250
    .local v20, undoButton:Landroid/widget/Button;
    new-instance v21, Lcom/google/android/apps/plus/fragments/PlusOneFragment$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/fragments/PlusOneFragment$3;-><init>(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)V

    .line 272
    .local v21, undoOnClickListener:Landroid/view/View$OnClickListener;
    new-instance v16, Lcom/google/android/apps/plus/fragments/PlusOneFragment$4;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/fragments/PlusOneFragment$4;-><init>(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)V

    .line 286
    .local v16, okOnClickListener:Landroid/view/View$OnClickListener;
    const v2, 0x7f0803b4

    invoke-virtual {v14, v2}, Landroid/widget/Button;->setText(I)V

    .line 287
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    const v2, 0x7f0803b3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 290
    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mPreviewLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v2, v3, v5, v6}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    .line 295
    return-void

    .line 193
    .end local v9           #appIcon:Landroid/widget/ImageView;
    .end local v11           #appText:Landroid/widget/TextView;
    .end local v13           #avatarView:Lcom/google/android/apps/plus/views/AvatarView;
    .end local v14           #continueButton:Landroid/widget/Button;
    .end local v16           #okOnClickListener:Landroid/view/View$OnClickListener;
    .end local v17           #pkgManager:Landroid/content/pm/PackageManager;
    .end local v18           #pkgName:Ljava/lang/String;
    .end local v19           #shareButton:Landroid/widget/Button;
    .end local v20           #undoButton:Landroid/widget/Button;
    .end local v21           #undoOnClickListener:Landroid/view/View$OnClickListener;
    .end local v22           #userText:Landroid/widget/TextView;
    :cond_16e
    if-eqz p1, :cond_80

    .line 194
    const-string v2, "PlusOneFragment#mRequestId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_198

    const-string v2, "PlusOneFragment#mRequestId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_186
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mRequestId:Ljava/lang/Integer;

    .line 196
    const-string v2, "PlusOneFragment#mLoggedPreview"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mLoggedPreview:Z

    goto/16 :goto_80

    .line 194
    :cond_198
    const/4 v2, 0x0

    goto :goto_186

    .line 218
    .restart local v9       #appIcon:Landroid/widget/ImageView;
    .restart local v11       #appText:Landroid/widget/TextView;
    .restart local v13       #avatarView:Lcom/google/android/apps/plus/views/AvatarView;
    .restart local v17       #pkgManager:Landroid/content/pm/PackageManager;
    .restart local v18       #pkgName:Ljava/lang/String;
    .restart local v22       #userText:Landroid/widget/TextView;
    :catch_19a
    move-exception v15

    .line 221
    .local v15, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x4

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    const/4 v2, 0x4

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_fb
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 384
    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    .line 385
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 386
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 388
    :cond_11
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 100
    const v0, 0x7f03009b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishedWrite(Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 108
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mRequestId:Ljava/lang/Integer;

    .line 109
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 111
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 112
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 114
    :cond_11
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    .line 115
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 136
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onPause()V

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 138
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 145
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onResume()V

    .line 146
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 147
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_27

    .line 148
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_27

    .line 149
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 150
    .local v0, result:Lcom/google/android/apps/plus/service/ServiceResult;
    if-eqz v0, :cond_2d

    .line 151
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->onFinishedWrite(Lcom/google/android/apps/plus/service/ServiceResult;)V

    .line 158
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_27
    :goto_27
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    .line 159
    return-void

    .line 154
    .restart local v0       #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_2d
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mRequestId:Ljava/lang/Integer;

    goto :goto_27
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_1a

    .line 124
    const-string v0, "PlusOneFragment#mRequestId"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 128
    :goto_12
    const-string v0, "PlusOneFragment#mLoggedPreview"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mLoggedPreview:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    return-void

    .line 126
    :cond_1a
    const-string v0, "PlusOneFragment#mRequestId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_12
.end method

.method public setProgressBar(Landroid/widget/ProgressBar;)V
    .registers 3
    .parameter "progressView"

    .prologue
    .line 391
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mProgressView:Landroid/widget/ProgressBar;

    .line 392
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    .line 393
    return-void
.end method

.method protected updateSpinner(Landroid/widget/ProgressBar;)V
    .registers 4
    .parameter "progressView"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_f

    .line 404
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mProgressView:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mRequestId:Ljava/lang/Integer;

    if-nez v0, :cond_10

    const/16 v0, 0x8

    :goto_c
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 407
    :cond_f
    return-void

    .line 404
    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method
