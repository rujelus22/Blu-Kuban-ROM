.class public Lcom/sec/android/app/ve/view/timeline/MusicTextParent;
.super Landroid/widget/LinearLayout;
.source "MusicTextParent.java"


# instance fields
.field private mDrawableOff:Landroid/graphics/drawable/Drawable;

.field private mDrawableOn:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/MusicTextParent;->init()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/MusicTextParent;->init()V

    .line 34
    return-void
.end method

.method private getMyWidth()V
    .registers 1

    .prologue
    .line 52
    return-void
.end method

.method private init()V
    .registers 3

    .prologue
    const v1, 0x7f0200d4

    .line 43
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/MusicTextParent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicTextParent;->mDrawableOn:Landroid/graphics/drawable/Drawable;

    .line 45
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/MusicTextParent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/MusicTextParent;->mDrawableOff:Landroid/graphics/drawable/Drawable;

    .line 48
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 16
    .parameter "canvas"

    .prologue
    const/4 v13, 0x0

    .line 56
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v9

    if-nez v9, :cond_8

    .line 103
    :goto_7
    return-void

    .line 58
    :cond_8
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v6

    .line 59
    .local v6, tElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getAdditionlAudioEleList()Ljava/util/List;

    move-result-object v0

    .line 61
    .local v0, audioList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    if-eqz v0, :cond_1c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_48

    .line 62
    :cond_1c
    iget-object v9, p0, Lcom/sec/android/app/ve/view/timeline/MusicTextParent;->mDrawableOff:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/MusicTextParent;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/MusicTextParent;->getHeight()I

    move-result v11

    invoke-virtual {v9, v13, v13, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 63
    iget-object v9, p0, Lcom/sec/android/app/ve/view/timeline/MusicTextParent;->mDrawableOff:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 101
    :goto_2e
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 102
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Displatch draw is coming ...:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/MusicTextParent;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_7

    .line 65
    :cond_48
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/external/Element;

    .line 66
    .local v4, musicElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v9

    const/high16 v10, 0x447a

    mul-float/2addr v9, v10

    float-to-long v2, v9

    .line 67
    .local v2, duration:J
    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTotalDuration()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    mul-long v7, v9, v11

    .line 68
    .local v7, totalClipDuration:J
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Song :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - Total:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 69
    cmp-long v9, v2, v7

    if-lez v9, :cond_91

    .line 70
    iget-object v9, p0, Lcom/sec/android/app/ve/view/timeline/MusicTextParent;->mDrawableOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/MusicTextParent;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/MusicTextParent;->getHeight()I

    move-result v11

    invoke-virtual {v9, v13, v13, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 71
    iget-object v9, p0, Lcom/sec/android/app/ve/view/timeline/MusicTextParent;->mDrawableOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2e

    .line 74
    :cond_91
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/MusicTextParent;->getWidth()I

    move-result v9

    int-to-long v9, v9

    mul-long/2addr v9, v2

    div-long/2addr v9, v7

    long-to-int v5, v9

    .line 75
    .local v5, pix:I
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "pixel to draw :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 77
    const/4 v1, 0x0

    .line 78
    .local v1, drawnPix:I
    :goto_af
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/MusicTextParent;->getWidth()I

    move-result v9

    sub-int/2addr v9, v5

    if-lt v1, v9, :cond_ce

    .line 85
    iget-object v9, p0, Lcom/sec/android/app/ve/view/timeline/MusicTextParent;->mDrawableOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/MusicTextParent;->getWidth()I

    move-result v10

    sub-int/2addr v10, v1

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/MusicTextParent;->getHeight()I

    move-result v11

    invoke-virtual {v9, v13, v13, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 86
    iget-object v9, p0, Lcom/sec/android/app/ve/view/timeline/MusicTextParent;->mDrawableOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_2e

    .line 79
    :cond_ce
    iget-object v9, p0, Lcom/sec/android/app/ve/view/timeline/MusicTextParent;->mDrawableOn:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v10, v5, -0xa

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/MusicTextParent;->getHeight()I

    move-result v11

    invoke-virtual {v9, v13, v13, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 80
    iget-object v9, p0, Lcom/sec/android/app/ve/view/timeline/MusicTextParent;->mDrawableOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 81
    int-to-float v9, v5

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 82
    add-int/2addr v1, v5

    goto :goto_af
.end method
