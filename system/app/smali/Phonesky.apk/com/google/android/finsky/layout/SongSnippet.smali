.class public Lcom/google/android/finsky/layout/SongSnippet;
.super Lcom/google/android/finsky/layout/CheckedRelativeLayout;
.source "SongSnippet.java"


# instance fields
.field private mAddedDrawable:Landroid/widget/ImageView;

.field private mAddedState:Landroid/widget/TextView;

.field private mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

.field private mBuyButton:Landroid/widget/Button;

.field private final mConnection:Lcom/google/android/finsky/previews/PreviewController;

.field private mInitialized:Z

.field private mIsNewPurchase:Z

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
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 264
    new-instance v0, Lcom/google/android/finsky/layout/SongSnippet$4;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/SongSnippet$4;-><init>(Lcom/google/android/finsky/layout/SongSnippet;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    .line 60
    new-instance v0, Lcom/google/android/finsky/previews/PreviewController;

    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/previews/PreviewController;-><init>(Lcom/google/android/finsky/previews/StatusListener;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/api/model/Document;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/previews/PreviewController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/finsky/layout/SongSnippet;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mInitialized:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/finsky/layout/SongSnippet;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/finsky/layout/SongSnippet;->resetUI()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/finsky/layout/SongSnippet;)Lcom/google/android/finsky/layout/SongIndex;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/layout/SongSnippet;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/SongSnippet;->setHighlighted(Z)V

    return-void
.end method

.method private resetUI()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 192
    invoke-direct {p0, v1}, Lcom/google/android/finsky/layout/SongSnippet;->setHighlighted(Z)V

    .line 193
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/SongIndex;->setState(I)V

    .line 194
    return-void
.end method

.method private setHighlighted(Z)V
    .registers 7
    .parameter "isHighlighted"

    .prologue
    const v4, 0x7f0a0006

    const v3, 0x106000b

    .line 197
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SongSnippet;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 198
    .local v0, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_38

    .line 199
    const v1, 0x7f0a0032

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/SongSnippet;->setBackgroundResource(I)V

    .line 200
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongSubTitle:Landroid/widget/TextView;

    const v2, 0x7f0a0002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDuration:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    :goto_34
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/SongSnippet;->setSelected(Z)V

    .line 210
    return-void

    .line 204
    :cond_38
    const v1, 0x7f020062

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/SongSnippet;->setBackgroundResource(I)V

    .line 205
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongTitle:Landroid/widget/TextView;

    const v2, 0x7f0a0005

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDuration:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_34
.end method

.method private updateAddedState()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 253
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mIsNewPurchase:Z

    if-eqz v0, :cond_17

    .line 254
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDuration:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAddedState:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAddedDrawable:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    :goto_16
    return-void

    .line 258
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDuration:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAddedState:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAddedDrawable:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_16
.end method

.method private updateBuyButtonState()V
    .registers 12

    .prologue
    const v10, 0x7f070235

    const/4 v7, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 213
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 214
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v5

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/finsky/library/Libraries;->getAccountLibrary(Landroid/accounts/Account;)Lcom/google/android/finsky/library/AccountLibrary;

    move-result-object v2

    .line 216
    .local v2, library:Lcom/google/android/finsky/library/Library;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 217
    .local v0, currentAccount:Landroid/accounts/Account;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v1

    .line 218
    .local v1, libraries:Lcom/google/android/finsky/library/Libraries;
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-static {v5, v1, v0}, Lcom/google/android/finsky/utils/LibraryUtils;->getOwnerWithCurrentAccount(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Libraries;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v3

    .line 220
    .local v3, owner:Landroid/accounts/Account;
    if-eqz v3, :cond_75

    .line 221
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    const v6, 0x7f020047

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 223
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getPaddingRight()I

    move-result v7

    invoke-virtual {v5, v6, v8, v7, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 224
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    const v6, 0x7f07012c

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 225
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 227
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SongSnippet;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 228
    .local v4, resources:Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    const v6, 0x7f0a0049

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 249
    .end local v4           #resources:Landroid/content/res/Resources;
    :goto_71
    invoke-direct {p0}, Lcom/google/android/finsky/layout/SongSnippet;->updateAddedState()V

    .line 250
    return-void

    .line 229
    :cond_75
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5, v9}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v5

    if-eqz v5, :cond_8e

    .line 230
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v6, v9}, Lcom/google/android/finsky/api/model/Document;->getFormattedPrice(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_71

    .line 232
    :cond_8e
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lcom/google/android/finsky/utils/LibraryUtils;->isAvailable(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/Library;)Z

    move-result v5

    if-nez v5, :cond_b8

    .line 233
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 234
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getAvailabilityRestriction()I

    move-result v5

    packed-switch v5, :pswitch_data_d6

    .line 239
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_71

    .line 236
    :pswitch_b2
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setText(I)V

    goto :goto_71

    .line 242
    :cond_b8
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

    if-eqz v5, :cond_cf

    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5, v9}, Lcom/google/android/finsky/api/model/Document;->getOffer(I)Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v5

    if-eqz v5, :cond_cf

    .line 244
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setText(I)V

    .line 245
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_71

    .line 247
    :cond_cf
    iget-object v5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_71

    .line 234
    nop

    :pswitch_data_d6
    .packed-switch 0xd
        :pswitch_b2
    .end packed-switch
.end method


# virtual methods
.method public initialize()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 167
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mInitialized:Z

    if-nez v0, :cond_a

    .line 168
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/SongSnippet;->setState(I)V

    .line 169
    iput-boolean v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mInitialized:Z

    .line 171
    :cond_a
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    .line 65
    invoke-super {p0}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;->onAttachedToWindow()V

    .line 67
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getSongDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    .line 68
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    move-result-object v0

    .line 69
    .local v0, musicDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    if-nez v0, :cond_19

    .line 70
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/layout/SongSnippet;->setVisibility(I)V

    .line 130
    :goto_18
    return-void

    .line 74
    :cond_19
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    iget v2, p0, Lcom/google/android/finsky/layout/SongSnippet;->mTrackNumber:I

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/SongIndex;->setTrackNumber(I)V

    .line 75
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDuration:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getDurationSec()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-boolean v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mShouldShowArtistName:Z

    if-eqz v1, :cond_8a

    .line 79
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongSubTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :goto_48
    invoke-direct {p0}, Lcom/google/android/finsky/layout/SongSnippet;->updateBuyButtonState()V

    .line 86
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    new-instance v2, Lcom/google/android/finsky/layout/SongSnippet$1;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/layout/SongSnippet$1;-><init>(Lcom/google/android/finsky/layout/SongSnippet;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/SongIndex;->setClickable(Z)V

    .line 105
    new-instance v1, Lcom/google/android/finsky/layout/SongSnippet$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/SongSnippet$2;-><init>(Lcom/google/android/finsky/layout/SongSnippet;)V

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/SongSnippet;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    sget-object v1, Lcom/google/android/finsky/config/G;->prePurchaseSharingEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 113
    new-instance v1, Lcom/google/android/finsky/layout/SongSnippet$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/SongSnippet$3;-><init>(Lcom/google/android/finsky/layout/SongSnippet;)V

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/SongSnippet;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 127
    :cond_79
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/SongSnippet;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    iget-object v2, p0, Lcom/google/android/finsky/layout/SongSnippet;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/previews/PreviewController;->getStatusUpdate(Lcom/google/android/finsky/previews/StatusListener;)V

    goto :goto_18

    .line 81
    :cond_8a
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongSubTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_48
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/PreviewController;->unbind()V

    .line 135
    invoke-super {p0}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;->onDetachedFromWindow()V

    .line 136
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 140
    invoke-super {p0}, Lcom/google/android/finsky/layout/CheckedRelativeLayout;->onFinishInflate()V

    .line 142
    const v0, 0x7f080147

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/SongIndex;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    .line 143
    const v0, 0x7f0800aa

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mBuyButton:Landroid/widget/Button;

    .line 144
    const v0, 0x7f08017a

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDuration:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f08017b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongTitle:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f08017c

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongSubTitle:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f08011e

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAddedState:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f0800f3

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAddedDrawable:Landroid/widget/ImageView;

    .line 149
    return-void
.end method

.method public setSongDetails(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;IZLcom/google/android/finsky/navigationmanager/NavigationManager;Z)V
    .registers 7
    .parameter "albumDocument"
    .parameter "songDocument"
    .parameter "trackNumber"
    .parameter "shouldShowArtistName"
    .parameter "navigationManager"
    .parameter "isNewPurchase"

    .prologue
    .line 154
    iput-boolean p4, p0, Lcom/google/android/finsky/layout/SongSnippet;->mShouldShowArtistName:Z

    .line 155
    iput-object p1, p0, Lcom/google/android/finsky/layout/SongSnippet;->mAlbumDocument:Lcom/google/android/finsky/api/model/Document;

    .line 156
    iput-object p2, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongDocument:Lcom/google/android/finsky/api/model/Document;

    .line 157
    iput-object p5, p0, Lcom/google/android/finsky/layout/SongSnippet;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 158
    iput p3, p0, Lcom/google/android/finsky/layout/SongSnippet;->mTrackNumber:I

    .line 159
    iput-boolean p6, p0, Lcom/google/android/finsky/layout/SongSnippet;->mIsNewPurchase:Z

    .line 160
    return-void
.end method

.method public setState(I)V
    .registers 4
    .parameter "state"

    .prologue
    .line 174
    packed-switch p1, :pswitch_data_1c

    .line 186
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/SongIndex;->setState(I)V

    .line 189
    :goto_9
    return-void

    .line 176
    :pswitch_a
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/SongSnippet;->setHighlighted(Z)V

    .line 177
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/SongIndex;->setState(I)V

    goto :goto_9

    .line 181
    :pswitch_15
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongSnippet;->mSongIndex:Lcom/google/android/finsky/layout/SongIndex;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/SongIndex;->setState(I)V

    goto :goto_9

    .line 174
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_15
        :pswitch_a
    .end packed-switch
.end method
