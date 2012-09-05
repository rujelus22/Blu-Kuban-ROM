.class public Lcom/google/android/apps/plus/ads/PlusOneActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "PlusOneActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/ads/PlusOneActivity$ReportAbuseClickListener;,
        Lcom/google/android/apps/plus/ads/PlusOneActivity$CancelClickListener;,
        Lcom/google/android/apps/plus/ads/PlusOneActivity$ConfirmClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/FragmentActivity;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mAction:Ljava/lang/String;

.field private mEntity:Ljava/lang/String;

.field private mFriendIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFriendNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalCount:I

.field private mPlusOneId:Ljava/lang/String;

.field private mSetByViewer:Z

.field private mThirdPartyAppName:Ljava/lang/String;

.field private mThirdPartyInstallerPackageName:Ljava/lang/String;

.field private mThirdPartyPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 430
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/ads/PlusOneActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mThirdPartyPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/ads/PlusOneActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mThirdPartyInstallerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/ads/PlusOneActivity;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->logErrorAndFinish(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/ads/PlusOneActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->maybeRecordFriendsShown()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/ads/PlusOneActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/ads/PlusOneActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/ads/PlusOneActivity;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/ads/PlusOneActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mPlusOneId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/ads/PlusOneActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mEntity:Ljava/lang/String;

    return-object v0
.end method

.method private addAvatar(JLandroid/widget/LinearLayout;)V
    .registers 11
    .parameter "userId"
    .parameter "layout"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    .line 502
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_9

    .line 518
    :goto_8
    return-void

    .line 506
    :cond_9
    const-string v2, "PlusOneActivity"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 507
    const-string v2, "PlusOneActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>> Adding avatar for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_2a
    new-instance v0, Lcom/google/android/apps/plus/views/AvatarView;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/views/AvatarView;-><init>(Landroid/content/Context;)V

    .line 510
    .local v0, avatarView:Lcom/google/android/apps/plus/views/AvatarView;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 512
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 513
    const/16 v2, 0xa

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 514
    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/AvatarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    invoke-virtual {v0, v6}, Lcom/google/android/apps/plus/views/AvatarView;->setAvatarSize(I)V

    .line 516
    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/plus/views/AvatarView;->setContactId(J)V

    .line 517
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_8
.end method

.method private static deserializeShortStringList(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .parameter "cursor"
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 487
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 488
    .local v0, blob:[B
    if-eqz v0, :cond_d

    array-length v1, v0

    if-nez v1, :cond_12

    .line 489
    :cond_d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 491
    :goto_11
    return-object v1

    :cond_12
    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsAdPlusOnesData;->deserializeShortStringList([B)Ljava/util/List;

    move-result-object v1

    goto :goto_11
.end method

.method private displayAppNameAndIcon()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 300
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mThirdPartyPackageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 301
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mThirdPartyAppName:Ljava/lang/String;

    .line 304
    const v4, 0x7f0d0046

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 305
    .local v2, appNameTextView:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mThirdPartyAppName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    const v4, 0x7f0d0045

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 309
    .local v0, appIconImageView:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mThirdPartyPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 311
    return-void
.end method

.method private displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 5
    .parameter "imageUrl"
    .parameter "imageView"

    .prologue
    .line 335
    new-instance v0, Lcom/google/android/apps/plus/ads/PlusOneActivity$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/apps/plus/ads/PlusOneActivity$1;-><init>(Lcom/google/android/apps/plus/ads/PlusOneActivity;Ljava/lang/String;Landroid/widget/ImageView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/ads/PlusOneActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 369
    return-void
.end method

.method private displayInterface(Ljava/lang/String;)V
    .registers 12
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 742
    invoke-static {p1, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 743
    .local v2, decodedMetadata:[B
    array-length v4, v2

    add-int/lit8 v4, v4, -0x8

    new-array v3, v4, [B

    .line 744
    .local v3, rawData:[B
    array-length v4, v3

    invoke-static {v2, v5, v3, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 746
    invoke-static {}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken;->newBuilder()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;

    move-result-object v0

    .line 747
    .local v0, adBuilder:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;
    invoke-virtual {v0, v3}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    .line 748
    const-string v4, "PlusOneActivity"

    invoke-static {v4, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 749
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->dumpRenderedAdToken(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;)V

    .line 753
    :cond_23
    invoke-virtual {v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->hasVisualElement()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 754
    invoke-virtual {v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->getVisualElement()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->getContentUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->showImage(Ljava/lang/String;)V

    .line 765
    :cond_34
    :goto_34
    return-void

    .line 755
    :cond_35
    invoke-virtual {v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->hasTextElement()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 756
    invoke-virtual {p0}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070279

    const/4 v4, 0x4

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->getTextElement()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->getLine1()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    const/4 v4, 0x1

    const-string v8, "#7ECC84"

    aput-object v8, v7, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->getVisibleUrl()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->hasAttribution()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-virtual {v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->getAttribution()Ljava/lang/String;

    move-result-object v4

    :goto_65
    aput-object v4, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 763
    .local v1, adText:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->showText(Ljava/lang/CharSequence;)V

    goto :goto_34

    .line 756
    .end local v1           #adText:Ljava/lang/String;
    :cond_73
    invoke-virtual {p0}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const v8, 0x7f070278

    invoke-virtual {v4, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_65
.end method

.method private displayTitle()V
    .registers 5

    .prologue
    .line 283
    const v2, 0x7f0d0042

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 285
    .local v0, confirmTextView:Landroid/widget/TextView;
    const-string v2, "delete"

    iget-object v3, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    const v1, 0x7f070273

    .line 288
    .local v1, title:I
    :goto_16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 289
    return-void

    .line 285
    .end local v1           #title:I
    :cond_1a
    const v1, 0x7f070274

    goto :goto_16
.end method

.method private displayUserAvatar()V
    .registers 4

    .prologue
    .line 274
    const v1, 0x7f0d0048

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/AvatarView;

    .line 275
    .local v0, avatarView:Lcom/google/android/apps/plus/views/AvatarView;
    iget-object v1, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/views/AvatarView;->setContactId(J)V

    .line 276
    return-void
.end method

.method private displayUserName()V
    .registers 3

    .prologue
    .line 265
    const v1, 0x7f0d0049

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 266
    .local v0, userNameTextView:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    return-void
.end method

.method private dumpCursor(Landroid/database/Cursor;)V
    .registers 11
    .parameter "cursor"

    .prologue
    .line 704
    const-string v6, "plus_one_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 706
    .local v3, plusOneId:Ljava/lang/String;
    const-string v6, "set_by_viewer"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_82

    const/4 v4, 0x1

    .line 708
    .local v4, setByViewer:Z
    :goto_17
    const-string v6, "global_count"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 710
    .local v2, globalCount:I
    const-string v6, "friend_names"

    invoke-static {p1, v6}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->deserializeShortStringList(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 712
    .local v1, friendNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "friend_ids"

    invoke-static {p1, v6}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->deserializeShortStringList(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 714
    .local v0, friendIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "share_token"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 717
    .local v5, shareToken:Ljava/lang/String;
    const-string v6, "PlusOneActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>>>> Ads +1 setByViewer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", globalCount "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", friendNames "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", friendIds "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", plusOneId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", shareToken "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return-void

    .line 706
    .end local v0           #friendIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #friendNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #globalCount:I
    .end local v4           #setByViewer:Z
    .end local v5           #shareToken:Ljava/lang/String;
    :cond_82
    const/4 v4, 0x0

    goto :goto_17
.end method

.method private dumpRenderedAdToken(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;)V
    .registers 6
    .parameter "adBuilder"

    .prologue
    .line 731
    const-string v0, "PlusOneActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> Ad Details  adGroupId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->getAdgroupId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", attribution "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->getAttribution()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", creativeId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->getCreativeId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", creativeType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->getCreativeType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", visibleUrl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->getVisibleUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", clickUrl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$Builder;->getClickUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    return-void
.end method

.method private logErrorAndFinish(Ljava/lang/String;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 570
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->logErrorAndFinish(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 571
    return-void
.end method

.method private logErrorAndFinish(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5
    .parameter "message"
    .parameter "e"

    .prologue
    .line 579
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ADS_ERROR_PLUSONE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 581
    const-string v0, "PlusOneActivity"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 582
    if-nez p2, :cond_19

    .line 583
    const-string v0, "PlusOneActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_15
    :goto_15
    invoke-virtual {p0}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->finish()V

    .line 589
    return-void

    .line 585
    :cond_19
    const-string v0, "PlusOneActivity"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method private maybeRecordFriendsShown()V
    .registers 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mFriendIds:Ljava/util/List;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mFriendIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 629
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ADS_PLUSONE_FRIENDS_SHOWN:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 631
    :cond_11
    return-void
.end method

.method private parseAndValidateExtras()Z
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 214
    invoke-virtual {p0}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 215
    .local v1, extras:Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 216
    const-string v3, "Entity or entity-type to +1 not specified"

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->logErrorAndFinish(Ljava/lang/String;)V

    move v3, v4

    .line 258
    :goto_15
    return v3

    .line 220
    :cond_16
    const-string v3, "com.google.circles.platform.intent.extra.ENTITY"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mEntity:Ljava/lang/String;

    .line 221
    iget-object v3, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mEntity:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 222
    const-string v3, "Unknown +1 entity"

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->logErrorAndFinish(Ljava/lang/String;)V

    move v3, v4

    .line 223
    goto :goto_15

    .line 226
    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, callingPackage:Ljava/lang/String;
    const-string v3, "from_signup"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 228
    .local v2, fromSignup:Z
    if-eqz v2, :cond_62

    const-string v3, "calling_package"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_3f
    iput-object v3, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mThirdPartyPackageName:Ljava/lang/String;

    .line 230
    if-eqz v2, :cond_64

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5b

    iget-object v3, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mThirdPartyPackageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5b

    invoke-virtual {p0}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    .line 233
    :cond_5b
    const-string v3, "Intent was not started by our SDK, possibly malicious."

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->logErrorAndFinish(Ljava/lang/String;)V

    move v3, v4

    .line 234
    goto :goto_15

    :cond_62
    move-object v3, v0

    .line 228
    goto :goto_3f

    .line 235
    :cond_64
    if-nez v2, :cond_75

    iget-object v3, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mThirdPartyPackageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 237
    const-string v3, "Intent was not started by our SDK, possibly malicious."

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->logErrorAndFinish(Ljava/lang/String;)V

    move v3, v4

    .line 238
    goto :goto_15

    .line 241
    :cond_75
    invoke-virtual {p0}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mThirdPartyPackageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mThirdPartyInstallerPackageName:Ljava/lang/String;

    .line 244
    const-string v3, "com.google.circles.platform.intent.extra.ACTION"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mAction:Ljava/lang/String;

    .line 245
    const-string v3, "insert"

    iget-object v5, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b8

    const-string v3, "delete"

    iget-object v5, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b8

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized action "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->logErrorAndFinish(Ljava/lang/String;)V

    move v3, v4

    .line 247
    goto/16 :goto_15

    .line 250
    :cond_b8
    const-string v3, "PlusOneActivity"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_ff

    .line 251
    const-string v3, "PlusOneActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>>>> PlusOneActivity : mThirdPartyPackageName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mThirdPartyPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mThirdPartyInstallerPackageName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mThirdPartyInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mAction "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mShareToken "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mEntity:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_ff
    const/4 v3, 0x1

    goto/16 :goto_15
.end method

.method private recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 3
    .parameter "action"

    .prologue
    .line 618
    iget-object v0, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v0, :cond_9

    .line 619
    iget-object v0, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v0, p1}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 621
    :cond_9
    return-void
.end method

.method private showImage(Ljava/lang/String;)V
    .registers 5
    .parameter "url"

    .prologue
    .line 611
    const v2, 0x7f0d0043

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 612
    .local v0, adImageView:Landroid/widget/ImageView;
    const v2, 0x7f0d0044

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 613
    .local v1, adTextView:Landroid/widget/TextView;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 614
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 615
    return-void
.end method

.method private showText(Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "text"

    .prologue
    .line 598
    const v2, 0x7f0d0043

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 599
    .local v0, adImageView:Landroid/widget/ImageView;
    const v2, 0x7f0d0044

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 600
    .local v1, adTextView:Landroid/widget/TextView;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 601
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    return-void
.end method

.method private updateAnnotation()V
    .registers 12

    .prologue
    .line 525
    const-string v8, "delete"

    iget-object v9, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 530
    .local v7, setByViewerIntent:Z
    iget-boolean v8, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mSetByViewer:Z

    if-eq v8, v7, :cond_38

    .line 531
    const-string v9, "PlusOneActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Confirming a +1 "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v7, :cond_b9

    const-string v8, "undo"

    :goto_1d
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " but in the database the +1 is already "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v8, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mSetByViewer:Z

    if-eqz v8, :cond_bd

    const-string v8, "set"

    :goto_2d
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_38
    const v8, 0x7f0d0041

    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 536
    .local v1, annotationsTextView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mGlobalCount:I

    iget-object v10, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mFriendNames:Ljava/util/List;

    invoke-static {v8, v7, v9, v10}, Lcom/google/android/apps/plus/ads/PlusOneStrings;->buildAnnotation(Landroid/content/res/Resources;ZILjava/util/List;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    const v8, 0x7f0d003f

    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 541
    .local v5, friendsLayout:Landroid/widget/LinearLayout;
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 544
    const v8, 0x7f0d0040

    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 546
    .local v0, annotationAvatarsLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 547
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 548
    .local v2, avatarsLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 549
    if-eqz v7, :cond_7c

    .line 550
    iget-object v8, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v8

    invoke-direct {p0, v8, v9, v2}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->addAvatar(JLandroid/widget/LinearLayout;)V

    .line 552
    :cond_7c
    iget-object v8, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mFriendIds:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_82
    :goto_82
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 554
    .local v4, friendId:Ljava/lang/String;
    :try_start_8e
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {p0, v8, v9, v2}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->addAvatar(JLandroid/widget/LinearLayout;)V
    :try_end_95
    .catch Ljava/lang/NumberFormatException; {:try_start_8e .. :try_end_95} :catch_96

    goto :goto_82

    .line 555
    :catch_96
    move-exception v3

    .line 557
    .local v3, e:Ljava/lang/NumberFormatException;
    const-string v8, "PlusOneActivity"

    const/4 v9, 0x5

    invoke-static {v8, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_82

    .line 558
    const-string v8, "PlusOneActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Non-numeric id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    .line 531
    .end local v0           #annotationAvatarsLayout:Landroid/widget/LinearLayout;
    .end local v1           #annotationsTextView:Landroid/widget/TextView;
    .end local v2           #avatarsLayout:Landroid/widget/LinearLayout;
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .end local v4           #friendId:Ljava/lang/String;
    .end local v5           #friendsLayout:Landroid/widget/LinearLayout;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_b9
    const-string v8, "set"

    goto/16 :goto_1d

    :cond_bd
    const-string v8, "not set"

    goto/16 :goto_2d

    .line 562
    .restart local v0       #annotationAvatarsLayout:Landroid/widget/LinearLayout;
    .restart local v1       #annotationsTextView:Landroid/widget/TextView;
    .restart local v2       #avatarsLayout:Landroid/widget/LinearLayout;
    .restart local v5       #friendsLayout:Landroid/widget/LinearLayout;
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_c1
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    .prologue
    .line 635
    invoke-direct {p0}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->maybeRecordFriendsShown()V

    .line 636
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ADS_CANCEL_PLUSONE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 637
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 638
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f0d003d

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 155
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 157
    invoke-direct {p0}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->parseAndValidateExtras()Z

    move-result v3

    if-nez v3, :cond_f

    .line 208
    :cond_e
    :goto_e
    return-void

    .line 163
    :cond_f
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 164
    iget-object v3, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v3}, Lcom/google/android/apps/plus/phone/SignOnActivity;->finishIfNoAccount(Landroid/app/Activity;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 169
    const v3, 0x7f030005

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->setContentView(I)V

    .line 171
    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/google/android/apps/plus/ads/PlusOneActivity$ConfirmClickListener;

    invoke-direct {v4, p0, v5}, Lcom/google/android/apps/plus/ads/PlusOneActivity$ConfirmClickListener;-><init>(Lcom/google/android/apps/plus/ads/PlusOneActivity;Lcom/google/android/apps/plus/ads/PlusOneActivity$1;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v3, 0x7f0d003e

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/google/android/apps/plus/ads/PlusOneActivity$CancelClickListener;

    invoke-direct {v4, p0, v5}, Lcom/google/android/apps/plus/ads/PlusOneActivity$CancelClickListener;-><init>(Lcom/google/android/apps/plus/ads/PlusOneActivity;Lcom/google/android/apps/plus/ads/PlusOneActivity$1;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const v3, 0x7f0d0047

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/google/android/apps/plus/ads/PlusOneActivity$ReportAbuseClickListener;

    invoke-direct {v4, p0, v5}, Lcom/google/android/apps/plus/ads/PlusOneActivity$ReportAbuseClickListener;-><init>(Lcom/google/android/apps/plus/ads/PlusOneActivity;Lcom/google/android/apps/plus/ads/PlusOneActivity$1;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    invoke-direct {p0}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->displayUserName()V

    .line 176
    invoke-direct {p0}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->displayUserAvatar()V

    .line 177
    invoke-direct {p0}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->displayTitle()V

    .line 179
    :try_start_56
    invoke-direct {p0}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->displayAppNameAndIcon()V
    :try_end_59
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_56 .. :try_end_59} :catch_a2

    .line 185
    :try_start_59
    iget-object v3, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mEntity:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->displayInterface(Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5e} :catch_aa

    .line 191
    const v3, 0x7f0d003f

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 193
    .local v2, friendsLayout:Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    if-nez p1, :cond_73

    .line 196
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ADS_SHOW_PLUSONE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 199
    :cond_73
    invoke-virtual {p0}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    sget-object v4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v3, v6, v4, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 200
    invoke-virtual {p0}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x1

    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v3, v4, v5, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 201
    iget-object v3, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v4, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mEntity:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/google/android/apps/plus/service/EsService;->getAdPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I

    .line 203
    const-string v3, "delete"

    iget-object v4, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 205
    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 206
    .local v0, confirmButton:Landroid/widget/Button;
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_e

    .line 180
    .end local v0           #confirmButton:Landroid/widget/Button;
    .end local v2           #friendsLayout:Landroid/widget/LinearLayout;
    :catch_a2
    move-exception v1

    .line 181
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Failed to retreive third party packageInfo"

    invoke-direct {p0, v3, v1}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->logErrorAndFinish(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_e

    .line 186
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_aa
    move-exception v1

    .line 187
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Failed to display ad preview"

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->logErrorAndFinish(Ljava/lang/String;)V

    goto/16 :goto_e
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 9
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 448
    if-eqz p1, :cond_5

    .line 474
    :goto_4
    return-object v1

    .line 451
    :cond_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 452
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f070282

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mThirdPartyAppName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070284

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070283

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/apps/plus/ads/PlusOneActivity$2;

    invoke-direct {v3, p0}, Lcom/google/android/apps/plus/ads/PlusOneActivity$2;-><init>(Lcom/google/android/apps/plus/ads/PlusOneActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 474
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_4
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 10
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 645
    packed-switch p1, :pswitch_data_2c

    move-object v1, v2

    .line 655
    :goto_5
    return-object v1

    .line 647
    :pswitch_6
    new-instance v1, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;)V

    .line 648
    .local v1, loader:Lcom/google/android/apps/plus/phone/EsCursorLoader;
    iget-object v2, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mEntity:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/content/EsProvider;->buildAdPlusOneUri(Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 649
    .local v0, adUri:Landroid/net/Uri;
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/phone/EsCursorLoader;->setUri(Landroid/net/Uri;)V

    goto :goto_5

    .line 652
    .end local v0           #adUri:Landroid/net/Uri;
    .end local v1           #loader:Lcom/google/android/apps/plus/phone/EsCursorLoader;
    :pswitch_17
    new-instance v1, Lcom/google/android/apps/plus/fragments/PeopleListLoader;

    iget-object v3, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "name"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "gaia_id"

    aput-object v6, v4, v5

    invoke-direct {v1, p0, v3, v4, v2}, Lcom/google/android/apps/plus/fragments/PeopleListLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 645
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_17
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 7
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v1, 0x1

    .line 662
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v2

    if-eqz v2, :cond_8

    .line 686
    :cond_7
    :goto_7
    return-void

    .line 665
    :cond_8
    if-eqz p2, :cond_7

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 666
    const-string v2, "PlusOneActivity"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 667
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->dumpCursor(Landroid/database/Cursor;)V

    .line 671
    :cond_1c
    const-string v2, "delete"

    iget-object v3, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 672
    const-string v2, "plus_one_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mPlusOneId:Ljava/lang/String;

    .line 674
    const v2, 0x7f0d003d

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 675
    .local v0, confirmButton:Landroid/widget/Button;
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 679
    .end local v0           #confirmButton:Landroid/widget/Button;
    :cond_3e
    const-string v2, "global_count"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mGlobalCount:I

    .line 680
    const-string v2, "friend_names"

    invoke-static {p2, v2}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->deserializeShortStringList(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mFriendNames:Ljava/util/List;

    .line 681
    const-string v2, "friend_ids"

    invoke-static {p2, v2}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->deserializeShortStringList(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mFriendIds:Ljava/util/List;

    .line 682
    const-string v2, "set_by_viewer"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_6c

    :goto_66
    iput-boolean v1, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mSetByViewer:Z

    .line 684
    invoke-direct {p0}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->updateAnnotation()V

    goto :goto_7

    .line 682
    :cond_6c
    const/4 v1, 0x0

    goto :goto_66
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/ads/PlusOneActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 693
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const-string v0, "PlusOneActivity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 694
    const-string v0, "PlusOneActivity"

    const-string v1, "onLoadReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_10
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 141
    const-string v0, "share_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mEntity:Ljava/lang/String;

    .line 142
    const-string v0, "third_party_app_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mThirdPartyAppName:Ljava/lang/String;

    .line 143
    const-string v0, "third_party_package_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mThirdPartyPackageName:Ljava/lang/String;

    .line 144
    const-string v0, "third_party_installer_package_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mThirdPartyInstallerPackageName:Ljava/lang/String;

    .line 146
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mAction:Ljava/lang/String;

    .line 147
    const-string v0, "plus_one_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mPlusOneId:Ljava/lang/String;

    .line 148
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 318
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 319
    iget-object v0, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/phone/SignOnActivity;->finishIfNoAccount(Landroid/app/Activity;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 322
    :cond_b
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 126
    const-string v0, "share_token"

    iget-object v1, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mEntity:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v0, "third_party_app_name"

    iget-object v1, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mThirdPartyAppName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v0, "third_party_package_name"

    iget-object v1, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mThirdPartyPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v0, "third_party_installer_package_name"

    iget-object v1, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mThirdPartyInstallerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v0, "action"

    iget-object v1, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v0, "plus_one_id"

    iget-object v1, p0, Lcom/google/android/apps/plus/ads/PlusOneActivity;->mPlusOneId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method
