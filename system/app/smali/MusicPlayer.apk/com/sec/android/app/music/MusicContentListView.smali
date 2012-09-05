.class public Lcom/sec/android/app/music/MusicContentListView;
.super Landroid/widget/FrameLayout;
.source "MusicContentListView.java"

# interfaces
.implements Lcom/sec/android/app/music/widget/OnMusicListViewInterface;


# static fields
.field private static final CLASSNAME:Ljava/lang/String;


# instance fields
.field private mGridView:Lcom/sec/android/app/music/MusicGridView;

.field private mIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

.field private mIsGridView:Z

.field private mKeyWord:Ljava/lang/String;

.field private mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

.field private mNoItemView:Landroid/view/View;

.field private mTab:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-class v0, Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/MusicContentListView;->CLASSNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mIsGridView:Z

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "tabString"

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 248
    iput-boolean v2, p0, Lcom/sec/android/app/music/MusicContentListView;->mIsGridView:Z

    .line 73
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 74
    .local v0, tab:I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sec/android/app/music/MusicContentListView;->init(ILjava/lang/String;ZZ)V

    .line 75
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/sec/android/app/music/MusicContentListView;->CLASSNAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/music/MusicContentListView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mNoItemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/music/MusicContentListView;)Lcom/sec/android/app/music/widget/CommonMusicListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/music/MusicContentListView;)Lcom/sec/android/touchwiz/widget/TwIndexScrollView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/music/MusicContentListView;)Lcom/sec/android/app/music/MusicGridView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mGridView:Lcom/sec/android/app/music/MusicGridView;

    return-object v0
.end method

