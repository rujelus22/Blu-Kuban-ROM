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

.field private final mServiceListener:Lcom/google/android/apps/plus/service/ApiaryService$ApiaryServiceListener;

.field private mToken:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;-><init>()V

    .line 69
    new-instance v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mServiceListener:Lcom/google/android/apps/plus/service/ApiaryService$ApiaryServiceListener;

    .line 78
    new-instance v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$PreviewLoaderCallbacks;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment$PreviewLoaderCallbacks;-><init>(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mPreviewLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 302
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mRequestId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/PlusOneFragment;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mApiaryApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mInsert:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/fragments/PlusOneFragment;Lcom/google/android/apps/plus/network/ApiaryActivity;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->setPreview(Lcom/google/android/apps/plus/network/ApiaryActivity;)V

    return-void
.end method

.method private getAppText(Ljava/lang/CharSequence;)Landroid/text/Spanned;
    .registers 6
    .parameter "appName"

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070272

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
    .line 155
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070271

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
    .registers 4
    .parameter "action"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v0, :cond_d

    .line 392
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 394
    :cond_d
    return-void
.end method

.method private setPreview(Lcom/google/android/apps/plus/network/ApiaryActivity;)V
    .registers 6
    .parameter "activity"

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d0139

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 352
    .local v1, previewContainer:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 354
    if-eqz p1, :cond_1f

    .line 356
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/apps/plus/views/ActivityPreviewViewFactory;->createViewFromActivity(Landroid/content/Context;Lcom/google/android/apps/plus/network/ApiaryActivity;)Lcom/google/android/apps/plus/views/ActivityPreviewView;

    move-result-object v0

    .line 357
    .local v0, preview:Lcom/google/android/apps/plus/views/ActivityPreviewView;
    if-eqz v0, :cond_1f

    .line 358
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 361
    .end local v0           #preview:Lcom/google/android/apps/plus/views/ActivityPreviewView;
    :cond_1f
    return-void
.end method


# virtual methods
.method protected isEmpty()Z
    .registers 2

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 24
    .parameter "savedInstanceState"

    .prologue
    .line 169
    invoke-super/range {p0 .. p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    .line 173
    .local v11, args:Landroid/os/Bundle;
    const-string v2, "PlusOneFragment#mApiaryApiInfo"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mApiaryApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    .line 174
    const-string v2, "PlusOneFragment#mToken"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mToken:Ljava/lang/String;

    .line 175
    const-string v2, "PlusOneFragment#mUrl"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mUrl:Ljava/lang/String;

    .line 176
    const-string v2, "PlusOneFragment#mInsert"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mInsert:Z

    .line 177
    const-string v2, "PlusOneFragment#mAccount"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 179
    if-nez p1, :cond_169

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mInsert:Z

    if-eqz v2, :cond_169

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mInsert:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mToken:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mApiaryApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    invoke-static/range {v2 .. v7}, Lcom/google/android/apps/plus/service/ApiaryService;->applyPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLjava/lang/String;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mRequestId:Ljava/lang/Integer;

    .line 183
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_WRITE_PLUSONE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 189
    :cond_70
    :goto_70
    if-nez p1, :cond_7f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mUrl:Ljava/lang/String;

    if-eqz v2, :cond_7f

    .line 190
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_PLUSONE_PREVIEW_SHOWN:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 193
    :cond_7f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d0134

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/google/android/apps/plus/views/AvatarView;

    .line 195
    .local v12, avatarView:Lcom/google/android/apps/plus/views/AvatarView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v2

    invoke-virtual {v12, v2, v3}, Lcom/google/android/apps/plus/views/AvatarView;->setContactId(J)V

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d0135

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 198
    .local v21, userText:Landroid/widget/TextView;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getUserText()Landroid/text/Spanned;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mApiaryApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getSourceInfo()Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;->getPackageName()Ljava/lang/String;

    move-result-object v17

    .line 201
    .local v17, pkgName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 203
    .local v16, pkgManager:Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d0137

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 204
    .local v8, appIcon:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d0138

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 206
    .local v10, appText:Landroid/widget/TextView;
    :try_start_db
    invoke-virtual/range {v16 .. v17}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    const/4 v2, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 210
    .local v9, appName:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getAppText(Ljava/lang/CharSequence;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_fa
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_db .. :try_end_fa} :catch_189

    .line 219
    .end local v9           #appName:Ljava/lang/CharSequence;
    :goto_fa
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d013a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    .line 220
    .local v18, shareButton:Landroid/widget/Button;
    new-instance v2, Lcom/google/android/apps/plus/fragments/PlusOneFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment$2;-><init>(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d013b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 240
    .local v13, continueButton:Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d013c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    .line 243
    .local v19, undoButton:Landroid/widget/Button;
    new-instance v20, Lcom/google/android/apps/plus/fragments/PlusOneFragment$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/fragments/PlusOneFragment$3;-><init>(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)V

    .line 262
    .local v20, undoOnClickListener:Landroid/view/View$OnClickListener;
    new-instance v14, Lcom/google/android/apps/plus/fragments/PlusOneFragment$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment$4;-><init>(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)V

    .line 276
    .local v14, dismissOnClickListener:Landroid/view/View$OnClickListener;
    const v2, 0x7f0702d1

    invoke-virtual {v13, v2}, Landroid/widget/Button;->setText(I)V

    .line 277
    invoke-virtual {v13, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    const v2, 0x7f0702d0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 280
    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mPreviewLoaderCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    .line 285
    return-void

    .line 184
    .end local v8           #appIcon:Landroid/widget/ImageView;
    .end local v10           #appText:Landroid/widget/TextView;
    .end local v12           #avatarView:Lcom/google/android/apps/plus/views/AvatarView;
    .end local v13           #continueButton:Landroid/widget/Button;
    .end local v14           #dismissOnClickListener:Landroid/view/View$OnClickListener;
    .end local v16           #pkgManager:Landroid/content/pm/PackageManager;
    .end local v17           #pkgName:Ljava/lang/String;
    .end local v18           #shareButton:Landroid/widget/Button;
    .end local v19           #undoButton:Landroid/widget/Button;
    .end local v20           #undoOnClickListener:Landroid/view/View$OnClickListener;
    .end local v21           #userText:Landroid/widget/TextView;
    :cond_169
    if-eqz p1, :cond_70

    .line 185
    const-string v2, "PlusOneFragment#mRequestId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_187

    const-string v2, "PlusOneFragment#mRequestId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_181
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mRequestId:Ljava/lang/Integer;

    goto/16 :goto_70

    :cond_187
    const/4 v2, 0x0

    goto :goto_181

    .line 212
    .restart local v8       #appIcon:Landroid/widget/ImageView;
    .restart local v10       #appText:Landroid/widget/TextView;
    .restart local v12       #avatarView:Lcom/google/android/apps/plus/views/AvatarView;
    .restart local v16       #pkgManager:Landroid/content/pm/PackageManager;
    .restart local v17       #pkgName:Ljava/lang/String;
    .restart local v21       #userText:Landroid/widget/TextView;
    :catch_189
    move-exception v15

    .line 215
    .local v15, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x4

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    const/4 v2, 0x4

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_fa
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 365
    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    .line 366
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 367
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 369
    :cond_11
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 95
    const v0, 0x7f030070

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishedWrite(Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 102
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mRequestId:Ljava/lang/Integer;

    .line 103
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 105
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 106
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 108
    :cond_11
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    .line 109
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 129
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onPause()V

    .line 130
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mServiceListener:Lcom/google/android/apps/plus/service/ApiaryService$ApiaryServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/ApiaryService;->unregisterListener(Lcom/google/android/apps/plus/service/ApiaryService$ApiaryServiceListener;)V

    .line 131
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 138
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onResume()V

    .line 139
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mServiceListener:Lcom/google/android/apps/plus/service/ApiaryService$ApiaryServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/ApiaryService;->registerListener(Lcom/google/android/apps/plus/service/ApiaryService$ApiaryServiceListener;)V

    .line 140
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_27

    .line 141
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/ApiaryService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_27

    .line 142
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/ApiaryService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 143
    .local v0, result:Lcom/google/android/apps/plus/service/ServiceResult;
    if-eqz v0, :cond_2d

    .line 144
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->onFinishedWrite(Lcom/google/android/apps/plus/service/ServiceResult;)V

    .line 151
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_27
    :goto_27
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    .line 152
    return-void

    .line 147
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
    .line 116
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_13

    .line 118
    const-string v0, "PlusOneFragment#mRequestId"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    :goto_12
    return-void

    .line 120
    :cond_13
    const-string v0, "PlusOneFragment#mRequestId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_12
.end method

.method public setProgressBar(Landroid/widget/ProgressBar;)V
    .registers 3
    .parameter "progressView"

    .prologue
    .line 372
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mProgressView:Landroid/widget/ProgressBar;

    .line 373
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    .line 374
    return-void
.end method

.method protected updateSpinner(Landroid/widget/ProgressBar;)V
    .registers 4
    .parameter "progressView"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_f

    .line 385
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mProgressView:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mRequestId:Ljava/lang/Integer;

    if-nez v0, :cond_10

    const/16 v0, 0x8

    :goto_c
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 388
    :cond_f
    return-void

    .line 385
    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method
