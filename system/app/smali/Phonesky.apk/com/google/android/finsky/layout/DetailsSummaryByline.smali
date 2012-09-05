.class public Lcom/google/android/finsky/layout/DetailsSummaryByline;
.super Lcom/google/android/finsky/layout/AccessibleLinearLayout;
.source "DetailsSummaryByline.java"


# static fields
.field private static final NUMBER_FORMATTER:Ljava/text/NumberFormat;

.field private static final RATING_FORMATTER:Ljava/text/DecimalFormat;


# instance fields
.field private mFirstRow:Landroid/widget/LinearLayout;

.field private mFullMode:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSecondRow:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 37
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->NUMBER_FORMATTER:Ljava/text/NumberFormat;

    .line 42
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->RATING_FORMATTER:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/layout/AccessibleLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_11
    iput-boolean v0, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFullMode:Z

    .line 56
    return-void

    .line 55
    :cond_14
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private configureContentDescription(Lcom/google/android/finsky/api/model/Document;)V
    .registers 16
    .parameter "document"

    .prologue
    .line 94
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->hasRating()Z

    move-result v7

    if-eqz v7, :cond_60

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getRatingCount()J

    move-result-wide v4

    .line 96
    .local v4, ratingCount:J
    :goto_a
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->hasRating()Z

    move-result v7

    if-eqz v7, :cond_63

    .line 97
    sget-object v7, Lcom/google/android/finsky/layout/DetailsSummaryByline;->RATING_FORMATTER:Ljava/text/DecimalFormat;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getStarRating()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, averageRating:Ljava/lang/String;
    :goto_1b
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v0

    .line 103
    .local v0, appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    if-eqz v0, :cond_69

    .line 104
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasNumDownloads()Z

    move-result v7

    if-eqz v7, :cond_66

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getNumDownloads()Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, downloadCount:Ljava/lang/String;
    :goto_2b
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0701a1

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v1, v9, v10

    const/4 v10, 0x2

    aput-object v3, v9, v10

    const/4 v10, 0x3

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getUploadDate()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getInstallationSize()J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 144
    .end local v3           #downloadCount:Ljava/lang/String;
    :cond_5f
    :goto_5f
    return-void

    .line 94
    .end local v0           #appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .end local v1           #averageRating:Ljava/lang/String;
    .end local v4           #ratingCount:J
    :cond_60
    const-wide/16 v4, 0x0

    goto :goto_a

    .line 99
    .restart local v4       #ratingCount:J
    :cond_63
    const-string v1, "0"

    .restart local v1       #averageRating:Ljava/lang/String;
    goto :goto_1b

    .line 104
    .restart local v0       #appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    :cond_66
    const-string v3, "0"

    goto :goto_2b

    .line 113
    :cond_69
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBookDetails()Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    move-result-object v2

    .line 114
    .local v2, bookDetails:Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    if-eqz v2, :cond_bc

    .line 115
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublicationDate()Z

    move-result v7

    if-eqz v7, :cond_5f

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublisher()Z

    move-result v7

    if-eqz v7, :cond_5f

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasNumberOfPages()Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 118
    :try_start_81
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0701a2

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v1, v9, v10

    const/4 v10, 0x2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getPublisher()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getPublicationDate()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/finsky/utils/DateUtils;->formatIso8601Date(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getNumberOfPages()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_b9
    .catch Ljava/text/ParseException; {:try_start_81 .. :try_end_b9} :catch_ba

    goto :goto_5f

    .line 124
    :catch_ba
    move-exception v7

    goto :goto_5f

    .line 129
    :cond_bc
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getVideoDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    move-result-object v6

    .line 130
    .local v6, videoDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    if-eqz v6, :cond_5f

    .line 131
    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasReleaseDate()Z

    move-result v7

    if-eqz v7, :cond_5f

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasDuration()Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 133
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0701a3

    const/4 v7, 0x5

    new-array v10, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v7

    const/4 v7, 0x1

    aput-object v1, v10, v7

    const/4 v11, 0x2

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasContentRating()Z

    move-result v7

    if-eqz v7, :cond_106

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getContentRating()Ljava/lang/String;

    move-result-object v7

    :goto_ed
    aput-object v7, v10, v11

    const/4 v7, 0x3

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getReleaseDate()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    const/4 v7, 0x4

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getDuration()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_5f

    :cond_106
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v7

    const v12, 0x7f070106

    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_ed
.end method

.method private configureItemTextInfo(Lcom/google/android/finsky/api/model/Document;)V
    .registers 3
    .parameter "doc"

    .prologue
    .line 147
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 161
    :goto_7
    return-void

    .line 149
    :pswitch_8
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->configureAppDetailsByline(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_7

    .line 152
    :pswitch_c
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->configureBookDetailsByline(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_7

    .line 155
    :pswitch_10
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->configureMovieDetailsByline(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_7

    .line 158
    :pswitch_14
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->configureAlbumDetailsByline(Lcom/google/android/finsky/api/model/Document;)V

    goto :goto_7

    .line 147
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_c
        :pswitch_14
        :pswitch_8
        :pswitch_10
    .end packed-switch
.end method

.method private configureRating(Lcom/google/android/finsky/api/model/Document;)V
    .registers 11
    .parameter "document"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 77
    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040052

    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 79
    .local v2, ratingView:Landroid/view/View;
    const v3, 0x7f0800b5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    .line 80
    .local v0, ratingBar:Landroid/widget/RatingBar;
    const v3, 0x7f0800b6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 81
    .local v1, ratingCount:Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->hasRating()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getRatingCount()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_4f

    .line 82
    invoke-virtual {v0, v7}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 83
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getStarRating()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 85
    sget-object v3, Lcom/google/android/finsky/layout/DetailsSummaryByline;->NUMBER_FORMATTER:Ljava/text/NumberFormat;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getRatingCount()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :goto_49
    iget-object v3, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 91
    return-void

    .line 87
    :cond_4f
    invoke-virtual {v0, v8}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 88
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_49
.end method


# virtual methods
.method protected configureAlbumDetailsByline(Lcom/google/android/finsky/api/model/Document;)V
    .registers 19
    .parameter "doc"

    .prologue
    .line 292
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    move-result-object v1

    .line 293
    .local v1, albumDetailWrapper:Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;
    if-eqz v1, :cond_de

    .line 294
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->getDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;

    move-result-object v2

    .line 295
    .local v2, albumDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    const/4 v9, 0x0

    .line 297
    .local v9, hasInfo:Z
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasOriginalReleaseDate()Z

    move-result v12

    if-eqz v12, :cond_3d

    .line 299
    :try_start_11
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getOriginalReleaseDate()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/finsky/utils/DateUtils;->formatIso8601Date(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 303
    .local v5, dateText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 304
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    const v13, 0x7f040054

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 306
    .local v10, releaseDateView:Landroid/widget/TextView;
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_3c
    .catch Ljava/text/ParseException; {:try_start_11 .. :try_end_3c} :catch_df

    .line 308
    const/4 v9, 0x1

    .line 315
    .end local v5           #dateText:Ljava/lang/String;
    .end local v10           #releaseDateView:Landroid/widget/TextView;
    :cond_3d
    :goto_3d
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasLabel()Z

    move-result v12

    if-eqz v12, :cond_a2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getLabel()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_a2

    .line 318
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->hasReleaseDate()Z

    move-result v12

    if-eqz v12, :cond_fb

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getReleaseDate()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x4

    if-lt v12, v13, :cond_fb

    .line 319
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getReleaseDate()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x4

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 320
    .local v11, year:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f070209

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v11, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getLabel()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 327
    .end local v11           #year:Ljava/lang/String;
    .local v3, copyrightText:Ljava/lang/String;
    :goto_80
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    const v13, 0x7f040054

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 329
    .local v4, copyrightView:Landroid/widget/TextView;
    const/16 v12, 0x15

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 330
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 332
    const/4 v9, 0x1

    .line 336
    .end local v3           #copyrightText:Ljava/lang/String;
    .end local v4           #copyrightView:Landroid/widget/TextView;
    :cond_a2
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getGenreCount()I

    move-result v12

    if-lez v12, :cond_d5

    .line 337
    const-string v12, ", "

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getGenreList()Ljava/util/List;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    .line 338
    .local v7, genres:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    const v13, 0x7f040054

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 340
    .local v8, genresView:Landroid/widget/TextView;
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 342
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_d5

    .line 343
    const/4 v9, 0x1

    .line 347
    .end local v7           #genres:Ljava/lang/String;
    .end local v8           #genresView:Landroid/widget/TextView;
    :cond_d5
    if-nez v9, :cond_de

    .line 348
    const/16 v12, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->setVisibility(I)V

    .line 351
    .end local v2           #albumDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    .end local v9           #hasInfo:Z
    :cond_de
    return-void

    .line 309
    .restart local v2       #albumDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;
    .restart local v9       #hasInfo:Z
    :catch_df
    move-exception v6

    .line 310
    .local v6, e:Ljava/text/ParseException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot parse ISO 8601 date "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3d

    .line 324
    .end local v6           #e:Ljava/text/ParseException;
    :cond_fb
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f070208

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$MusicDetails;->getLabel()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #copyrightText:Ljava/lang/String;
    goto/16 :goto_80
.end method

.method protected configureAppDetailsByline(Lcom/google/android/finsky/api/model/Document;)V
    .registers 24
    .parameter "doc"

    .prologue
    .line 164
    const-string v13, ""

    .line 165
    .local v13, uploadDate:Ljava/lang/String;
    const-string v11, ""

    .line 166
    .local v11, numDownloads:Ljava/lang/String;
    const-wide/16 v7, 0x0

    .line 168
    .local v7, installationSize:J
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v3

    .line 169
    .local v3, appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    if-eqz v3, :cond_41

    .line 170
    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasUploadDate()Z

    move-result v17

    if-eqz v17, :cond_16

    .line 171
    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getUploadDate()Ljava/lang/String;

    move-result-object v13

    .line 174
    :cond_16
    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasNumDownloads()Z

    move-result v17

    if-eqz v17, :cond_37

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v17

    const v18, 0x7f070103

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getNumDownloads()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 179
    :cond_37
    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasInstallationSize()Z

    move-result v17

    if-eqz v17, :cond_41

    .line 180
    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getInstallationSize()J

    move-result-wide v7

    .line 186
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f040054

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 188
    .local v4, dateView:Landroid/widget/TextView;
    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFullMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6a

    .line 190
    const/16 v17, 0x15

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 192
    :cond_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f040054

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 197
    .local v10, numDownloadView:Landroid/widget/TextView;
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFullMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_f5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    .line 202
    .local v6, host:Landroid/widget/LinearLayout;
    :goto_a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f040051

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 204
    .local v9, installationSizeView:Landroid/view/View;
    const v17, 0x7f0800e6

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 206
    .local v5, downloadSizeView:Landroid/widget/TextView;
    const-wide/16 v17, 0x0

    cmp-long v17, v7, v17

    if-gtz v17, :cond_fa

    const-string v12, ""

    .line 208
    .local v12, sizeText:Ljava/lang/String;
    :goto_ce
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/finsky/receivers/Installer;->getMaxBytesOverMobileRecommended()J

    move-result-wide v14

    .line 211
    .local v14, warningThreshold:J
    const v17, 0x7f0800e7

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 212
    .local v16, wifiWarningView:Landroid/widget/TextView;
    cmp-long v17, v7, v14

    if-ltz v17, :cond_105

    const/16 v17, 0x0

    :goto_ee
    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    return-void

    .line 201
    .end local v5           #downloadSizeView:Landroid/widget/TextView;
    .end local v6           #host:Landroid/widget/LinearLayout;
    .end local v9           #installationSizeView:Landroid/view/View;
    .end local v12           #sizeText:Ljava/lang/String;
    .end local v14           #warningThreshold:J
    .end local v16           #wifiWarningView:Landroid/widget/TextView;
    :cond_f5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    goto :goto_a6

    .line 206
    .restart local v5       #downloadSizeView:Landroid/widget/TextView;
    .restart local v6       #host:Landroid/widget/LinearLayout;
    .restart local v9       #installationSizeView:Landroid/view/View;
    :cond_fa
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    goto :goto_ce

    .line 212
    .restart local v12       #sizeText:Ljava/lang/String;
    .restart local v14       #warningThreshold:J
    .restart local v16       #wifiWarningView:Landroid/widget/TextView;
    :cond_105
    const/16 v17, 0x8

    goto :goto_ee
.end method

.method protected configureBookDetailsByline(Lcom/google/android/finsky/api/model/Document;)V
    .registers 13
    .parameter "doc"

    .prologue
    const/16 v9, 0x15

    const v8, 0x7f040054

    const/4 v10, 0x0

    .line 218
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBookDetails()Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;

    move-result-object v0

    .line 219
    .local v0, bookDetails:Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;
    if-eqz v0, :cond_8a

    .line 221
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublisher()Z

    move-result v6

    if-eqz v6, :cond_28

    .line 222
    iget-object v6, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    iget-object v7, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 224
    .local v5, publisherView:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getPublisher()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v6, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 229
    .end local v5           #publisherView:Landroid/widget/TextView;
    :cond_28
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasNumberOfPages()Z

    move-result v6

    if-eqz v6, :cond_61

    .line 230
    iget-boolean v6, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFullMode:Z

    if-eqz v6, :cond_8b

    iget-object v2, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    .line 231
    .local v2, host:Landroid/widget/LinearLayout;
    :goto_34
    iget-object v6, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v6, v8, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 233
    .local v3, pageCountView:Landroid/widget/TextView;
    iget-boolean v6, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFullMode:Z

    if-eqz v6, :cond_43

    .line 234
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 236
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f070104

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getNumberOfPages()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 242
    .end local v2           #host:Landroid/widget/LinearLayout;
    .end local v3           #pageCountView:Landroid/widget/TextView;
    :cond_61
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->hasPublicationDate()Z

    move-result v6

    if-eqz v6, :cond_8a

    .line 244
    :try_start_67
    iget-object v6, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040054

    iget-object v8, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 246
    .local v4, pubDateView:Landroid/widget/TextView;
    const/16 v6, 0x15

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 247
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/BookInfo$BookDetails;->getPublicationDate()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/finsky/utils/DateUtils;->formatIso8601Date(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v6, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_8a
    .catch Ljava/text/ParseException; {:try_start_67 .. :try_end_8a} :catch_8e

    .line 255
    .end local v4           #pubDateView:Landroid/widget/TextView;
    :cond_8a
    :goto_8a
    return-void

    .line 230
    :cond_8b
    iget-object v2, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    goto :goto_34

    .line 250
    :catch_8e
    move-exception v1

    .line 251
    .local v1, e:Ljava/text/ParseException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot parse ISO 8601 date "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8a
.end method

.method protected configureMovieDetailsByline(Lcom/google/android/finsky/api/model/Document;)V
    .registers 14
    .parameter "doc"

    .prologue
    const/16 v11, 0x15

    const v10, 0x7f040054

    const/4 v9, 0x0

    .line 258
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getVideoDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;

    move-result-object v4

    .line 259
    .local v4, videoDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;
    if-eqz v4, :cond_7a

    .line 261
    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasContentRating()Z

    move-result v5

    if-eqz v5, :cond_7b

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f070105

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getContentRating()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, contentRating:Ljava/lang/String;
    :goto_26
    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 266
    .local v1, contentRatingView:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-boolean v5, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFullMode:Z

    if-eqz v5, :cond_3a

    .line 268
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 270
    :cond_3a
    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 273
    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasReleaseDate()Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 274
    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 276
    .local v3, releaseDateView:Landroid/widget/TextView;
    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getReleaseDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 281
    .end local v3           #releaseDateView:Landroid/widget/TextView;
    :cond_5b
    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->hasDuration()Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 282
    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 284
    .local v2, durationView:Landroid/widget/TextView;
    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoDetails;->getDuration()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 286
    iget-object v5, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 289
    .end local v0           #contentRating:Ljava/lang/String;
    .end local v1           #contentRatingView:Landroid/widget/TextView;
    .end local v2           #durationView:Landroid/widget/TextView;
    :cond_7a
    return-void

    .line 261
    :cond_7b
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f070106

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_26
.end method

.method public setDocument(Lcom/google/android/finsky/api/model/Document;)V
    .registers 5
    .parameter "document"

    .prologue
    const v2, 0x7f040053

    const/4 v1, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->removeAllViews()V

    .line 60
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    .line 61
    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    .line 63
    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    .line 65
    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFirstRow:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->addView(Landroid/view/View;)V

    .line 66
    iget-object v0, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mSecondRow:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->addView(Landroid/view/View;)V

    .line 68
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/DetailsSummaryByline;->mFullMode:Z

    if-eqz v0, :cond_36

    .line 69
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->configureRating(Lcom/google/android/finsky/api/model/Document;)V

    .line 72
    :cond_36
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->configureItemTextInfo(Lcom/google/android/finsky/api/model/Document;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/DetailsSummaryByline;->configureContentDescription(Lcom/google/android/finsky/api/model/Document;)V

    .line 74
    return-void
.end method