.method private checkAddMusicHeader()V
    .registers 6

    .prologue
    .line 165
    iget-object v3, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    instance-of v3, v3, Lcom/sec/android/app/music/TrackListView;

    if-eqz v3, :cond_29

    iget v3, p0, Lcom/sec/android/app/music/MusicContentListView;->mTab:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_29

    .line 166
    const-wide/16 v0, -0x1

    .line 167
    .local v0, plid:J
    iget-object v3, p0, Lcom/sec/android/app/music/MusicContentListView;->mKeyWord:Ljava/lang/String;

    if-eqz v3, :cond_25

    const-string v3, ""

    iget-object v4, p0, Lcom/sec/android/app/music/MusicContentListView;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 168
    iget-object v3, p0, Lcom/sec/android/app/music/MusicContentListView;->mKeyWord:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 170
    :cond_25
    iget-object v3, p0, Lcom/sec/android/app/music/MusicContentListView;->mNoItemView:Landroid/view/View;

    if-nez v3, :cond_2a

    .line 199
    .end local v0           #plid:J
    :cond_29
    :goto_29
    return-void

    .line 173
    .restart local v0       #plid:J
    :cond_2a
    iget-object v3, p0, Lcom/sec/android/app/music/MusicContentListView;->mNoItemView:Landroid/view/View;

    const v4, 0x7f0c0023

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 174
    .local v2, v:Landroid/view/View;
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_67

    const-wide/16 v3, -0xb

    cmp-long v3, v0, v3

    if-eqz v3, :cond_67

    sget-wide v3, Lcom/sec/android/app/music/MusicUtils;->sQuickPlayListId:J

    cmp-long v3, v0, v3

    if-eqz v3, :cond_67

    const-wide/16 v3, -0xc

    cmp-long v3, v0, v3

    if-eqz v3, :cond_67

    const-wide/16 v3, -0xe

    cmp-long v3, v0, v3

    if-eqz v3, :cond_67

    const-wide/16 v3, -0xd

    cmp-long v3, v0, v3

    if-eqz v3, :cond_67

    .line 179
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 180
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 181
    new-instance v3, Lcom/sec/android/app/music/MusicContentListView$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/music/MusicContentListView$1;-><init>(Lcom/sec/android/app/music/MusicContentListView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_29

    .line 196
    :cond_67
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_29
.end method

.method private hideEmptyView(Landroid/widget/ListView;)V
    .registers 4
    .parameter "listview"

    .prologue
    .line 397
    invoke-virtual {p1}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    .line 398
    .local v0, emptyView:Landroid/view/View;
    if-eqz v0, :cond_b

    .line 399
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 401
    :cond_b
    return-void
.end method

.method private initListView(ILjava/lang/String;ZZZ)V
    .registers 14
    .parameter "tabFrom"
    .parameter "keyWord"
    .parameter "isSelectMode"
    .parameter "isReorderMode"
    .parameter "isNowPlayingList"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicContentListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->makeDefaultDrwableImage(Landroid/content/Context;)V

    .line 101
    sget-object v0, Lcom/sec/android/app/music/MusicContentListView;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init tabFrom : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " keyWord : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iput p1, p0, Lcom/sec/android/app/music/MusicContentListView;->mTab:I

    .line 104
    iput-object p2, p0, Lcom/sec/android/app/music/MusicContentListView;->mKeyWord:Ljava/lang/String;

    .line 106
    if-eqz p2, :cond_a8

    .line 109
    const-wide/16 v0, -0xf

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 110
    const-string p2, ""

    .line 114
    :cond_3f
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    if-nez v0, :cond_95

    .line 115
    iget v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mTab:I

    if-ne v0, v5, :cond_83

    .line 116
    sget-wide v0, Lcom/sec/android/app/music/MusicUtils;->sQuickPlayListId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_56

    .line 117
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicContentListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->makeQuickListItem(Landroid/content/Context;)V

    .line 119
    :cond_56
    if-eqz p4, :cond_71

    .line 120
    new-instance v0, Lcom/sec/android/app/music/widget/ChangeOrderListView;

    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicContentListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/MusicContentListView;->mTab:I

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/music/widget/ChangeOrderListView;-><init>(Landroid/content/Context;ILjava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    .line 130
    :goto_67
    const v0, 0x7f090132

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/MusicContentListView;->setListViews(I)V

    .line 138
    :cond_6d
    :goto_6d
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicContentListView;->checkAddMusicHeader()V

    .line 156
    :goto_70
    return-void

    .line 123
    :cond_71
    new-instance v0, Lcom/sec/android/app/music/TrackListView;

    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicContentListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/MusicContentListView;->mTab:I

    move-object v3, p2

    move v4, p3

    move v5, v6

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/music/TrackListView;-><init>(Landroid/content/Context;ILjava/lang/String;ZZZ)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    goto :goto_67

    .line 127
    :cond_83
    new-instance v0, Lcom/sec/android/app/music/TrackListView;

    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicContentListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/MusicContentListView;->mTab:I

    move-object v3, p2

    move v4, p3

    move v5, v6

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/music/TrackListView;-><init>(Landroid/content/Context;ILjava/lang/String;ZZZ)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    goto :goto_67

    .line 133
    :cond_95
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    instance-of v0, v0, Lcom/sec/android/app/music/TrackListView;

    if-eqz v0, :cond_6d

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/MusicContentListView;->showFallDownAnimation(Landroid/widget/ListView;)V

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    check-cast v0, Lcom/sec/android/app/music/TrackListView;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/music/TrackListView;->reQuerySplitView(Ljava/lang/String;)V

    goto :goto_6d

    .line 141
    :cond_a8
    iget v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mTab:I

    packed-switch v0, :pswitch_data_d0

    .line 148
    new-instance v0, Lcom/sec/android/app/music/MusicTabListView;

    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicContentListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/MusicContentListView;->mTab:I

    invoke-direct {v0, v1, v2, p3}, Lcom/sec/android/app/music/MusicTabListView;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    .line 153
    :goto_ba
    iget v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mTab:I

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->getNoItemString(I)I

    move-result v7

    .line 154
    .local v7, noItemId:I
    invoke-direct {p0, v7}, Lcom/sec/android/app/music/MusicContentListView;->setListViews(I)V

    goto :goto_70

    .line 143
    .end local v7           #noItemId:I
    :pswitch_c4
    new-instance v0, Lcom/sec/android/app/music/TrackListView;

    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicContentListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/sec/android/app/music/TrackListView;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    goto :goto_ba

    .line 141
    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_c4
    .end packed-switch
.end method

.method private setListViews(I)V
    .registers 8
    .parameter "noItemId"

    .prologue
    const/4 v4, 0x2

    .line 203
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicContentListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 205
    .local v0, li:Landroid/view/LayoutInflater;
    const v2, 0x7f03002c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/music/MusicContentListView;->mNoItemView:Landroid/view/View;

    .line 207
    iget-object v2, p0, Lcom/sec/android/app/music/MusicContentListView;->mNoItemView:Landroid/view/View;

    const v3, 0x7f0c00e6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 208
    .local v1, noItemText:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 210
    iget-object v2, p0, Lcom/sec/android/app/music/MusicContentListView;->mNoItemView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/MusicContentListView;->addView(Landroid/view/View;)V

    .line 211
    iget-object v2, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/MusicContentListView;->addView(Landroid/view/View;)V

    .line 217
    iget-object v2, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    instance-of v2, v2, Lcom/sec/android/app/music/TrackListView;

    if-eqz v2, :cond_3e

    iget v2, p0, Lcom/sec/android/app/music/MusicContentListView;->mTab:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3e

    iget v2, p0, Lcom/sec/android/app/music/MusicContentListView;->mTab:I

    if-ne v2, v4, :cond_4e

    :cond_3e
    iget-object v2, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    instance-of v2, v2, Lcom/sec/android/app/music/MusicTabListView;

    if-eqz v2, :cond_77

    iget v2, p0, Lcom/sec/android/app/music/MusicContentListView;->mTab:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_77

    iget v2, p0, Lcom/sec/android/app/music/MusicContentListView;->mTab:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_77

    .line 219
    :cond_4e
    new-instance v2, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicContentListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/music/MusicContentListView;->mIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 220
    iget-object v2, p0, Lcom/sec/android/app/music/MusicContentListView;->mIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    const-string v3, "IndexView"

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setTag(Ljava/lang/Object;)V

    .line 221
    iget-object v2, p0, Lcom/sec/android/app/music/MusicContentListView;->mIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setSubscrollLimit(I)V

    .line 222
    iget-object v2, p0, Lcom/sec/android/app/music/MusicContentListView;->mIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 223
    iget-object v2, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    iget-object v3, p0, Lcom/sec/android/app/music/MusicContentListView;->mIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/music/widget/CommonMusicListView;->setTwScrollView(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V

    .line 224
    iget-object v2, p0, Lcom/sec/android/app/music/MusicContentListView;->mIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/MusicContentListView;->addView(Landroid/view/View;)V

    .line 228
    :cond_77
    iget-object v2, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    new-instance v3, Lcom/sec/android/app/music/MusicContentListView$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/music/MusicContentListView$2;-><init>(Lcom/sec/android/app/music/MusicContentListView;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/music/widget/CommonMusicListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 241
    return-void
.end method

.method private showFallDownAnimation(Landroid/widget/ListView;)V
    .registers 13
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 277
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 279
    .local v10, set:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 280
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 281
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 283
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #animation:Landroid/view/animation/Animation;
    const/high16 v6, -0x4080

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 286
    .restart local v0       #animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 287
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 289
    new-instance v9, Landroid/view/animation/LayoutAnimationController;

    const/high16 v1, 0x3f00

    invoke-direct {v9, v10, v1}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    .line 290
    .local v9, controller:Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {p1, v9}, Landroid/widget/ListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 291
    return-void
.end method


# virtual methods
.method public bindingSplitView(Lcom/sec/android/app/music/MusicContentListView;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    instance-of v0, v0, Lcom/sec/android/app/music/MusicTabListView;

    if-eqz v0, :cond_d

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    check-cast v0, Lcom/sec/android/app/music/MusicTabListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/MusicTabListView;->bindingSplitView(Lcom/sec/android/app/music/MusicContentListView;)V

    .line 162
    :cond_d
    return-void
.end method

.method public changeGridView(Z)V
    .registers 7
    .parameter "changToGridView"

    .prologue
    const/4 v4, 0x0

    .line 252
    if-eqz p1, :cond_47

    .line 253
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicContentListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 255
    .local v0, li:Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mGridView:Lcom/sec/android/app/music/MusicGridView;

    if-nez v1, :cond_2a

    .line 256
    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/music/MusicGridView;

    iput-object v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mGridView:Lcom/sec/android/app/music/MusicGridView;

    .line 257
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mGridView:Lcom/sec/android/app/music/MusicGridView;

    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicContentListView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/music/MusicContentListView;->mTab:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/music/MusicGridView;->init(Landroid/content/Context;IZ)V

    .line 259
    :cond_2a
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/MusicContentListView;->setIndexScrollViewVisibility(I)V

    .line 260
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/MusicContentListView;->removeView(Landroid/view/View;)V

    .line 261
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mGridView:Lcom/sec/android/app/music/MusicGridView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/MusicContentListView;->addView(Landroid/view/View;)V

    .line 263
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mGridView:Lcom/sec/android/app/music/MusicGridView;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/music/MusicGridView;->setVisibility(I)V

    .line 264
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mGridView:Lcom/sec/android/app/music/MusicGridView;

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicGridView;->bringToFront()V

    .line 265
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mIsGridView:Z

    .line 274
    .end local v0           #li:Landroid/view/LayoutInflater;
    :goto_46
    return-void

    .line 267
    :cond_47
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mGridView:Lcom/sec/android/app/music/MusicGridView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/MusicContentListView;->removeView(Landroid/view/View;)V

    .line 268
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/MusicContentListView;->addView(Landroid/view/View;)V

    .line 271
    invoke-virtual {p0, v4}, Lcom/sec/android/app/music/MusicContentListView;->setIndexScrollViewVisibility(I)V

    .line 272
    iput-boolean v4, p0, Lcom/sec/android/app/music/MusicContentListView;->mIsGridView:Z

    goto :goto_46
.end method

.method public closeListCursor()V
    .registers 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    if-eqz v0, :cond_9

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    invoke-virtual {v0}, Lcom/sec/android/app/music/widget/CommonMusicListView;->closeCursor()V

    .line 411
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mGridView:Lcom/sec/android/app/music/MusicGridView;

    if-eqz v0, :cond_12

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mGridView:Lcom/sec/android/app/music/MusicGridView;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicGridView;->closeCursor()V

    .line 414
    :cond_12
    return-void
.end method

.method public getAlignedSelectedItemId()[J
    .registers 3

    .prologue
    .line 465
    const/4 v0, 0x0

    .line 467
    .local v0, itemId:[J
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    instance-of v1, v1, Lcom/sec/android/app/music/TrackListView;

    if-eqz v1, :cond_13

    .line 468
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    check-cast v1, Lcom/sec/android/app/music/TrackListView;

    invoke-virtual {v1}, Lcom/sec/android/app/music/TrackListView;->getAlignedSelectedItemId()[J

    move-result-object v0

    .line 470
    :cond_13
    return-object v0
.end method

.method public getAudioId(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 510
    const-wide/16 v0, -0x1

    .line 511
    .local v0, audioId:J
    iget-object v2, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    instance-of v2, v2, Lcom/sec/android/app/music/TrackListView;

    if-eqz v2, :cond_14

    .line 512
    iget-object v2, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    check-cast v2, Lcom/sec/android/app/music/TrackListView;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/music/TrackListView;->getAudioId(I)J

    move-result-wide v0

    .line 514
    :cond_14
    return-wide v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .registers 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    if-eqz v0, :cond_b

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    invoke-virtual {v0}, Lcom/sec/android/app/music/widget/CommonMusicListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 444
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 3

    .prologue
    .line 486
    const/4 v0, 0x0

    .line 487
    .local v0, mi:Landroid/view/ContextMenu$ContextMenuInfo;
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    invoke-virtual {v1}, Lcom/sec/android/app/music/widget/CommonMusicListView;->getCount()I

    move-result v1

    if-eqz v1, :cond_13

    .line 488
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    invoke-virtual {v1}, Lcom/sec/android/app/music/widget/CommonMusicListView;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 490
    :cond_13
    return-object v0
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 495
    const/4 v0, 0x0

    .line 496
    .local v0, count:I
    iget-boolean v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mIsGridView:Z

    if-eqz v1, :cond_10

    .line 497
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mGridView:Lcom/sec/android/app/music/MusicGridView;

    if-eqz v1, :cond_f

    .line 498
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mGridView:Lcom/sec/android/app/music/MusicGridView;

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicGridView;->getCount()I

    move-result v0

    .line 505
    :cond_f
    :goto_f
    return v0

    .line 501
    :cond_10
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    if-eqz v1, :cond_f

    .line 502
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    invoke-virtual {v1}, Lcom/sec/android/app/music/widget/CommonMusicListView;->getCount()I

    move-result v0

    goto :goto_f
.end method

.method public getIsSelectedAll()Z
    .registers 3

    .prologue
    .line 449
    const/4 v0, 0x0

    .line 450
    .local v0, isSelectedAll:Z
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    if-eqz v1, :cond_b

    .line 451
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    invoke-virtual {v1}, Lcom/sec/android/app/music/widget/CommonMusicListView;->getIsSelectedAll()Z

    move-result v0

    .line 453
    :cond_b
    return v0
.end method

.method public getKeyWord()Ljava/lang/String;
    .registers 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mKeyWord:Ljava/lang/String;

    return-object v0
.end method

.method public getListItemInfo(I)Lcom/sec/android/app/music/TrackListView$ListItemInfo;
    .registers 4
    .parameter "position"

    .prologue
    .line 519
    const/4 v0, 0x0

    .line 520
    .local v0, li:Lcom/sec/android/app/music/TrackListView$ListItemInfo;
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    instance-of v1, v1, Lcom/sec/android/app/music/TrackListView;

    if-eqz v1, :cond_13

    .line 521
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    check-cast v1, Lcom/sec/android/app/music/TrackListView;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/music/TrackListView;->getListItemInfo(I)Lcom/sec/android/app/music/TrackListView$ListItemInfo;

    move-result-object v0

    .line 523
    :cond_13
    return-object v0
.end method

.method public getListItems()[J
    .registers 3

    .prologue
    .line 558
    const/4 v0, 0x0

    .line 559
    .local v0, list:[J
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    instance-of v1, v1, Lcom/sec/android/app/music/TrackListView;

    if-eqz v1, :cond_13

    .line 560
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    check-cast v1, Lcom/sec/android/app/music/TrackListView;

    invoke-virtual {v1}, Lcom/sec/android/app/music/TrackListView;->getListItems()[J

    move-result-object v0

    .line 562
    :cond_13
    return-object v0
.end method

.method public getSelectedItemId()[J
    .registers 3

    .prologue
    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, itemId:[J
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    if-eqz v1, :cond_b

    .line 459
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    invoke-virtual {v1}, Lcom/sec/android/app/music/widget/CommonMusicListView;->getCheckedItemIds()[J

    move-result-object v0

    .line 461
    :cond_b
    return-object v0
.end method

.method public init(ILjava/lang/String;ZZ)V
    .registers 11
    .parameter "tabFrom"
    .parameter "keyWord"
    .parameter "isSelectMode"
    .parameter "isReorderMode"

    .prologue
    .line 88
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/music/MusicContentListView;->initListView(ILjava/lang/String;ZZZ)V

    .line 89
    return-void
.end method

.method public init(ILjava/lang/String;ZZZ)V
    .registers 6
    .parameter "tabFrom"
    .parameter "keyWord"
    .parameter "isSelectMode"
    .parameter "isReorderMode"
    .parameter "isNowPlayingList"

    .prologue
    .line 93
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/music/MusicContentListView;->initListView(ILjava/lang/String;ZZZ)V

    .line 94
    return-void
.end method

.method public invalidateAllViews()V
    .registers 5

    .prologue
    .line 299
    sget-object v0, Lcom/sec/android/app/music/MusicContentListView;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidateAllViews mListView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    if-eqz v0, :cond_23

    .line 302
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    invoke-virtual {v0}, Lcom/sec/android/app/music/widget/CommonMusicListView;->invalidateViews()V

    .line 304
    :cond_23
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mGridView:Lcom/sec/android/app/music/MusicGridView;

    if-eqz v0, :cond_38

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mGridView:Lcom/sec/android/app/music/MusicGridView;

    new-instance v1, Lcom/sec/android/app/music/MusicContentListView$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/MusicContentListView$3;-><init>(Lcom/sec/android/app/music/MusicContentListView;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/music/MusicGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mGridView:Lcom/sec/android/app/music/MusicGridView;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicGridView;->invalidateViews()V

    .line 313
    :cond_38
    return-void
.end method

.method public isGridView()Z
    .registers 2

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mIsGridView:Z

    return v0
.end method

.method public reQueryListCursor(Z)V
    .registers 6
    .parameter "async"

    .prologue
    .line 322
    sget-object v0, Lcom/sec/android/app/music/MusicContentListView;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requeryListCursor mListView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    if-eqz v0, :cond_33

    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mIsGridView:Z

    if-nez v0, :cond_33

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/widget/CommonMusicListView;->reQueryListCursor(Z)V

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    new-instance v1, Lcom/sec/android/app/music/MusicContentListView$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/MusicContentListView$4;-><init>(Lcom/sec/android/app/music/MusicContentListView;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/music/widget/CommonMusicListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 337
    :cond_33
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mGridView:Lcom/sec/android/app/music/MusicGridView;

    if-eqz v0, :cond_40

    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mIsGridView:Z

    if-eqz v0, :cond_40

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mGridView:Lcom/sec/android/app/music/MusicGridView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/MusicGridView;->reQueryListCursor(Z)V

    .line 340
    :cond_40
    return-void
.end method

.method public refreshCheckedItemsView()V
    .registers 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    instance-of v0, v0, Lcom/sec/android/app/music/TrackListView;

    if-eqz v0, :cond_11

    .line 579
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    check-cast v0, Lcom/sec/android/app/music/TrackListView;

    invoke-virtual {v0}, Lcom/sec/android/app/music/TrackListView;->refreshCheckedItemsView()V

    .line 581
    :cond_11
    return-void
.end method

.method public restoreCheckedItem(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    if-eqz v0, :cond_b

    .line 573
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    check-cast v0, Lcom/sec/android/app/music/TrackListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/TrackListView;->restoreCheckedItem(I)V

    .line 575
    :cond_b
    return-void
.end method

.method public setAllItemChecked(Z)V
    .registers 3
    .parameter "check"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    if-eqz v0, :cond_9

    .line 436
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/widget/CommonMusicListView;->setAllItemChecked(Z)V

    .line 438
    :cond_9
    return-void
.end method

.method public setAutoReQuery(Z)V
    .registers 3
    .parameter "autoRequery"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    if-eqz v0, :cond_9

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/widget/CommonMusicListView;->setAutoReQuery(Z)V

    .line 354
    :cond_9
    return-void
.end method

.method public setCheckBoxView(Landroid/widget/CheckBox;)V
    .registers 3
    .parameter "checkBox"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    if-eqz v0, :cond_9

    .line 424
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/widget/CommonMusicListView;->setCheckBoxView(Landroid/widget/CheckBox;)V

    .line 426
    :cond_9
    return-void
.end method

.method public setContentChangedListenHandler(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    if-eqz v0, :cond_9

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/widget/CommonMusicListView;->setContentChangedListenHandler(Landroid/os/Handler;)V

    .line 347
    :cond_9
    return-void
.end method

.method public setDropListener(Lcom/sec/android/app/music/widget/ChangeOrderListView$DropListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    instance-of v0, v0, Lcom/sec/android/app/music/widget/ChangeOrderListView;

    if-eqz v0, :cond_11

    .line 528
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    check-cast v0, Lcom/sec/android/app/music/widget/ChangeOrderListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/widget/ChangeOrderListView;->setDropListener(Lcom/sec/android/app/music/widget/ChangeOrderListView$DropListener;)V

    .line 530
    :cond_11
    return-void
.end method

.method public setIndexScrollViewVisibility(I)V
    .registers 4
    .parameter "visibility"

    .prologue
    .line 377
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    if-eqz v1, :cond_13

    .line 381
    if-nez p1, :cond_14

    .line 382
    const-string v1, "IndexView"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/MusicContentListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 383
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_13

    .line 384
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/MusicContentListView;->addView(Landroid/view/View;)V

    .line 393
    .end local v0           #v:Landroid/view/View;
    :cond_13
    :goto_13
    return-void

    .line 387
    :cond_14
    const-string v1, "IndexView"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/MusicContentListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 388
    .restart local v0       #v:Landroid/view/View;
    if-eqz v0, :cond_13

    .line 389
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentListView;->mIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/MusicContentListView;->removeView(Landroid/view/View;)V

    goto :goto_13
.end method

.method public setOnMusicPlayListItemClickListener(Lcom/sec/android/app/music/widget/OnMusicPlayListItemClickListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    instance-of v0, v0, Lcom/sec/android/app/music/MusicTabListView;

    if-eqz v0, :cond_11

    .line 418
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    check-cast v0, Lcom/sec/android/app/music/MusicTabListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/MusicTabListView;->setOnMusicPlayListItemClickListener(Lcom/sec/android/app/music/widget/OnMusicPlayListItemClickListener;)V

    .line 420
    :cond_11
    return-void
.end method

.method public setSelection(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 566
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    instance-of v0, v0, Lcom/sec/android/app/music/TrackListView;

    if-eqz v0, :cond_11

    .line 567
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    check-cast v0, Lcom/sec/android/app/music/TrackListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/TrackListView;->setSelection(I)V

    .line 569
    :cond_11
    return-void
.end method

.method public setSoftButton(Landroid/widget/Button;)V
    .registers 3
    .parameter "button"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    if-eqz v0, :cond_9

    .line 430
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/widget/CommonMusicListView;->setSoftButton(Landroid/widget/Button;)V

    .line 432
    :cond_9
    return-void
.end method

.method public setSplitBarPress(Z)V
    .registers 3
    .parameter "isPressed"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    instance-of v0, v0, Lcom/sec/android/app/music/MusicTabListView;

    if-eqz v0, :cond_11

    .line 475
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    check-cast v0, Lcom/sec/android/app/music/MusicTabListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/MusicTabListView;->setSplitBarPress(Z)V

    .line 477
    :cond_11
    return-void
.end method

.method public setVisibility(I)V
    .registers 5
    .parameter "visibility"

    .prologue
    .line 363
    sget-object v0, Lcom/sec/android/app/music/MusicContentListView;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    invoke-virtual {v0}, Lcom/sec/android/app/music/widget/CommonMusicListView;->getCount()I

    move-result v0

    if-nez v0, :cond_28

    .line 374
    :cond_27
    :goto_27
    return-void

    .line 370
    :cond_28
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/MusicContentListView;->hideEmptyView(Landroid/widget/ListView;)V

    goto :goto_27
.end method

.method public startNowplayingProgress()V
    .registers 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    instance-of v0, v0, Lcom/sec/android/app/music/TrackListView;

    if-eqz v0, :cond_11

    .line 541
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    check-cast v0, Lcom/sec/android/app/music/TrackListView;

    invoke-virtual {v0}, Lcom/sec/android/app/music/TrackListView;->startNowplayingProgress()V

    .line 543
    :cond_11
    return-void
.end method

.method public stopNowplayingProgress()V
    .registers 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    instance-of v0, v0, Lcom/sec/android/app/music/TrackListView;

    if-eqz v0, :cond_11

    .line 548
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    check-cast v0, Lcom/sec/android/app/music/TrackListView;

    invoke-virtual {v0}, Lcom/sec/android/app/music/TrackListView;->stopNowplayingProgress()V

    .line 550
    :cond_11
    return-void
.end method

.method public updatePlayOrder()V
    .registers 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    instance-of v0, v0, Lcom/sec/android/app/music/TrackListView;

    if-eqz v0, :cond_11

    .line 534
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentListView;->mListView:Lcom/sec/android/app/music/widget/CommonMusicListView;

    check-cast v0, Lcom/sec/android/app/music/TrackListView;

    invoke-virtual {v0}, Lcom/sec/android/app/music/TrackListView;->updatePlayOrder()V

    .line 536
    :cond_11
    return-void
.end method
