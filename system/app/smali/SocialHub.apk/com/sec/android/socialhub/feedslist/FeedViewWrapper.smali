.class public Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;
.super Ljava/lang/Object;
.source "FeedViewWrapper.java"


# instance fields
.field public mAttachmentCaption:Landroid/widget/TextView;

.field public mAttachmentDescription:Landroid/widget/TextView;

.field public mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

.field public mImageComment:Landroid/widget/ImageView;

.field public mImageFavorite:Landroid/widget/ImageView;

.field public mImageISP:Landroid/widget/ImageView;

.field public mImageLike:Landroid/widget/ImageView;

.field public mImageMediaType:Landroid/widget/ImageView;

.field public mImageMood:Landroid/widget/ImageView;

.field public mImageProfile:Landroid/widget/ImageView;

.field public mImageReweetBy:Landroid/widget/ImageView;

.field public mImgWallPost:Landroid/widget/ImageView;

.field public mImgWallPostDown:Landroid/widget/ImageView;

.field public mLayoutAllArea:Landroid/widget/LinearLayout;

.field public mLayoutAttachContent:Landroid/widget/LinearLayout;

.field public mLayoutComment:Landroid/widget/LinearLayout;

.field public mLayoutCommentFavoriteButton:Landroid/widget/LinearLayout;

.field public mLayoutCommentLikeButton:Landroid/widget/LinearLayout;

.field public mLayoutContent:Landroid/widget/LinearLayout;

.field public mLayoutLike:Landroid/widget/LinearLayout;

.field public mLayoutMedia:Landroid/widget/LinearLayout;

.field public mLayoutMood:Landroid/widget/LinearLayout;

.field public mLayoutProfile:Landroid/widget/FrameLayout;

.field public mLayoutRetweetBy:Landroid/widget/LinearLayout;

.field public mLayout_Comment_Like:Landroid/widget/LinearLayout;

.field public mTargetName:Landroid/widget/TextView;

.field public mTargetNameDown:Landroid/widget/TextView;

.field public mTargetNameDownDown:Landroid/widget/TextView;

.field public mTargetNameDownTwo:Landroid/widget/TextView;

.field public mTextAlbumTitle:Landroid/widget/TextView;

.field public mTextComment:Landroid/widget/TextView;

.field public mTextContent:Lcom/sec/android/socialhub/view/LinkTextView;

.field public mTextDate:Landroid/widget/TextView;

.field public mTextLike:Landroid/widget/TextView;

.field public mTextMood:Landroid/widget/TextView;

.field public mTextName:Landroid/widget/TextView;

