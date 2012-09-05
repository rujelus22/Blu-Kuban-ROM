.class public Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;
.super Ljava/lang/Object;
.source "FeedViewWrapper.java"


# instance fields
.field public mAttachmentCaption:Landroid/widget/TextView;

.field public mAttachmentDescription:Landroid/widget/TextView;

.field public mImageComment:Landroid/widget/ImageView;

.field public mImageFavorite:Landroid/widget/ImageView;

.field public mImageISP:Landroid/widget/ImageView;

.field public mImageLike:Landroid/widget/ImageView;

.field public mImageMedia:Landroid/widget/ImageView;

.field public mImageMediaType:Landroid/widget/ImageView;

.field public mImageMood:Landroid/widget/ImageView;

.field public mImageProfile:Landroid/widget/ImageView;

.field public mImgWallPost:Landroid/widget/ImageView;

.field public mImgWallPostDown:Landroid/widget/ImageView;

.field public mLayoutAllArea:Landroid/widget/LinearLayout;

.field public mLayoutAllContents:Lcom/sec/android/widgetapp/socialhub/view/HubLinearLayout;

.field public mLayoutAttachContent:Landroid/widget/LinearLayout;

.field public mLayoutComment:Landroid/widget/LinearLayout;

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

.field public mTextContent:Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;

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

    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutAllArea:Landroid/widget/LinearLayout;

    .line 22
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    .line 23
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutAllContents:Lcom/sec/android/widgetapp/socialhub/view/HubLinearLayout;

    .line 24
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutComment:Landroid/widget/LinearLayout;

    .line 25
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutLike:Landroid/widget/LinearLayout;

    .line 26
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutMood:Landroid/widget/LinearLayout;

    .line 27
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    .line 28
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutRetweetBy:Landroid/widget/LinearLayout;

    .line 29
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayout_Comment_Like:Landroid/widget/LinearLayout;

    .line 30
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutProfile:Landroid/widget/FrameLayout;

    .line 37
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTextName:Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImgWallPost:Landroid/widget/ImageView;

    .line 39
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTargetName:Landroid/widget/TextView;

    .line 40
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTargetNameDown:Landroid/widget/TextView;

    .line 41
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImgWallPostDown:Landroid/widget/ImageView;

    .line 42
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTargetNameDownTwo:Landroid/widget/TextView;

    .line 43
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTargetNameDownDown:Landroid/widget/TextView;

    .line 45
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTextDate:Landroid/widget/TextView;

    .line 46
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTextMood:Landroid/widget/TextView;

    .line 47
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTextContent:Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;

    .line 48
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mAttachmentCaption:Landroid/widget/TextView;

    .line 49
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mAttachmentDescription:Landroid/widget/TextView;

    .line 51
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImageProfile:Landroid/widget/ImageView;

    .line 52
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImageISP:Landroid/widget/ImageView;

    .line 53
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImageMediaType:Landroid/widget/ImageView;

    .line 54
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImageMood:Landroid/widget/ImageView;

    .line 55
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImageMedia:Landroid/widget/ImageView;

    .line 57
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTextRetweetBy:Landroid/widget/TextView;

    .line 59
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTextComment:Landroid/widget/TextView;

    .line 60
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTextLike:Landroid/widget/TextView;

    .line 62
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImageLike:Landroid/widget/ImageView;

    .line 63
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImageFavorite:Landroid/widget/ImageView;

    .line 65
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImageComment:Landroid/widget/ImageView;

    .line 67
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTextAlbumTitle:Landroid/widget/TextView;

    .line 71
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->getLayout(Landroid/view/View;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->getView(Landroid/view/View;)V

    .line 73
    return-void
.end method

.method private getLayout(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 87
    const v0, 0x7f090001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutMedia:Landroid/widget/LinearLayout;

    .line 88
    const v0, 0x7f09000e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/socialhub/view/HubLinearLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutAllContents:Lcom/sec/android/widgetapp/socialhub/view/HubLinearLayout;

    .line 89
    const v0, 0x7f09001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutComment:Landroid/widget/LinearLayout;

    .line 90
    const v0, 0x7f09001b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutLike:Landroid/widget/LinearLayout;

    .line 91
    const v0, 0x7f090012

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutMood:Landroid/widget/LinearLayout;

    .line 92
    const v0, 0x7f090028

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutAttachContent:Landroid/widget/LinearLayout;

    .line 93
    const v0, 0x7f09000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutProfile:Landroid/widget/FrameLayout;

    .line 95
    const v0, 0x7f090017

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutRetweetBy:Landroid/widget/LinearLayout;

    .line 96
    const v0, 0x7f09001a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayout_Comment_Like:Landroid/widget/LinearLayout;

    .line 101
    return-void
.end method

.method private getView(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 105
    const v0, 0x7f090003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTextName:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f090004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImgWallPost:Landroid/widget/ImageView;

    .line 107
    const v0, 0x7f090005

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTargetName:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f090006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTargetNameDown:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f090007

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImgWallPostDown:Landroid/widget/ImageView;

    .line 110
    const v0, 0x7f090008

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTargetNameDownTwo:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f090009

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTargetNameDownDown:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f090016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTextDate:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f090013

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTextMood:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f090011

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTextContent:Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;

    .line 120
    const v0, 0x7f090029

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mAttachmentCaption:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f09002a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mAttachmentDescription:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f090020

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTextComment:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f09001d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTextLike:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f09000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImageProfile:Landroid/widget/ImageView;

    .line 127
    const v0, 0x7f09000c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImageISP:Landroid/widget/ImageView;

    .line 128
    const v0, 0x7f090015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImageMediaType:Landroid/widget/ImageView;

    .line 129
    const v0, 0x7f090014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImageMood:Landroid/widget/ImageView;

    .line 131
    const v0, 0x7f090019

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTextRetweetBy:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f090022

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImageMedia:Landroid/widget/ImageView;

    .line 137
    const v0, 0x7f09001c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImageComment:Landroid/widget/ImageView;

    .line 138
    const v0, 0x7f090002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTextAlbumTitle:Landroid/widget/TextView;

    .line 139
    return-void
.end method
