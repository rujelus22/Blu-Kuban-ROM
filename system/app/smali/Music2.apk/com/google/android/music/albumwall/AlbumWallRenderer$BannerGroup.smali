.class Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;
.super Lcom/google/android/opengl/glview/GLViewGroup;
.source "AlbumWallRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/AlbumWallRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BannerGroup"
.end annotation


# instance fields
.field private mBanner:Lcom/google/android/opengl/glview/GLView;

.field private mList:Lcom/google/android/opengl/glview/GLLinearLayout;

.field private mSpacer:Lcom/google/android/opengl/glview/GLView;


# direct methods
.method public constructor <init>(Lcom/google/android/opengl/glview/GLLinearLayout;Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;)V
    .registers 10
    .parameter "list"
    .parameter "preArtistList"
    .parameter "banner"
    .parameter "albumList"
    .parameter "separator"
    .parameter "postArtistList"

    .prologue
    .line 871
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLViewGroup;-><init>()V

    .line 872
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;->mList:Lcom/google/android/opengl/glview/GLLinearLayout;

    .line 874
    iput-object p3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;->mBanner:Lcom/google/android/opengl/glview/GLView;

    .line 876
    new-instance v0, Lcom/google/android/opengl/glview/Spacer;

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/opengl/glview/Spacer;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;->mSpacer:Lcom/google/android/opengl/glview/GLView;

    .line 877
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;->mSpacer:Lcom/google/android/opengl/glview/GLView;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->setId(I)V

    .line 879
    invoke-virtual {p1, p2}, Lcom/google/android/opengl/glview/GLLinearLayout;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 880
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;->mSpacer:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {p1, v0}, Lcom/google/android/opengl/glview/GLLinearLayout;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 881
    invoke-virtual {p1, p4}, Lcom/google/android/opengl/glview/GLLinearLayout;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 882
    invoke-virtual {p1, p5}, Lcom/google/android/opengl/glview/GLLinearLayout;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 883
    invoke-virtual {p1, p6}, Lcom/google/android/opengl/glview/GLLinearLayout;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 885
    invoke-virtual {p0, p1}, Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 886
    invoke-virtual {p0, p3}, Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 887
    return-void
.end method


# virtual methods
.method public getMinLength(Z)F
    .registers 4
    .parameter "horizontal"

    .prologue
    .line 891
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;->mList:Lcom/google/android/opengl/glview/GLLinearLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/glview/GLLinearLayout;->getMinLength(Z)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;->mBanner:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/google/android/opengl/glview/GLView;->getMinLength(Z)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public layout(ZFF)V
    .registers 7
    .parameter "horizontal"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 897
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;->internalLayout(ZFF)V

    .line 898
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;->mList:Lcom/google/android/opengl/glview/GLLinearLayout;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/opengl/glview/GLLinearLayout;->layout(ZFF)V

    .line 899
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;->mBanner:Lcom/google/android/opengl/glview/GLView;

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;->mSpacer:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v1, p1}, Lcom/google/android/opengl/glview/GLView;->start(Z)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;->mSpacer:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v2, p1}, Lcom/google/android/opengl/glview/GLView;->length(Z)F

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/opengl/glview/GLView;->layout(ZFF)V

    .line 900
    return-void
.end method

.method public pinBanner(Lcom/google/android/opengl/glview/Transformer;)V
    .registers 18
    .parameter "transformer"

    .prologue
    .line 903
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;->mList:Lcom/google/android/opengl/glview/GLLinearLayout;

    const/16 v15, 0x9

    invoke-virtual {v14, v15}, Lcom/google/android/opengl/glview/GLLinearLayout;->findChildViewIndexById(I)I

    move-result v10

    .line 904
    .local v10, separatorIndex:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;->mList:Lcom/google/android/opengl/glview/GLLinearLayout;

    invoke-virtual {v14, v10}, Lcom/google/android/opengl/glview/GLLinearLayout;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v2

    .line 905
    .local v2, bannerSeparator:Lcom/google/android/opengl/glview/GLView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;->mList:Lcom/google/android/opengl/glview/GLLinearLayout;

    invoke-virtual {v14}, Lcom/google/android/opengl/glview/GLLinearLayout;->getGap()F

    move-result v5

    .line 906
    .local v5, gap:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;->mList:Lcom/google/android/opengl/glview/GLLinearLayout;

    invoke-virtual {v14}, Lcom/google/android/opengl/glview/GLLinearLayout;->getHorizontalAxis()Z

    move-result v6

    .line 907
    .local v6, horizontal:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;->mBanner:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v14, v6}, Lcom/google/android/opengl/glview/GLView;->start(Z)F

    move-result v3

    .line 908
    .local v3, bannerStart:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;->mBanner:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v14, v6}, Lcom/google/android/opengl/glview/GLView;->length(Z)F

    move-result v1

    .line 909
    .local v1, bannerLength:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;->mSpacer:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v14, v6}, Lcom/google/android/opengl/glview/GLView;->start(Z)F

    move-result v11

    .line 910
    .local v11, spacerStart:F
    invoke-virtual {v2, v6}, Lcom/google/android/opengl/glview/GLView;->start(Z)F

    move-result v4

    .line 911
    .local v4, endStart:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/google/android/opengl/glview/Transformer;->effectiveOffset(Z)F

    move-result v14

    neg-float v13, v14

    .line 912
    .local v13, visibleStart:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/google/android/opengl/glview/Transformer;->visibleMarginOrigin(Z)F

    move-result v12

    .line 913
    .local v12, visibleMarginOrigin:F
    add-float v9, v13, v12

    .line 914
    .local v9, pinBannerStart:F
    sub-float v14, v4, v5

    sub-float v7, v14, v1

    .line 915
    .local v7, maxBannerStart:F
    invoke-static {v11, v9}, Ljava/lang/Math;->max(FF)F

    move-result v14

    invoke-static {v7, v14}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 917
    .local v8, newBannerStart:F
    cmpl-float v14, v8, v3

    if-eqz v14, :cond_64

    .line 918
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer$BannerGroup;->mBanner:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v14, v6, v8, v1}, Lcom/google/android/opengl/glview/GLView;->layout(ZFF)V

    .line 920
    :cond_64
    return-void
.end method
