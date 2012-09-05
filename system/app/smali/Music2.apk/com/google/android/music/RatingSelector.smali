.class public Lcom/google/android/music/RatingSelector;
.super Landroid/widget/FrameLayout;
.source "RatingSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMarginDeterminer:Landroid/view/View;

.field private mParent:Lcom/google/android/music/MediaPlaybackActivity;

.field private mRating:I

.field private mRatingsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStars:[Landroid/widget/ImageView;

.field private mStarsView:Landroid/view/View;

.field private mThumbsDown:Landroid/widget/ImageView;

.field private mThumbsUp:Landroid/widget/ImageView;

.field private mThumbsView:Landroid/view/View;

.field private mUseStars:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 64
    iput-object p1, p0, Lcom/google/android/music/RatingSelector;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput-object p1, p0, Lcom/google/android/music/RatingSelector;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/RatingSelector;)Lcom/google/android/music/MediaPlaybackActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/music/RatingSelector;->mParent:Lcom/google/android/music/MediaPlaybackActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/RatingSelector;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/google/android/music/RatingSelector;->mRating:I

    return v0
.end method

.method private changeRating(I)V
    .registers 4
    .parameter "rating"

    .prologue
    .line 179
    iget v0, p0, Lcom/google/android/music/RatingSelector;->mRating:I

    if-ne v0, p1, :cond_15

    .line 181
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/RatingSelector;->mRating:I

    .line 187
    :goto_7
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/RatingSelector$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/RatingSelector$1;-><init>(Lcom/google/android/music/RatingSelector;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 198
    invoke-direct {p0}, Lcom/google/android/music/RatingSelector;->updateImages()V

    .line 199
    return-void

    .line 184
    :cond_15
    iput p1, p0, Lcom/google/android/music/RatingSelector;->mRating:I

    goto :goto_7
.end method

.method private convertRatingToThumbs(I)I
    .registers 2
    .parameter "rating"

    .prologue
    .line 155
    packed-switch p1, :pswitch_data_a

    .line 167
    :pswitch_3
    const/4 p1, 0x0

    .line 170
    :goto_4
    return p1

    .line 158
    :pswitch_5
    const/4 p1, 0x1

    .line 159
    goto :goto_4

    .line 162
    :pswitch_7
    const/4 p1, 0x5

    .line 163
    goto :goto_4

    .line 155
    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private prepButton(Landroid/widget/ImageView;ILcom/google/android/music/jumper/MusicPreferences;)V
    .registers 6
    .parameter "button"
    .parameter "padding"
    .parameter "preferences"

    .prologue
    .line 118
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    new-instance v0, Lcom/google/android/music/FadingColorDrawable;

    iget-object v1, p0, Lcom/google/android/music/RatingSelector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    invoke-virtual {p3}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-nez v0, :cond_16

    .line 121
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 123
    :cond_16
    return-void
.end method

.method private updateImages()V
    .registers 5

    .prologue
    const v3, 0x7f0200e8

    const v2, 0x7f0200d6

    .line 205
    iget-object v1, p0, Lcom/google/android/music/RatingSelector;->mThumbsView:Landroid/view/View;

    if-eqz v1, :cond_19

    .line 207
    iget v1, p0, Lcom/google/android/music/RatingSelector;->mRating:I

    packed-switch v1, :pswitch_data_54

    .line 221
    :pswitch_f
    iget-object v1, p0, Lcom/google/android/music/RatingSelector;->mThumbsDown:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 222
    iget-object v1, p0, Lcom/google/android/music/RatingSelector;->mThumbsUp:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 226
    :cond_19
    :goto_19
    iget-object v1, p0, Lcom/google/android/music/RatingSelector;->mStarsView:Landroid/view/View;

    if-eqz v1, :cond_52

    .line 228
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1e
    const/4 v1, 0x5

    if-ge v0, v1, :cond_52

    .line 229
    iget-object v1, p0, Lcom/google/android/music/RatingSelector;->mStars:[Landroid/widget/ImageView;

    aget-object v2, v1, v0

    iget v1, p0, Lcom/google/android/music/RatingSelector;->mRating:I

    if-le v1, v0, :cond_4e

    const v1, 0x7f0200fb

    :goto_2c
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 210
    .end local v0           #i:I
    :pswitch_32
    iget-object v1, p0, Lcom/google/android/music/RatingSelector;->mThumbsDown:Landroid/widget/ImageView;

    const v2, 0x7f0200df

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 211
    iget-object v1, p0, Lcom/google/android/music/RatingSelector;->mThumbsUp:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_19

    .line 215
    :pswitch_40
    iget-object v1, p0, Lcom/google/android/music/RatingSelector;->mThumbsDown:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    iget-object v1, p0, Lcom/google/android/music/RatingSelector;->mThumbsUp:Landroid/widget/ImageView;

    const v2, 0x7f0200f1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_19

    .line 229
    .restart local v0       #i:I
    :cond_4e
    const v1, 0x7f0200fa

    goto :goto_2c

    .line 233
    .end local v0           #i:I
    :cond_52
    return-void

    .line 207
    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_32
        :pswitch_32
        :pswitch_f
        :pswitch_40
        :pswitch_40
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 134
    iget-object v1, p0, Lcom/google/android/music/RatingSelector;->mRatingsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 135
    .local v0, rating:I
    if-eqz p1, :cond_12

    .line 136
    invoke-direct {p0, v0}, Lcom/google/android/music/RatingSelector;->changeRating(I)V

    .line 140
    return-void

    .line 138
    :cond_12
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown view clicked on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected onFinishInflate()V
    .registers 10

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 69
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 70
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/google/android/music/RatingSelector;->mRatingsMap:Ljava/util/Map;

    .line 73
    const v3, 0x7f1000a8

    invoke-virtual {p0, v3}, Lcom/google/android/music/RatingSelector;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/RatingSelector;->mThumbsView:Landroid/view/View;

    .line 74
    const v3, 0x7f1000a9

    invoke-virtual {p0, v3}, Lcom/google/android/music/RatingSelector;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/google/android/music/RatingSelector;->mThumbsUp:Landroid/widget/ImageView;

    .line 75
    const v3, 0x7f1000aa

    invoke-virtual {p0, v3}, Lcom/google/android/music/RatingSelector;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/google/android/music/RatingSelector;->mThumbsDown:Landroid/widget/ImageView;

    .line 76
    invoke-virtual {p0}, Lcom/google/android/music/RatingSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090066

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 78
    .local v1, imagePadding:I
    iget-object v3, p0, Lcom/google/android/music/RatingSelector;->mContext:Landroid/content/Context;

    invoke-static {v3, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    .line 80
    .local v2, preferences:Lcom/google/android/music/jumper/MusicPreferences;
    :try_start_3f
    iget-object v3, p0, Lcom/google/android/music/RatingSelector;->mThumbsUp:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v1, v2}, Lcom/google/android/music/RatingSelector;->prepButton(Landroid/widget/ImageView;ILcom/google/android/music/jumper/MusicPreferences;)V

    .line 81
    iget-object v3, p0, Lcom/google/android/music/RatingSelector;->mRatingsMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/music/RatingSelector;->mThumbsUp:Landroid/widget/ImageView;

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v3, p0, Lcom/google/android/music/RatingSelector;->mThumbsDown:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v1, v2}, Lcom/google/android/music/RatingSelector;->prepButton(Landroid/widget/ImageView;ILcom/google/android/music/jumper/MusicPreferences;)V

    .line 83
    iget-object v3, p0, Lcom/google/android/music/RatingSelector;->mRatingsMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/music/RatingSelector;->mThumbsDown:Landroid/widget/ImageView;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const v3, 0x7f1000a2

    invoke-virtual {p0, v3}, Lcom/google/android/music/RatingSelector;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/RatingSelector;->mStarsView:Landroid/view/View;

    .line 87
    const/4 v3, 0x5

    new-array v3, v3, [Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/google/android/music/RatingSelector;->mStars:[Landroid/widget/ImageView;

    .line 88
    iget-object v4, p0, Lcom/google/android/music/RatingSelector;->mStars:[Landroid/widget/ImageView;

    const/4 v5, 0x0

    const v3, 0x7f1000a3

    invoke-virtual {p0, v3}, Lcom/google/android/music/RatingSelector;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    .line 89
    iget-object v4, p0, Lcom/google/android/music/RatingSelector;->mStars:[Landroid/widget/ImageView;

    const/4 v5, 0x1

    const v3, 0x7f1000a4

    invoke-virtual {p0, v3}, Lcom/google/android/music/RatingSelector;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    .line 90
    iget-object v4, p0, Lcom/google/android/music/RatingSelector;->mStars:[Landroid/widget/ImageView;

    const/4 v5, 0x2

    const v3, 0x7f1000a5

    invoke-virtual {p0, v3}, Lcom/google/android/music/RatingSelector;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    .line 91
    iget-object v4, p0, Lcom/google/android/music/RatingSelector;->mStars:[Landroid/widget/ImageView;

    const/4 v5, 0x3

    const v3, 0x7f1000a6

    invoke-virtual {p0, v3}, Lcom/google/android/music/RatingSelector;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    .line 92
    iget-object v4, p0, Lcom/google/android/music/RatingSelector;->mStars:[Landroid/widget/ImageView;

    const/4 v5, 0x4

    const v3, 0x7f1000a7

    invoke-virtual {p0, v3}, Lcom/google/android/music/RatingSelector;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v5

    .line 93
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b6
    if-ge v0, v7, :cond_d2

    .line 94
    iget-object v3, p0, Lcom/google/android/music/RatingSelector;->mStars:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v2}, Lcom/google/android/music/RatingSelector;->prepButton(Landroid/widget/ImageView;ILcom/google/android/music/jumper/MusicPreferences;)V

    .line 95
    iget-object v3, p0, Lcom/google/android/music/RatingSelector;->mRatingsMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/music/RatingSelector;->mStars:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_cf
    .catchall {:try_start_3f .. :try_end_cf} :catchall_f6

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_b6

    .line 98
    :cond_d2
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 102
    iget-object v3, p0, Lcom/google/android/music/RatingSelector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "music_use_star_ratings"

    invoke-static {v3, v4, v6}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/music/RatingSelector;->mUseStars:Z

    .line 104
    iget-boolean v3, p0, Lcom/google/android/music/RatingSelector;->mUseStars:Z

    if-eqz v3, :cond_fb

    .line 105
    iget-object v3, p0, Lcom/google/android/music/RatingSelector;->mStarsView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v3, p0, Lcom/google/android/music/RatingSelector;->mThumbsView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 111
    :goto_f5
    return-void

    .line 98
    .end local v0           #i:I
    :catchall_f6
    move-exception v3

    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    throw v3

    .line 108
    .restart local v0       #i:I
    :cond_fb
    iget-object v3, p0, Lcom/google/android/music/RatingSelector;->mThumbsView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v3, p0, Lcom/google/android/music/RatingSelector;->mStarsView:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f5
.end method

.method protected onLayout(ZIIII)V
    .registers 11
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 237
    iget-object v2, p0, Lcom/google/android/music/RatingSelector;->mMarginDeterminer:Landroid/view/View;

    if-eqz v2, :cond_27

    .line 242
    iget-object v2, p0, Lcom/google/android/music/RatingSelector;->mMarginDeterminer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/music/RatingSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090064

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    add-int v0, v2, v3

    .line 244
    .local v0, marginLeft:I
    invoke-virtual {p0}, Lcom/google/android/music/RatingSelector;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 245
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 248
    .end local v0           #marginLeft:I
    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_27
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 249
    return-void
.end method

.method protected setLeftMargin(Landroid/view/View;)V
    .registers 2
    .parameter "toLeft"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/android/music/RatingSelector;->mMarginDeterminer:Landroid/view/View;

    .line 131
    return-void
.end method

.method protected setParent(Lcom/google/android/music/MediaPlaybackActivity;)V
    .registers 2
    .parameter "parent"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/android/music/RatingSelector;->mParent:Lcom/google/android/music/MediaPlaybackActivity;

    .line 127
    return-void
.end method

.method protected setRating(I)V
    .registers 3
    .parameter "rating"

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/google/android/music/RatingSelector;->mUseStars:Z

    if-eqz v0, :cond_a

    .end local p1
    :goto_4
    iput p1, p0, Lcom/google/android/music/RatingSelector;->mRating:I

    .line 148
    invoke-direct {p0}, Lcom/google/android/music/RatingSelector;->updateImages()V

    .line 149
    return-void

    .line 147
    .restart local p1
    :cond_a
    invoke-direct {p0, p1}, Lcom/google/android/music/RatingSelector;->convertRatingToThumbs(I)I

    move-result p1

    goto :goto_4
.end method