.field public mTextRetweetBy:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutAllArea:Landroid/widget/LinearLayout;

    .line 23
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    .line 24
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutContent:Landroid/widget/LinearLayout;

    .line 25
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutComment:Landroid/widget/LinearLayout;

    .line 26
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutLike:Landroid/widget/LinearLayout;

    .line 27
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutMood:Landroid/widget/LinearLayout;

    .line 28
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    .line 29
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutRetweetBy:Landroid/widget/LinearLayout;

    .line 30
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayout_Comment_Like:Landroid/widget/LinearLayout;

    .line 31
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutProfile:Landroid/widget/FrameLayout;

    .line 33
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    .line 38
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutCommentLikeButton:Landroid/widget/LinearLayout;

    .line 43
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutCommentFavoriteButton:Landroid/widget/LinearLayout;

    .line 52
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTextName:Landroid/widget/TextView;

    .line 53
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImgWallPost:Landroid/widget/ImageView;

    .line 54
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTargetName:Landroid/widget/TextView;

    .line 55
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTargetNameDown:Landroid/widget/TextView;

    .line 56
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImgWallPostDown:Landroid/widget/ImageView;

    .line 57
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTargetNameDownTwo:Landroid/widget/TextView;

    .line 58
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTargetNameDownDown:Landroid/widget/TextView;

    .line 60
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTextDate:Landroid/widget/TextView;

    .line 61
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTextMood:Landroid/widget/TextView;

    .line 62
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTextContent:Lcom/sec/android/socialhub/view/LinkTextView;

    .line 63
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mAttachmentCaption:Landroid/widget/TextView;

    .line 64
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mAttachmentDescription:Landroid/widget/TextView;

    .line 66
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImageProfile:Landroid/widget/ImageView;

    .line 67
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImageISP:Landroid/widget/ImageView;

    .line 68
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImageMediaType:Landroid/widget/ImageView;

    .line 69
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImageMood:Landroid/widget/ImageView;

    .line 70
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImageReweetBy:Landroid/widget/ImageView;

    .line 72
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTextRetweetBy:Landroid/widget/TextView;

    .line 74
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTextComment:Landroid/widget/TextView;

    .line 75
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTextLike:Landroid/widget/TextView;

    .line 78
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImageLike:Landroid/widget/ImageView;

    .line 80
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImageFavorite:Landroid/widget/ImageView;

    .line 82
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImageComment:Landroid/widget/ImageView;

    .line 84
    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTextAlbumTitle:Landroid/widget/TextView;

    .line 88
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->getLayout(Landroid/view/View;)V

    .line 89
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->getView(Landroid/view/View;)V

    .line 90
    new-instance v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    invoke-direct {v0, p1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    .line 91
    return-void
.end method

.method private getLayout(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 104
    const v0, 0x7f0b008b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutAllArea:Landroid/widget/LinearLayout;

    .line 105
    const v0, 0x7f0b00b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    .line 106
    const v0, 0x7f0b009a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutContent:Landroid/widget/LinearLayout;

    .line 107
    const v0, 0x7f0b001a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutComment:Landroid/widget/LinearLayout;

    .line 108
    const v0, 0x7f0b0094

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutLike:Landroid/widget/LinearLayout;

    .line 109
    const v0, 0x7f0b00b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutMood:Landroid/widget/LinearLayout;

    .line 110
    const v0, 0x7f0b00d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    .line 111
    const v0, 0x7f0b00c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutProfile:Landroid/widget/FrameLayout;

    .line 113
    const v0, 0x7f0b00c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutRetweetBy:Landroid/widget/LinearLayout;

    .line 114
    const v0, 0x7f0b0093

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayout_Comment_Like:Landroid/widget/LinearLayout;

    .line 116
    const v0, 0x7f0b008f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutCommentLikeButton:Landroid/widget/LinearLayout;

    .line 118
    const v0, 0x7f0b0091

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutCommentFavoriteButton:Landroid/widget/LinearLayout;

    .line 119
    return-void
.end method

.method private getView(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 126
    const v0, 0x7f0b00bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTextName:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f0b00bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImgWallPost:Landroid/widget/ImageView;

    .line 128
    const v0, 0x7f0b00bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTargetName:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f0b00be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTargetNameDown:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f0b00bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImgWallPostDown:Landroid/widget/ImageView;

    .line 131
    const v0, 0x7f0b00c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTargetNameDownTwo:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f0b00c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTargetNameDownDown:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f0b00c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTextDate:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f0b00b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTextMood:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f0b009b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/view/LinkTextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTextContent:Lcom/sec/android/socialhub/view/LinkTextView;

    .line 138
    const v0, 0x7f0b00d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mAttachmentCaption:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f0b00d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mAttachmentDescription:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f0b0098

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTextComment:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f0b0096

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTextLike:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f0b00c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImageProfile:Landroid/widget/ImageView;

    .line 145
    const v0, 0x7f0b00c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImageISP:Landroid/widget/ImageView;

    .line 146
    const v0, 0x7f0b00c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImageMediaType:Landroid/widget/ImageView;

    .line 147
    const v0, 0x7f0b00b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImageMood:Landroid/widget/ImageView;

    .line 148
    const v0, 0x7f0b00ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImageReweetBy:Landroid/widget/ImageView;

    .line 150
    const v0, 0x7f0b00cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTextRetweetBy:Landroid/widget/TextView;

    .line 152
    const v0, 0x7f0b0090

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImageLike:Landroid/widget/ImageView;

    .line 153
    const v0, 0x7f0b0092

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImageFavorite:Landroid/widget/ImageView;

    .line 155
    const v0, 0x7f0b0095

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mImageComment:Landroid/widget/ImageView;

    .line 156
    const v0, 0x7f0b00b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mTextAlbumTitle:Landroid/widget/TextView;

    .line 157
    return-void
.end method
