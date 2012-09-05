.class public Lcom/google/android/finsky/layout/SongSnippet;
.super Lcom/google/android/finsky/layout/CheckedRelativeLayout;
.source "SongSnippet.java"

# interfaces
.implements Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;


# instance fields
.field private mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

.field private mBuyButton:Landroid/widget/Button;

.field private final mConnection:Lcom/google/android/finsky/previews/PreviewController;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mShouldShowArtistName:Z

.field private mSongDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

.field private mSongDocument:Lcom/google/android/finsky/api/model/Document;

.field private mSongDuration:Landroid/widget/TextView;

.field private mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

.field private mSongSubTitle:Landroid/widget/TextView;

.field private mSongTitle:Landroid/widget/TextView;

.field private final mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

.field private mTrackNumber:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 231
    new-instance v0, Lcom/google/android/finsky/layout/SongSnippet$4;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/SongSnippet$4;-><init>(Lcom/google/android/finsky/layout/SongSnippet;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    .line 54
    new-instance v0, Lcom/google/android/finsky/previews/PreviewController;

    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/previews/PreviewController;-><init>(Lcom/google/android/finsky/previews/StatusListener;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/api/model/Document;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/api/model/Document;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/previews/PreviewController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/layout/SongSnippet;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/finsky/layout/SongSnippet;->resetUI()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/layout/SongIndex;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/layout/SongSnippet;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/SongSnippet;->setHighlighted(Z)V

    return-void
.end method

.method private resetUI()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-direct {p0, v1}, Lcom/google/android/finsky/layout/SongSnippet;->setHighlighted(Z)V

    .line 171
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/SongIndex;->setState(I)V

    .line 172
    return-void
.end method

.method private setHighlighted(Z)V
    .registers 7
    .parameter "isHighlighted"

    .prologue
    const v4, 0x7f0a0007

    const v3, 0x106000b

    .line 175
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SongSnippet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 176
    .local v0, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_3c

    .line 177
    const v1, 0x7f0a0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/SongSnippet;->setBackgroundColor(I)V

    .line 178
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongSubTitle:Landroid/widget/TextView;

    const v2, 0x7f0a0003

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDuration:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    :goto_38
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/SongSnippet;->setSelected(Z)V

    .line 188
    return-void

    .line 182
    :cond_3c
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/SongSnippet;->setBackgroundColor(I)V

    .line 183
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongTitle:Landroid/widget/TextView;

    const v2, 0x7f0a0006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDuration:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_38
.end method

.method private updateBuyButtonState(Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;)V
    .registers 9
    .parameter "status"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0701ff

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 200
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 201
    if-eqz p1, :cond_22

    iget-object v0, p1, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;->state:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    sget-object v1, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->PURCHASE_INITIATED:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    if-ne v0, v1, :cond_22

    .line 202
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    const v1, 0x7f070166

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 203
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 229
    :goto_21
    return-void

    .line 204
    :cond_22
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v6}, Lcom/google/android/finsky/api/model/Document;->ownedByUser(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v6}, Lcom/google/android/finsky/api/model/Document;->ownedByUser(Lcom/google/android/finsky/utils/PackageInfoCache;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 206
    :cond_36
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    const v1, 0x7f070112

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 207
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_21

    .line 208
    :cond_44
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 209
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getFormattedPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_21

    .line 211
    :cond_5d
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/Document;->isAvailable(Lcom/google/android/finsky/api/model/DfeToc;)Z

    move-result v0

    if-nez v0, :cond_87

    .line 212
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 213
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAvailabilityRestriction()I

    move-result v0

    packed-switch v0, :pswitch_data_a6

    .line 218
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_21

    .line 215
    :pswitch_81
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_21

    .line 222
    :cond_87
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_9e

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v0

    if-eqz v0, :cond_9e

    .line 223
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 224
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_21

    .line 226
    :cond_9e
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_21

    .line 213
    nop

    :pswitch_data_a6
    .packed-switch 0xd
        :pswitch_81
    .end packed-switch
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    .line 59
    invoke-super {p0}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;->onAttachedToWindow()V

    .line 61
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getSongDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    .line 62
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    move-result-object v0

    .line 63
    .local v0, musicDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    if-nez v0, :cond_19

    .line 64
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/layout/SongSnippet;->setVisibility(I)V

    .line 118
    :cond_18
    :goto_18
    return-void

    .line 68
    :cond_19
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    iget v2, p0, Lcom/google/android/finsky/layout/SongSnippet;->mTrackNumber:I

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/SongIndex;->setTrackNumber(I)V

    .line 69
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDuration:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getDurationSec()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-boolean v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mShouldShowArtistName:Z

    if-eqz v1, :cond_97

    .line 73
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongSubTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :goto_48
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getPurchaseStatusTracker()Lcom/google/android/finsky/model/PurchaseStatusTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->attach(Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;)V

    .line 79
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getPurchaseStatusTracker()Lcom/google/android/finsky/model/PurchaseStatusTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->getPurchaseStatus(Ljava/lang/String;)Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/layout/SongSnippet;->updateBuyButtonState(Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;)V

    .line 82
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    new-instance v2, Lcom/google/android/finsky/layout/SongSnippet$1;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/layout/SongSnippet$1;-><init>(Lcom/google/android/finsky/layout/SongSnippet;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/SongIndex;->setClickable(Z)V

    .line 97
    new-instance v1, Lcom/google/android/finsky/layout/SongSnippet$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/SongSnippet$2;-><init>(Lcom/google/android/finsky/layout/SongSnippet;)V

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/SongSnippet;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    sget-object v1, Lcom/google/android/finsky/config/G;->prePurchaseSharingEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 105
    new-instance v1, Lcom/google/android/finsky/layout/SongSnippet$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/SongSnippet$3;-><init>(Lcom/google/android/finsky/layout/SongSnippet;)V

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/SongSnippet;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_18

    .line 75
    :cond_97
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongSubTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_48
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 122
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getPurchaseStatusTracker()Lcom/google/android/finsky/model/PurchaseStatusTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/model/PurchaseStatusTracker;->detach(Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatusListener;)V

    .line 123
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/PreviewController;->unbind()V

    .line 124
    invoke-super {p0}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;->onDetachedFromWindow()V

    .line 125
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 129
    invoke-super {p0}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;->onFinishInflate()V

    .line 131
    const v0, 0x7f08010e

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/SongIndex;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    .line 132
    const v0, 0x7f0800a4

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    .line 133
    const v0, 0x7f08013b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDuration:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f08013c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongTitle:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f08013d

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongSubTitle:Landroid/widget/TextView;

    .line 136
    return-void
.end method

.method public onPurchaseStatusChanged(Ljava/lang/String;Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;)V
    .registers 4
    .parameter "docId"
    .parameter "status"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 195
    :cond_1c
    invoke-direct {p0, p2}, Lcom/google/android/finsky/layout/SongSnippet;->updateBuyButtonState(Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseStatus;)V

    .line 197
    :cond_1f
    return-void
.end method

.method public setSongDetails(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;IZLcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .registers 6
    .parameter "albumDocument"
    .parameter "songDocument"
    .parameter "trackNumber"
    .parameter "shouldShowArtistName"
    .parameter "navigationManager"

    .prologue
    .line 140
    iput-boolean p4, p0, Lcom/google/android/finsky/layout/SongSnippet;->mShouldShowArtistName:Z

    .line 141
    iput-object p1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

    .line 142
    iput-object p2, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    .line 143
    iput-object p5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 144
    iput p3, p0, Lcom/google/android/finsky/layout/SongSnippet;->mTrackNumber:I

    .line 145
    return-void
.end method

.method public setState(I)V
    .registers 4
    .parameter "state"

    .prologue
    .line 152
    packed-switch p1, :pswitch_data_1c

    .line 164
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/SongIndex;->setState(I)V

    .line 167
    :goto_9
    return-void

    .line 154
    :pswitch_a
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/SongSnippet;->setHighlighted(Z)V

    .line 155
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/SongIndex;->setState(I)V

    goto :goto_9

    .line 159
    :pswitch_15
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/SongIndex;->setState(I)V

    goto :goto_9

    .line 152
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_15
        :pswitch_a
    .end packed-switch
.end method
