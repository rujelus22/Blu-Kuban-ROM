.class public Lcom/google/android/finsky/utils/BadgeUtils;
.super Ljava/lang/Object;
.source "BadgeUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configureCreatorBadge(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/DecoratedTextView;I)V
    .registers 9
    .parameter "doc"
    .parameter "bitmapLoader"
    .parameter "creatorTextView"
    .parameter "creatorBadgeOverride"

    .prologue
    const/4 v4, 0x0

    .line 28
    const/4 v3, -0x1

    if-eq p3, v3, :cond_8

    .line 29
    invoke-virtual {p2, p3}, Lcom/google/android/finsky/layout/DecoratedTextView;->loadDecoration(I)V

    .line 42
    :cond_7
    :goto_7
    return-void

    .line 30
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasCreatorBadges()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 31
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getFirstCreatorBadge()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    move-result-object v2

    .line 32
    .local v2, firstCreatorBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/BadgeUtils;->getImageUrl(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;I)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, badgeAnnotationUrl:Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 35
    invoke-virtual {p2}, Lcom/google/android/finsky/layout/DecoratedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0046

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 37
    .local v1, badgeSize:I
    invoke-virtual {p2, p1, v0, v1}, Lcom/google/android/finsky/layout/DecoratedTextView;->loadDecoration(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;I)V

    goto :goto_7

    .line 40
    .end local v0           #badgeAnnotationUrl:Ljava/lang/String;
    .end local v1           #badgeSize:I
    .end local v2           #firstCreatorBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    :cond_28
    invoke-virtual {p2, v4, v4, v4, v4}, Lcom/google/android/finsky/layout/DecoratedTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_7
.end method

.method public static configureRatingItemSection(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/widget/RatingBar;Lcom/google/android/finsky/layout/DecoratedTextView;)V
    .registers 12
    .parameter "doc"
    .parameter "bitmapLoader"
    .parameter "ratingBar"
    .parameter "textView"

    .prologue
    const/4 v7, 0x0

    .line 46
    if-eqz p2, :cond_7

    .line 47
    const/4 v3, 0x4

    invoke-virtual {p2, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 49
    :cond_7
    if-eqz p3, :cond_e

    .line 50
    const/16 v3, 0x8

    invoke-virtual {p3, v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    .line 53
    :cond_e
    if-eqz p3, :cond_45

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasItemBadges()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 54
    invoke-virtual {p3, v7}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    .line 55
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getFirstItemBadge()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    move-result-object v2

    .line 56
    .local v2, firstItemBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/BadgeUtils;->getImageUrl(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;I)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, badgeAnnotationUrl:Ljava/lang/String;
    if-eqz v0, :cond_32

    .line 59
    invoke-virtual {p3}, Lcom/google/android/finsky/layout/DecoratedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0046

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 61
    .local v1, badgeSize:I
    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/finsky/layout/DecoratedTextView;->loadDecoration(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;I)V

    .line 63
    .end local v1           #badgeSize:I
    :cond_32
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const v3, 0x7f0a0002

    invoke-virtual {p3, v3, v7}, Lcom/google/android/finsky/layout/DecoratedTextView;->setContentColorId(IZ)V

    .line 65
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p3, v3, v4}, Lcom/google/android/finsky/layout/DecoratedTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 74
    .end local v0           #badgeAnnotationUrl:Ljava/lang/String;
    .end local v2           #firstItemBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    :cond_44
    :goto_44
    return-void

    .line 66
    :cond_45
    if-eqz p3, :cond_57

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasCensoring()Z

    move-result v3

    if-nez v3, :cond_53

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasReleaseType()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 67
    :cond_53
    invoke-static {p0, p3}, Lcom/google/android/finsky/utils/BadgeUtils;->configureTipperSticker(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/DecoratedTextView;)V

    goto :goto_44

    .line 68
    :cond_57
    if-eqz p3, :cond_65

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v3

    const/16 v4, 0x14

    if-ne v3, v4, :cond_65

    .line 69
    invoke-static {p0, p3}, Lcom/google/android/finsky/utils/BadgeUtils;->configureReleaseDate(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/DecoratedTextView;)V

    goto :goto_44

    .line 70
    :cond_65
    if-eqz p2, :cond_44

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasRating()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getRatingCount()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_44

    .line 71
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getStarRating()F

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 72
    invoke-virtual {p2, v7}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_44
.end method

.method private static configureReleaseDate(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/DecoratedTextView;)V
    .registers 4
    .parameter "doc"
    .parameter "textView"

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getTvEpisodeDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getTvEpisodeDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->hasReleaseDate()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 78
    invoke-virtual {p1, v1}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    .line 79
    const v0, 0x7f0a0006

    invoke-virtual {p1, v0, v1}, Lcom/google/android/finsky/layout/DecoratedTextView;->setContentColorId(IZ)V

    .line 80
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getTvEpisodeDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$TvEpisodeDetails;->getReleaseDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/finsky/layout/DecoratedTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 83
    :cond_29
    return-void
.end method

.method public static configureTipperSticker(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/DecoratedTextView;)V
    .registers 8
    .parameter "doc"
    .parameter "textView"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 86
    const/4 v2, -0x1

    .line 88
    .local v2, stringId:I
    const v0, 0x7f0a003b

    .line 89
    .local v0, colorId:I
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasCensoring()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 90
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getCensoring()I

    move-result v3

    packed-switch v3, :pswitch_data_56

    .line 101
    :cond_13
    :goto_13
    if-ne v2, v4, :cond_22

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasReleaseType()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 102
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getReleaseType()I

    move-result v3

    packed-switch v3, :pswitch_data_5e

    .line 114
    :cond_22
    :goto_22
    if-le v2, v4, :cond_3e

    .line 115
    invoke-virtual {p1, v5}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    .line 116
    invoke-virtual {p1}, Lcom/google/android/finsky/layout/DecoratedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, stickerLabel:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->setContentColorId(IZ)V

    .line 119
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v5}, Lcom/google/android/finsky/layout/DecoratedTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 121
    .end local v1           #stickerLabel:Ljava/lang/String;
    :cond_3e
    return-void

    .line 92
    :pswitch_3f
    const v2, 0x7f07024a

    .line 93
    const v0, 0x7f0a003a

    .line 94
    goto :goto_13

    .line 96
    :pswitch_46
    const v2, 0x7f07024b

    goto :goto_13

    .line 104
    :pswitch_4a
    const v2, 0x7f07024d

    .line 105
    goto :goto_22

    .line 107
    :pswitch_4e
    const v2, 0x7f07024e

    .line 108
    goto :goto_22

    .line 110
    :pswitch_52
    const v2, 0x7f07024c

    goto :goto_22

    .line 90
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_46
    .end packed-switch

    .line 102
    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_52
        :pswitch_4a
        :pswitch_4e
    .end packed-switch
.end method

.method public static getImageUrl(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;I)Ljava/lang/String;
    .registers 5
    .parameter "badge"
    .parameter "imageType"

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->getImageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 19
    .local v1, image:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageType()I

    move-result v2

    if-ne v2, p1, :cond_8

    .line 20
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 23
    .end local v1           #image:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :goto_1e
    return-object v2

    :cond_1f
    const/4 v2, 0x0

    goto :goto_1e
.end method
