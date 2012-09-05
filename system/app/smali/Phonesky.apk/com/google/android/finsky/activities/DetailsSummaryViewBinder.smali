.class public Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;
.super Ljava/lang/Object;
.source "DetailsSummaryViewBinder.java"

# interfaces
.implements Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$3;
    }
.end annotation


# static fields
.field private static final NUMBER_FORMATTER:Ljava/text/NumberFormat;


# instance fields
.field protected final mAccountName:Ljava/lang/String;

.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field protected mButtonSection:Landroid/view/View;

.field protected mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

.field protected mContext:Landroid/content/Context;

.field protected mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

.field protected mDoc:Lcom/google/android/finsky/api/model/Document;

.field protected mDynamicSection:Landroid/view/ViewGroup;

.field protected mExternalReferrer:Ljava/lang/String;

.field protected mHideDynamicFeatures:Z

.field protected mIsPendingRefund:Z

.field private mLayouts:[Landroid/view/View;

.field protected mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field protected mPurchaseStatusTracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;

.field protected mReferrer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 101
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->NUMBER_FORMATTER:Ljava/text/NumberFormat;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/finsky/api/model/DfeToc;)V
    .registers 3
    .parameter "dfeToc"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mAccountName:Ljava/lang/String;

    .line 105
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 106
    return-void
.end method

.method private bindImage()V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 202
    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 203
    .local v7, iv:Landroid/widget/ImageView;
    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 204
    .local v4, width:I
    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 205
    .local v5, height:I
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    const/4 v3, 0x0

    invoke-static {v0, v4, v3}, Lcom/google/android/finsky/utils/ThumbnailUtils;->getIconUrlFromDocument(Lcom/google/android/finsky/api/model/Document;II)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, url:Ljava/lang/String;
    if-eqz v1, :cond_38

    .line 209
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    new-instance v3, Lcom/google/android/finsky/layout/ThumbnailListener;

    const/4 v8, 0x1

    invoke-direct {v3, v7, v2, v8}, Lcom/google/android/finsky/layout/ThumbnailListener;-><init>(Landroid/widget/ImageView;Landroid/view/View;Z)V

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v6

    .line 211
    .local v6, container:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    invoke-virtual {v6}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 212
    invoke-virtual {v6}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 215
    .end local v6           #container:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    :cond_38
    return-void
.end method

.method private getOpenButtonStringId()I
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 276
    :pswitch_9
    const v0, 0x7f070110

    :goto_c
    return v0

    .line 272
    :pswitch_d
    const v0, 0x7f0700f4

    goto :goto_c

    .line 274
    :pswitch_11
    const v0, 0x7f070112

    goto :goto_c

    .line 270
    nop

    :pswitch_data_16
    .packed-switch 0x2
        :pswitch_11
        :pswitch_9
        :pswitch_d
    .end packed-switch
.end method

.method private isPendingPurchase()Z
    .registers 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mPurchaseStatusTracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mPurchaseStatusTracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->isPendingPurchase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private showWaitingForTickle()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 498
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDynamicSection:Landroid/view/ViewGroup;

    const v2, 0x7f0800e3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 499
    .local v0, downloadPending:Landroid/view/View;
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDynamicSection:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 500
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 501
    const v1, 0x7f0800df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$2;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$2;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    return-void
.end method


