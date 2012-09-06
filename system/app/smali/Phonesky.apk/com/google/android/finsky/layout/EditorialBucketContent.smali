.class public Lcom/google/android/finsky/layout/EditorialBucketContent;
.super Landroid/widget/RelativeLayout;
.source "EditorialBucketContent.java"

# interfaces
.implements Lcom/google/android/finsky/installer/InstallerListener;


# instance fields
.field private final mBitmapLoadedHandler:Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;

.field protected mBuyButton:Landroid/widget/TextView;

.field protected mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

.field protected mDescription:Landroid/widget/TextView;

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field protected mThumbnail:Lcom/google/android/finsky/layout/SmartThumbnailView;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 50
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/EditorialBucketContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/EditorialBucketContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v0, Lcom/google/android/finsky/layout/EditorialBucketContent$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/EditorialBucketContent$1;-><init>(Lcom/google/android/finsky/layout/EditorialBucketContent;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mBitmapLoadedHandler:Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;

    .line 59
    return-void
.end method

.method private updatePurchaseButton(Ljava/lang/String;)V
    .registers 7
    .parameter "referrer"

    .prologue
    const/4 v4, 0x0

    .line 174
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->hasContainerAnnotation()Z

    move-result v1

    if-nez v1, :cond_27

    .line 175
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 176
    .local v0, account:Landroid/accounts/Account;
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mDocument:Lcom/google/android/finsky/api/model/Document;

    iget-object v2, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mBuyButton:Landroid/widget/TextView;

    invoke-static {v1, v4, v2}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->stylePurchaseButton(Lcom/google/android/finsky/api/model/Document;ZLandroid/widget/TextView;)V

    .line 177
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mDocument:Lcom/google/android/finsky/api/model/Document;

    iget-object v2, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mBuyButton:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {v1, v2, v0, v3, p1}, Lcom/google/android/finsky/utils/PurchaseButtonHelper;->setPurchaseOrOpenClickListener(Lcom/google/android/finsky/api/model/Document;Landroid/widget/TextView;Landroid/accounts/Account;Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mBuyButton:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    .end local v0           #account:Landroid/accounts/Account;
    :goto_26
    return-void

    .line 182
    :cond_27
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mBuyButton:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_26
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 74
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 76
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/finsky/receivers/Installer;->addListener(Lcom/google/android/finsky/installer/InstallerListener;)V

    .line 77
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 81
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 83
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/finsky/receivers/Installer;->removeListener(Lcom/google/android/finsky/installer/InstallerListener;)V

    .line 84
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 63
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 65
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EditorialBucketContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/SmartThumbnailView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mThumbnail:Lcom/google/android/finsky/layout/SmartThumbnailView;

    .line 66
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EditorialBucketContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mTitle:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EditorialBucketContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/DecoratedTextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    .line 68
    const v0, 0x7f0800aa

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EditorialBucketContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mBuyButton:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f080109

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/EditorialBucketContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mDescription:Landroid/widget/TextView;

    .line 70
    return-void
.end method

.method public onInstallPackageEvent(Ljava/lang/String;Lcom/google/android/finsky/installer/InstallerListener$InstallerPackageEvent;I)V
    .registers 5
    .parameter "packageName"
    .parameter "event"
    .parameter "statusCode"

    .prologue
    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/EditorialBucketContent;->updatePurchaseButton(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 11
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 167
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/DecoratedTextView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/DecoratedTextView;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/DecoratedTextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v4}, Lcom/google/android/finsky/layout/DecoratedTextView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/layout/DecoratedTextView;->layout(IIII)V

    .line 171
    return-void
.end method

.method protected onMeasure(II)V
    .registers 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, 0x4000

    .line 147
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 150
    iget-object v7, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v7}, Lcom/google/android/finsky/layout/DecoratedTextView;->getMeasuredWidth()I

    move-result v4

    .line 151
    .local v4, devNameWidth:I
    iget-object v7, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    .line 152
    .local v5, titleHeight:I
    iget-object v7, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mBuyButton:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    .line 153
    .local v1, buyButtonWidth:I
    iget-object v7, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mBuyButton:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    .line 155
    .local v0, buyButtonHeight:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 157
    .local v6, totalWidth:I
    add-int v7, v1, v4

    if-lt v7, v6, :cond_3c

    if-ge v5, v0, :cond_3c

    .line 158
    iget-object v7, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v7}, Lcom/google/android/finsky/layout/DecoratedTextView;->getMeasuredHeight()I

    move-result v2

    .line 159
    .local v2, devNameMeasuredHeight:I
    sub-int v3, v6, v1

    .line 160
    .local v3, devNameNewWidth:I
    iget-object v7, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/google/android/finsky/layout/DecoratedTextView;->measure(II)V

    .line 163
    .end local v2           #devNameMeasuredHeight:I
    .end local v3           #devNameNewWidth:I
    :cond_3c
    return-void
.end method

.method public setDocument(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V
    .registers 11
    .parameter "bitmapLoader"
    .parameter "navigationManager"
    .parameter "document"
    .parameter "referrer"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 95
    iput-object p3, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 96
    iput-object p2, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 98
    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/EditorialBucketContent;->setTitle(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    const/4 v2, -0x1

    invoke-static {p3, p1, v1, v2}, Lcom/google/android/finsky/utils/BadgeUtils;->configureCreatorBadge(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/DecoratedTextView;I)V

    .line 103
    invoke-direct {p0, p4}, Lcom/google/android/finsky/layout/EditorialBucketContent;->updatePurchaseButton(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/Document;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mThumbnail:Lcom/google/android/finsky/layout/SmartThumbnailView;

    new-array v2, v5, [I

    fill-array-data v2, :array_64

    invoke-virtual {v1, p3, p1, v2}, Lcom/google/android/finsky/layout/SmartThumbnailView;->bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;[I)V

    .line 108
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v1, v4}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    .line 111
    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getCorpusCellContentLongDescriptionResource(I)I

    move-result v0

    .line 113
    .local v0, descriptionStringId:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EditorialBucketContent;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-virtual {p3}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mBuyButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/EditorialBucketContent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 115
    return-void

    .line 106
    nop

    :array_64
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public setMockDocument(I)V
    .registers 6
    .parameter "backend"

    .prologue
    const/16 v3, 0x8

    .line 118
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f0700f5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 119
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mCreator:Lcom/google/android/finsky/layout/DecoratedTextView;

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    .line 120
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mBuyButton:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mThumbnail:Lcom/google/android/finsky/layout/SmartThumbnailView;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/EditorialBucketContent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPlaceholderPromo(ILandroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/SmartThumbnailView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 124
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mThumbnail:Lcom/google/android/finsky/layout/SmartThumbnailView;

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/SmartThumbnailView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 125
    .local v0, oldContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    if-eqz v0, :cond_33

    .line 126
    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    .line 127
    const/4 v0, 0x0

    .line 129
    :cond_33
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mThumbnail:Lcom/google/android/finsky/layout/SmartThumbnailView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/SmartThumbnailView;->setTag(Ljava/lang/Object;)V

    .line 130
    iget-object v1, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mThumbnail:Lcom/google/android/finsky/layout/SmartThumbnailView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/SmartThumbnailView;->setVisibility(I)V

    .line 131
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3
    .parameter "title"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    return-void
.end method

.method public setTitleColor(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/finsky/layout/EditorialBucketContent;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    return-void
.end method
