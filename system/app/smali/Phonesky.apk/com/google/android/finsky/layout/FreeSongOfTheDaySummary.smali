.class public Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;
.super Landroid/widget/LinearLayout;
.source "FreeSongOfTheDaySummary.java"


# instance fields
.field private mBuyButton:Landroid/widget/Button;

.field private final mConnection:Lcom/google/android/finsky/previews/PreviewController;

.field private mCreator:Landroid/widget/TextView;

.field private mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

.field private final mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    new-instance v0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$3;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$3;-><init>(Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    .line 39
    new-instance v0, Lcom/google/android/finsky/previews/PreviewController;

    iget-object v1, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/previews/PreviewController;-><init>(Lcom/google/android/finsky/previews/StatusListener;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;)Lcom/google/android/finsky/previews/PreviewController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;)Lcom/google/android/finsky/layout/SongIndex;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->setHighlighted(Z)V

    return-void
.end method

.method private setHighlighted(Z)V
    .registers 10
    .parameter "isHighlighted"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 91
    const/4 v2, 0x4

    new-array v0, v2, [I

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->getPaddingLeft()I

    move-result v2

    aput v2, v0, v4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->getPaddingTop()I

    move-result v2

    aput v2, v0, v5

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->getPaddingRight()I

    move-result v2

    aput v2, v0, v6

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->getPaddingBottom()I

    move-result v2

    aput v2, v0, v7

    .line 98
    .local v0, paddings:[I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 99
    .local v1, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_4b

    .line 100
    const v2, 0x7f0a0033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->setBackgroundColor(I)V

    .line 101
    iget-object v2, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mCreator:Landroid/widget/TextView;

    const v3, 0x106000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    :goto_3f
    aget v2, v0, v4

    aget v3, v0, v5

    aget v4, v0, v6

    aget v5, v0, v7

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->setPadding(IIII)V

    .line 108
    return-void

    .line 103
    :cond_4b
    const v2, 0x7f0200b7

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->setBackgroundResource(I)V

    .line 104
    iget-object v2, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mCreator:Landroid/widget/TextView;

    const v3, 0x7f0a0007

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3f
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/PreviewController;->unbind()V

    .line 87
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 88
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 44
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 46
    const v0, 0x7f08007b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mTitle:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0800bc

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mCreator:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0800a4

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mBuyButton:Landroid/widget/Button;

    .line 49
    const v0, 0x7f08010e

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/SongIndex;

    iput-object v0, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    .line 50
    return-void
.end method

.method public showSummary(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "doc"
    .parameter "navManager"
    .parameter "referrer"
    .parameter "externalReferrer"

    .prologue
    .line 54
    iget-object v1, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mCreator:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/finsky/api/model/Document;->ownedByUser(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 57
    iget-object v1, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mBuyButton:Landroid/widget/Button;

    const v2, 0x7f070112

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 58
    iget-object v1, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mBuyButton:Landroid/widget/Button;

    new-instance v2, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$1;-><init>(Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    :goto_2b
    iget-object v1, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/SongIndex;->setState(I)V

    .line 73
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getSongDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    move-result-object v0

    .line 74
    .local v0, song:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    new-instance v1, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary$2;-><init>(Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;)V

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-static {p2}, Lcom/google/android/finsky/previews/PreviewController;->setupOnBackStackChangedListener(Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 82
    return-void

    .line 65
    .end local v0           #song:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    :cond_41
    iget-object v1, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getFormattedPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, p0, Lcom/google/android/finsky/layout/FreeSongOfTheDaySummary;->mBuyButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {p2, p1, v2, p3, p4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->getBuyImmediateClickListener(Lcom/google/android/finsky/api/model/Document;ILjava/lang/String;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2b
.end method