# virtual methods
.method public varargs bind(Lcom/google/android/finsky/api/model/Document;Z[Landroid/view/View;)V
    .registers 5
    .parameter "document"
    .parameter "bindDynamicSection"
    .parameter "views"

    .prologue
    .line 125
    iput-object p3, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mLayouts:[Landroid/view/View;

    .line 126
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 128
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->setupItemDetails()V

    .line 131
    if-eqz p2, :cond_28

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasDetails()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 132
    const v0, 0x7f0800e1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDynamicSection:Landroid/view/ViewGroup;

    .line 133
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mButtonSection:Landroid/view/View;

    .line 134
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->syncDynamicSection()V

    .line 136
    :cond_28
    return-void
.end method

.method protected findViewById(I)Landroid/view/View;
    .registers 7
    .parameter "id"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mLayouts:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v4, :cond_14

    aget-object v3, v0, v2

    .line 140
    .local v3, layout:Landroid/view/View;
    if-nez v3, :cond_d

    .line 139
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 143
    :cond_d
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 144
    .local v1, found:Landroid/view/View;
    if-eqz v1, :cond_a

    .line 148
    .end local v1           #found:Landroid/view/View;
    .end local v3           #layout:Landroid/view/View;
    :goto_13
    return-object v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method protected getBuyButtonString(ZI)Ljava/lang/String;
    .registers 7
    .parameter "isOwnedByUser"
    .parameter "offerType"

    .prologue
    .line 239
    if-eqz p1, :cond_c

    .line 240
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    const v3, 0x7f0700f5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 261
    :cond_b
    :goto_b
    return-object v1

    .line 244
    :cond_c
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2, p2}, Lcom/google/android/finsky/api/model/Document;->needsCheckoutFlow(I)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 245
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_27

    .line 248
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    const v3, 0x7f07010e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    .line 249
    :cond_27
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3a

    .line 252
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    const v3, 0x7f070110

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    .line 256
    :cond_3a
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getFormattedPrice()Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, price:Ljava/lang/String;
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 258
    const-string v2, "\\(|\\)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, parts:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v1, v0, v2

    goto :goto_b
.end method

.method public hideDynamicFeatures()V
    .registers 2

    .prologue
    .line 514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mHideDynamicFeatures:Z

    .line 515
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/fragments/PageFragment;ZZLjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "context"
    .parameter "navManager"
    .parameter "bitmapLoader"
    .parameter "fragment"
    .parameter "trackPurchaseStatus"
    .parameter "trackPackageStatus"
    .parameter "referrer"
    .parameter "externalReferrer"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 113
    iput-object p3, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 114
    iput-object p4, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

    .line 115
    iput-object p7, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mReferrer:Ljava/lang/String;

    .line 116
    iput-object p8, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mExternalReferrer:Ljava/lang/String;

    .line 117
    if-eqz p5, :cond_22

    .line 118
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getPurchaseStatusTracker()Lcom/google/android/finsky/model/PurchaseStatusTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mPurchaseStatusTracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;

    .line 119
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mPurchaseStatusTracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->detach(Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;)V

    .line 120
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mPurchaseStatusTracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->attach(Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;)V

    .line 122
    :cond_22
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mPurchaseStatusTracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;

    if-eqz v0, :cond_9

    .line 416
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mPurchaseStatusTracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->detach(Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;)V

    .line 418
    :cond_9
    return-void
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .registers 3
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 529
    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .registers 3
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 522
    return-void
.end method

.method public onPurchaseStatusChanged(Ljava/lang/String;Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;)V
    .registers 6
    .parameter "docId"
    .parameter "status"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/fragments/PageFragment;->isSaveInstanceStateCalled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 412
    :cond_8
    :goto_8
    :pswitch_8
    return-void

    .line 390
    :cond_9
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 393
    sget-object v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$3;->$SwitchMap$com$google$android$finsky$model$PurchaseStatusTracker$PurchaseState:[I

    iget-object v1, p2, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;->state:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    invoke-virtual {v1}, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_44

    goto :goto_8

    .line 397
    :pswitch_23
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3f

    .line 398
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget v1, p2, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;->offerType:I

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/Document;->needsCheckoutFlow(I)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 399
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->openItem(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V

    .line 409
    :cond_3f
    :pswitch_3f
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->refreshFragment()V

    goto :goto_8

    .line 393
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_8
        :pswitch_23
        :pswitch_3f
    .end packed-switch
.end method

.method public refresh()V
    .registers 4

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mLayouts:[Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->bind(Lcom/google/android/finsky/api/model/Document;Z[Landroid/view/View;)V

    .line 153
    return-void
.end method

.method protected refreshFragment()V
    .registers 5

    .prologue
    .line 364
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$1;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 372
    return-void
.end method

.method protected resetDynamicStatus()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    .line 421
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDynamicSection:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 422
    .local v0, dynChildCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v0, :cond_17

    .line 423
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDynamicSection:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 422
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 425
    :cond_17
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDynamicSection:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 426
    return-void
.end method

.method protected setupActionButtons(Z)V
    .registers 13
    .parameter "isInTransientState"

    .prologue
    const/4 v10, 0x0

    const/16 v6, 0x8

    .line 288
    const v5, 0x7f0800a9

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 289
    .local v4, tryButton:Landroid/widget/Button;
    const v5, 0x7f0800a4

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 290
    .local v0, buyButton:Landroid/widget/Button;
    const v5, 0x7f0800cb

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 291
    .local v1, buyButton2:Landroid/widget/Button;
    const v5, 0x7f08001c

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 294
    .local v2, launchButton:Landroid/widget/Button;
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 295
    if-eqz v4, :cond_2f

    .line 296
    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 298
    :cond_2f
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 299
    if-eqz v1, :cond_37

    .line 300
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 303
    :cond_37
    iget-boolean v5, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mHideDynamicFeatures:Z

    if-eqz v5, :cond_3c

    .line 361
    :cond_3b
    :goto_3b
    return-void

    .line 307
    :cond_3c
    if-nez p1, :cond_3b

    .line 314
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->isPendingPurchase()Z

    move-result v5

    if-nez v5, :cond_3b

    .line 322
    if-nez p1, :cond_3b

    .line 329
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoCache()Lcom/google/android/finsky/utils/PackageInfoCache;

    move-result-object v3

    .line 330
    .local v3, packageInfoCache:Lcom/google/android/finsky/utils/PackageInfoCache;
    iget-object v5, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5, v3}, Lcom/google/android/finsky/api/model/Document;->ownedByUser(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 331
    invoke-virtual {v2, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 332
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->getOpenButtonStringId()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(I)V

    .line 333
    iget-object v5, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v7, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mAccountName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getOpenClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    :cond_6d
    :goto_6d
    iget-object v5, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mButtonSection:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 356
    if-eqz v4, :cond_83

    .line 357
    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 359
    :cond_83
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 360
    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3b

    .line 335
    :cond_a2
    iget-object v5, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/api/model/Document;->isAvailable(Lcom/google/android/finsky/api/model/DfeToc;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 337
    iget-object v5, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5, v3}, Lcom/google/android/finsky/api/model/Document;->ownedByUser(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v5

    invoke-virtual {p0, v0, v1, v5}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->setupBuyButtons(Landroid/widget/Button;Landroid/widget/Button;Z)V

    .line 339
    iget-object v5, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->hasSample()Z

    move-result v5

    if-eqz v5, :cond_6d

    if-eqz v4, :cond_6d

    .line 340
    invoke-virtual {v4, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 341
    iget-object v5, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->sampleOwnedByUser()Z

    move-result v5

    if-eqz v5, :cond_d8

    .line 342
    iget-object v5, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v7, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mAccountName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getOpenClickListener(Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6d

    .line 345
    :cond_d8
    iget-object v5, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mReferrer:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mExternalReferrer:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6d
.end method

.method protected setupBuyButtons(Landroid/widget/Button;Landroid/widget/Button;Z)V
    .registers 9
    .parameter "buyButton"
    .parameter "buyButtonSecondary"
    .parameter "isOwnedByUser"

    .prologue
    const/4 v4, 0x1

    .line 227
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 228
    invoke-virtual {p0, p3, v4}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->getBuyButtonString(ZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mReferrer:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mExternalReferrer:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    return-void
.end method

.method protected setupItemDetails()V
    .registers 12

    .prologue
    .line 161
    const v7, 0x7f08007b

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 162
    .local v6, title:Landroid/widget/TextView;
    if-eqz v6, :cond_18

    .line 163
    iget-object v7, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 169
    :cond_18
    const v7, 0x7f0800bc

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/DecoratedTextView;

    .line 170
    .local v1, creator:Lcom/google/android/finsky/layout/DecoratedTextView;
    if-eqz v1, :cond_37

    .line 171
    iget-object v7, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v7, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-static {v7, v8, v1}, Lcom/google/android/finsky/utils/BadgeUtils;->configureCreatorBadge(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/DecoratedTextView;)V

    .line 176
    :cond_37
    const v7, 0x7f0800bd

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 177
    .local v2, creatorArrow:Landroid/widget/ImageView;
    if-eqz v2, :cond_50

    .line 178
    if-eqz v1, :cond_9f

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/DecoratedTextView;->useWhitescale()Z

    move-result v7

    if-eqz v7, :cond_9f

    const v0, 0x7f020069

    .line 180
    .local v0, arrowResourceId:I
    :goto_4d
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    .end local v0           #arrowResourceId:I
    :cond_50
    const v7, 0x7f0800b4

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 185
    .local v4, ratingGroup:Landroid/view/View;
    if-eqz v4, :cond_9b

    .line 186
    const v7, 0x7f0800b5

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RatingBar;

    .line 187
    .local v3, ratingBar:Landroid/widget/RatingBar;
    const v7, 0x7f0800b6

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 189
    .local v5, reviewNumberView:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->hasRating()Z

    move-result v7

    if-eqz v7, :cond_a3

    iget-object v7, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getRatingCount()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_a3

    .line 190
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object v7, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/Document;->getStarRating()F

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/RatingBar;->setRating(F)V

    .line 192
    sget-object v7, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->NUMBER_FORMATTER:Ljava/text/NumberFormat;

    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v8}, Lcom/google/android/finsky/api/model/Document;->getRatingCount()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    .end local v3           #ratingBar:Landroid/widget/RatingBar;
    .end local v5           #reviewNumberView:Landroid/widget/TextView;
    :cond_9b
    :goto_9b
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->bindImage()V

    .line 198
    return-void

    .line 178
    .end local v4           #ratingGroup:Landroid/view/View;
    :cond_9f
    const v0, 0x7f020068

    goto :goto_4d

    .line 194
    .restart local v3       #ratingBar:Landroid/widget/RatingBar;
    .restart local v4       #ratingGroup:Landroid/view/View;
    .restart local v5       #reviewNumberView:Landroid/widget/TextView;
    :cond_a3
    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9b
.end method

.method protected showDynamicStatus(I)V
    .registers 3
    .parameter "statusStringId"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->showDynamicStatus(Ljava/lang/String;)V

    .line 495
    return-void
.end method

.method protected showDynamicStatus(Ljava/lang/String;)V
    .registers 6
    .parameter "statusString"

    .prologue
    const/4 v3, 0x0

    .line 485
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDynamicSection:Landroid/view/ViewGroup;

    const v2, 0x7f0800e4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 488
    .local v0, dynamicStatus:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDynamicSection:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 489
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 490
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    return-void
.end method

.method protected syncDynamicSection()V
    .registers 10

    .prologue
    .line 429
    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, docId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->resetDynamicStatus()V

    .line 432
    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v7, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/api/model/Document;->isAvailable(Lcom/google/android/finsky/api/model/DfeToc;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 434
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->hideDynamicFeatures()V

    .line 437
    :cond_16
    iget-boolean v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mHideDynamicFeatures:Z

    if-eqz v6, :cond_1b

    .line 482
    :goto_1a
    return-void

    .line 441
    :cond_1b
    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDynamicSection:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v8}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v8

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 444
    iget-boolean v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mIsPendingRefund:Z

    if-eqz v6, :cond_37

    .line 445
    const v6, 0x7f07016b

    invoke-virtual {p0, v6}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->showDynamicStatus(I)V

    goto :goto_1a

    .line 448
    :cond_37
    const/4 v3, 0x0

    .line 449
    .local v3, isInTransientState:Z
    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mPurchaseStatusTracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;

    if-eqz v6, :cond_79

    .line 450
    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mPurchaseStatusTracker:Lcom/google/android/finsky/model/PurchaseStatusTracker;

    invoke-virtual {v6, v0}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->getPurchaseStatus(Ljava/lang/String;)Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;

    move-result-object v5

    .line 451
    .local v5, purchaseStatus:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;
    if-eqz v5, :cond_79

    .line 453
    const/4 v2, 0x0

    .line 455
    .local v2, involvesMoney:Z
    iget v6, v5, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;->offerType:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_6c

    .line 456
    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_54
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 457
    .local v4, offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getOfferType()I

    move-result v6

    iget v7, v5, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;->offerType:I

    if-ne v6, v7, :cond_54

    .line 458
    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getCheckoutFlowRequired()Z

    move-result v2

    .line 463
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :cond_6c
    sget-object v6, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$3;->$SwitchMap$com$google$android$finsky$model$PurchaseStatusTracker$PurchaseState:[I

    iget-object v7, v5, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;->state:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    invoke-virtual {v7}, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_9a

    .line 481
    .end local v2           #involvesMoney:Z
    .end local v5           #purchaseStatus:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;
    :cond_79
    :goto_79
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->setupActionButtons(Z)V

    goto :goto_1a

    .line 465
    .restart local v2       #involvesMoney:Z
    .restart local v5       #purchaseStatus:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;
    :pswitch_7d
    if-eqz v2, :cond_87

    const v6, 0x7f070165

    :goto_82
    invoke-virtual {p0, v6}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->showDynamicStatus(I)V

    .line 467
    const/4 v3, 0x1

    .line 468
    goto :goto_79

    .line 465
    :cond_87
    const v6, 0x7f07015f

    goto :goto_82

    .line 470
    :pswitch_8b
    iget-object v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_79

    .line 471
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->showWaitingForTickle()V

    .line 472
    const/4 v3, 0x1

    goto :goto_79

    .line 463
    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_7d
        :pswitch_8b
    .end packed-switch
.end method
