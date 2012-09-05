.class public Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;
.super Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;
.source "DetailsSummaryMusicViewBinder.java"


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/model/DfeToc;)V
    .registers 2
    .parameter "dfeToc"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;-><init>(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->goToArtistPage()V

    return-void
.end method

.method private goToArtistPage()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 70
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->getDisplayArtist()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->getDetailsUrl()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, artistDetailsUrl:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v3, v2, v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method private hasArtistLink()Z
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->getDisplayArtist()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->getDisplayArtist()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->getDetailsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method


# virtual methods
.method protected setupItemDetails()V
    .registers 7

    .prologue
    const v5, 0x7f0800bd

    const/4 v4, 0x0

    .line 26
    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->setupItemDetails()V

    .line 28
    const v3, 0x7f0800bb

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 29
    .local v0, creatorPanel:Landroid/view/View;
    if-eqz v0, :cond_2d

    .line 31
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->hasArtistLink()Z

    move-result v3

    if-eqz v3, :cond_53

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    if-eqz v3, :cond_53

    .line 32
    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 33
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 34
    new-instance v3, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder$1;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder$1;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    :cond_2d
    :goto_2d
    const v3, 0x7f0800be

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/DecoratedTextView;

    .line 48
    .local v1, tipperStickerView:Lcom/google/android/finsky/layout/DecoratedTextView;
    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-static {v3, v1}, Lcom/google/android/finsky/utils/BadgeUtils;->configureTipperSticker(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/DecoratedTextView;)V

    .line 49
    invoke-virtual {v1}, Lcom/google/android/finsky/layout/DecoratedTextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_52

    .line 52
    const v3, 0x7f08007b

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 53
    .local v2, title:Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 54
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 56
    .end local v2           #title:Landroid/widget/TextView;
    :cond_52
    return-void

    .line 42
    .end local v1           #tipperStickerView:Lcom/google/android/finsky/layout/DecoratedTextView;
    :cond_53
    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 43
    invoke-virtual {p0, v5}, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2d
.end method
