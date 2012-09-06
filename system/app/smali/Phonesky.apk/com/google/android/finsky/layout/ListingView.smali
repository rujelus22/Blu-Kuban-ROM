.class public Lcom/google/android/finsky/layout/ListingView;
.super Landroid/widget/LinearLayout;
.source "ListingView.java"


# instance fields
.field private mCurrentPageUrl:Ljava/lang/String;

.field private mDoc:Lcom/google/android/finsky/api/model/Document;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListingLayout:Landroid/widget/LinearLayout;

.field private mRows:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/ListingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/ListingView;->mInflater:Landroid/view/LayoutInflater;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/ListingView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingView;->mCurrentPageUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/ListingView;)Lcom/google/android/finsky/api/model/Document;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method private addEmailLinkRow(ILjava/lang/String;I)V
    .registers 11
    .parameter "titleId"
    .parameter "link"
    .parameter "iconId"

    .prologue
    .line 298
    const-string v0, "mailto"

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 299
    .local v6, emailUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/google/android/finsky/utils/IntentUtils;->createSendIntentForUrl(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    .line 300
    .local v4, clickIntent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.SUBJECT"

    iget-object v1, p0, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/layout/ListingView;->addLinkRow(ILjava/lang/String;ILandroid/content/Intent;Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method private addFlagContentRow(Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .registers 7
    .parameter "navigationManager"

    .prologue
    .line 322
    iget-object v1, p0, Lcom/google/android/finsky/layout/ListingView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040095

    iget-object v3, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/ListingRow;

    .line 324
    .local v0, rowView:Lcom/google/android/finsky/layout/ListingRow;
    const v2, 0x7f0701ee

    iget-object v1, p0, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2e

    const v1, 0x7f0701ef

    :goto_1d
    invoke-virtual {v0, v2, v1}, Lcom/google/android/finsky/layout/ListingRow;->populate(II)V

    .line 326
    new-instance v1, Lcom/google/android/finsky/layout/ListingView$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/layout/ListingView$2;-><init>(Lcom/google/android/finsky/layout/ListingView;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/ListingRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v1, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 333
    return-void

    .line 324
    :cond_2e
    const v1, 0x7f0701f1

    goto :goto_1d
.end method

.method private addHowToRow(III)V
    .registers 9
    .parameter "titleId"
    .parameter "subtitleId"
    .parameter "iconId"

    .prologue
    .line 282
    iget-object v1, p0, Lcom/google/android/finsky/layout/ListingView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040095

    iget-object v3, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/ListingRow;

    .line 284
    .local v0, rowView:Lcom/google/android/finsky/layout/ListingRow;
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/finsky/layout/ListingRow;->populate(III)V

    .line 285
    invoke-virtual {v0}, Lcom/google/android/finsky/layout/ListingRow;->hideSeparator()V

    .line 287
    iget-object v1, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 288
    iget v1, p0, Lcom/google/android/finsky/layout/ListingView;->mRows:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/finsky/layout/ListingView;->mRows:I

    .line 289
    return-void
.end method

.method private addLinkRow(ILjava/lang/String;ILandroid/content/Intent;Ljava/lang/String;)V
    .registers 11
    .parameter "titleId"
    .parameter "link"
    .parameter "iconId"
    .parameter "clickIntent"
    .parameter "logTag"

    .prologue
    .line 306
    iget-object v1, p0, Lcom/google/android/finsky/layout/ListingView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040095

    iget-object v3, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/ListingRow;

    .line 308
    .local v0, rowView:Lcom/google/android/finsky/layout/ListingRow;
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/finsky/layout/ListingRow;->populate(ILjava/lang/String;I)V

    .line 310
    new-instance v1, Lcom/google/android/finsky/layout/ListingView$1;

    invoke-direct {v1, p0, p4, p5}, Lcom/google/android/finsky/layout/ListingView$1;-><init>(Lcom/google/android/finsky/layout/ListingView;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/ListingRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v1, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 318
    iget v1, p0, Lcom/google/android/finsky/layout/ListingView;->mRows:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/finsky/layout/ListingView;->mRows:I

    .line 319
    return-void
.end method

.method private addWebLinkRow(ILjava/lang/String;ILjava/lang/String;)V
    .registers 11
    .parameter "titleId"
    .parameter "link"
    .parameter "iconId"
    .parameter "logPrefix"

    .prologue
    .line 293
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/utils/IntentUtils;->createViewIntentForUrl(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    .line 294
    .local v4, clickIntent:Landroid/content/Intent;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/layout/ListingView;->addLinkRow(ILjava/lang/String;ILandroid/content/Intent;Ljava/lang/String;)V

    .line 295
    return-void
.end method


# virtual methods
.method public bindFlagContent(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;Z)V
    .registers 6
    .parameter "doc"
    .parameter "navigationManager"
    .parameter "isLoaded"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 202
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_33

    :cond_10
    if-eqz p3, :cond_33

    .line 204
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ListingView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070200

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/layout/ListingView;->setupHeader(Ljava/lang/String;I)V

    .line 206
    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 207
    invoke-direct {p0, p2}, Lcom/google/android/finsky/layout/ListingView;->addFlagContentRow(Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ListingView;->setVisibility(I)V

    .line 212
    :goto_32
    return-void

    .line 210
    :cond_33
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ListingView;->setVisibility(I)V

    goto :goto_32
.end method

.method public bindHowToConsume(Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)V
    .registers 11
    .parameter "currentPageUrl"
    .parameter "doc"

    .prologue
    const v3, 0x7f070265

    const/4 v7, 0x0

    const v6, 0x7f07026c

    const v5, 0x7f020070

    const v4, 0x7f070267

    .line 64
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ListingView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    .local v0, context:Landroid/content/Context;
    iput-object p1, p0, Lcom/google/android/finsky/layout/ListingView;->mCurrentPageUrl:Ljava/lang/String;

    .line 66
    iput v7, p0, Lcom/google/android/finsky/layout/ListingView;->mRows:I

    .line 67
    iput-object p2, p0, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 69
    iget-object v2, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 71
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    .line 72
    .local v1, documentType:I
    packed-switch v1, :pswitch_data_9e

    .line 111
    :goto_23
    :pswitch_23
    iget v2, p0, Lcom/google/android/finsky/layout/ListingView;->mRows:I

    if-nez v2, :cond_99

    .line 112
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/ListingView;->setVisibility(I)V

    .line 117
    :goto_2c
    return-void

    .line 74
    :pswitch_2d
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/layout/ListingView;->setupHeader(Ljava/lang/String;I)V

    .line 75
    const v2, 0x7f070268

    const v3, 0x7f02006f

    invoke-direct {p0, v4, v2, v3}, Lcom/google/android/finsky/layout/ListingView;->addHowToRow(III)V

    .line 77
    const v2, 0x7f07026d

    invoke-direct {p0, v6, v2, v5}, Lcom/google/android/finsky/layout/ListingView;->addHowToRow(III)V

    goto :goto_23

    .line 86
    :pswitch_48
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/layout/ListingView;->setupHeader(Ljava/lang/String;I)V

    .line 87
    const v2, 0x7f07026b

    const v3, 0x7f020071

    invoke-direct {p0, v4, v2, v3}, Lcom/google/android/finsky/layout/ListingView;->addHowToRow(III)V

    goto :goto_23

    .line 93
    :pswitch_5d
    const v2, 0x7f070262

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/layout/ListingView;->setupHeader(Ljava/lang/String;I)V

    .line 94
    const v2, 0x7f07026a

    const v3, 0x7f020073

    invoke-direct {p0, v4, v2, v3}, Lcom/google/android/finsky/layout/ListingView;->addHowToRow(III)V

    .line 96
    const v2, 0x7f07026f

    invoke-direct {p0, v6, v2, v5}, Lcom/google/android/finsky/layout/ListingView;->addHowToRow(III)V

    goto :goto_23

    .line 103
    :pswitch_7b
    const v2, 0x7f070266

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/layout/ListingView;->setupHeader(Ljava/lang/String;I)V

    .line 104
    const v2, 0x7f070269

    const v3, 0x7f020072

    invoke-direct {p0, v4, v2, v3}, Lcom/google/android/finsky/layout/ListingView;->addHowToRow(III)V

    .line 106
    const v2, 0x7f07026e

    invoke-direct {p0, v6, v2, v5}, Lcom/google/android/finsky/layout/ListingView;->addHowToRow(III)V

    goto :goto_23

    .line 115
    :cond_99
    invoke-virtual {p0, v7}, Lcom/google/android/finsky/layout/ListingView;->setVisibility(I)V

    goto :goto_2c

    .line 72
    nop

    :pswitch_data_9e
    .packed-switch 0x2
        :pswitch_5d
        :pswitch_23
        :pswitch_5d
        :pswitch_2d
        :pswitch_7b
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_23
        :pswitch_7b
        :pswitch_7b
    .end packed-switch
.end method

.method public bindLinks(Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)V
    .registers 20
    .parameter "currentPageUrl"
    .parameter "doc"

    .prologue
    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/ListingView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 121
    .local v5, context:Landroid/content/Context;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/finsky/layout/ListingView;->mCurrentPageUrl:Ljava/lang/String;

    .line 122
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/android/finsky/layout/ListingView;->mRows:I

    .line 123
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 125
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 127
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v8

    .line 128
    .local v8, documentType:I
    packed-switch v8, :pswitch_data_142

    .line 190
    :cond_23
    :goto_23
    :pswitch_23
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/finsky/layout/ListingView;->mRows:I

    if-nez v14, :cond_139

    .line 191
    const/16 v14, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/android/finsky/layout/ListingView;->setVisibility(I)V

    .line 196
    :goto_30
    return-void

    .line 130
    :pswitch_31
    const v14, 0x7f070130

    invoke-virtual {v5, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v15}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/google/android/finsky/layout/ListingView;->setupHeader(Ljava/lang/String;I)V

    .line 132
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v14}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v2

    .line 133
    .local v2, appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasDeveloperWebsite()Z

    move-result v14

    if-eqz v14, :cond_6c

    .line 134
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getDeveloperWebsite()Ljava/lang/String;

    move-result-object v7

    .line 135
    .local v7, developerWebsite:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6c

    .line 136
    const v14, 0x7f07014a

    const v15, 0x7f02006d

    const-string v16, "developerLink"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v7, v15, v1}, Lcom/google/android/finsky/layout/ListingView;->addWebLinkRow(ILjava/lang/String;ILjava/lang/String;)V

    .line 141
    .end local v7           #developerWebsite:Ljava/lang/String;
    :cond_6c
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasDeveloperEmail()Z

    move-result v14

    if-eqz v14, :cond_87

    .line 142
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getDeveloperEmail()Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, developerEmail:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_87

    .line 144
    const v14, 0x7f07014b

    const v15, 0x7f02006b

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6, v15}, Lcom/google/android/finsky/layout/ListingView;->addEmailLinkRow(ILjava/lang/String;I)V

    .line 148
    .end local v6           #developerEmail:Ljava/lang/String;
    :cond_87
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v14}, Lcom/google/android/finsky/api/model/Document;->getPrivacyPolicyUrl()Ljava/lang/String;

    move-result-object v11

    .line 149
    .local v11, privacyPolicyUrl:Ljava/lang/String;
    if-eqz v11, :cond_23

    .line 150
    const v14, 0x7f07014c

    const v15, 0x7f02006d

    const-string v16, "privacyPolicy"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v11, v15, v1}, Lcom/google/android/finsky/layout/ListingView;->addWebLinkRow(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_23

    .line 157
    .end local v2           #appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .end local v11           #privacyPolicyUrl:Ljava/lang/String;
    :pswitch_a1
    const v14, 0x7f070135

    invoke-virtual {v5, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v15}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/google/android/finsky/layout/ListingView;->setupHeader(Ljava/lang/String;I)V

    .line 158
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v14}, Lcom/google/android/finsky/api/model/Document;->getArtistDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v3

    .line 159
    .local v3, artistDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    if-eqz v3, :cond_23

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasExternalLinks()Z

    move-result v14

    if-eqz v14, :cond_23

    .line 160
    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->getExternalLinks()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;

    move-result-object v4

    .line 161
    .local v4, artistLinks:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;
    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->getWebsiteUrlCount()I

    move-result v14

    if-lez v14, :cond_f9

    .line 162
    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->getWebsiteUrlList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_d7
    :goto_d7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 163
    .local v12, websiteUrl:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_d7

    .line 164
    const v14, 0x7f07014a

    const v15, 0x7f02006d

    const-string v16, "developerLink"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v12, v15, v1}, Lcom/google/android/finsky/layout/ListingView;->addWebLinkRow(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_d7

    .line 170
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #websiteUrl:Ljava/lang/String;
    :cond_f9
    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->hasYoutubeChannelUrl()Z

    move-result v14

    if-eqz v14, :cond_118

    .line 171
    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->getYoutubeChannelUrl()Ljava/lang/String;

    move-result-object v13

    .line 172
    .local v13, youtubeChannelUrl:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_118

    .line 173
    const v14, 0x7f07014d

    const v15, 0x7f02006e

    const-string v16, "artistYoutubeLink"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v13, v15, v1}, Lcom/google/android/finsky/layout/ListingView;->addWebLinkRow(ILjava/lang/String;ILjava/lang/String;)V

    .line 178
    .end local v13           #youtubeChannelUrl:Ljava/lang/String;
    :cond_118
    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->hasGooglePlusProfileUrl()Z

    move-result v14

    if-eqz v14, :cond_23

    .line 179
    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->getGooglePlusProfileUrl()Ljava/lang/String;

    move-result-object v9

    .line 180
    .local v9, googlePlusProfileUrl:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_23

    .line 181
    const v14, 0x7f07014e

    const v15, 0x7f02006c

    const-string v16, "artistGooglePlusLink"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v9, v15, v1}, Lcom/google/android/finsky/layout/ListingView;->addWebLinkRow(ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_23

    .line 194
    .end local v3           #artistDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    .end local v4           #artistLinks:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;
    .end local v9           #googlePlusProfileUrl:Ljava/lang/String;
    :cond_139
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/android/finsky/layout/ListingView;->setVisibility(I)V

    goto/16 :goto_30

    .line 128
    nop

    :pswitch_data_142
    .packed-switch 0x1
        :pswitch_31
        :pswitch_23
        :pswitch_a1
    .end packed-switch
.end method

.method public bindRentalTerms(Lcom/google/android/finsky/api/model/Document;I)V
    .registers 12
    .parameter "doc"
    .parameter "offerType"

    .prologue
    const/4 v8, 0x0

    .line 215
    iget-object v5, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 216
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getMovieRentalTerms()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;

    .line 217
    .local v4, term:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;
    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->getOfferType()I

    move-result v5

    if-ne v5, p2, :cond_e

    .line 218
    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->getRentalHeader()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/google/android/finsky/layout/ListingView;->setupHeader(Ljava/lang/String;I)V

    .line 219
    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->getTermList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;

    .line 220
    .local v3, subterm:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;
    iget-object v5, p0, Lcom/google/android/finsky/layout/ListingView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040095

    iget-object v7, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/ListingRow;

    .line 222
    .local v2, row:Lcom/google/android/finsky/layout/ListingRow;
    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->getHeader()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/finsky/layout/ListingRow;->populateAsHtml(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v2}, Lcom/google/android/finsky/layout/ListingRow;->hideSeparator()V

    .line 224
    iget-object v5, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_33

    .line 226
    .end local v2           #row:Lcom/google/android/finsky/layout/ListingRow;
    .end local v3           #subterm:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;
    :cond_60
    invoke-virtual {p0, v8}, Lcom/google/android/finsky/layout/ListingView;->setVisibility(I)V

    goto :goto_e

    .line 229
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #term:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;
    :cond_64
    return-void
.end method

.method public bindSubscriptionInfo(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;)V
    .registers 13
    .parameter "doc"
    .parameter "subscriptionEntry"

    .prologue
    const v9, 0x7f040095

    const/4 v8, 0x0

    .line 232
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v3

    .line 233
    .local v3, offers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_7d

    .line 234
    iget-object v6, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 236
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ListingView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f070263

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/google/android/finsky/layout/ListingView;->setupHeader(Ljava/lang/String;I)V

    .line 238
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 241
    .local v2, offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    iget-object v6, p0, Lcom/google/android/finsky/layout/ListingView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v7, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/ListingRow;

    .line 243
    .local v1, descriptionRow:Lcom/google/android/finsky/layout/ListingRow;
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/google/android/finsky/layout/ListingRow;->populateAsHtml(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {v1}, Lcom/google/android/finsky/layout/ListingRow;->hideSeparator()V

    .line 246
    iget-object v6, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 249
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ListingView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {p1, v2, v6}, Lcom/google/android/finsky/layout/SubscriptionView;->getSubscriptionPriceDescription(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/remoting/protos/Common$Offer;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v5

    .line 252
    .local v5, priceDescription:Ljava/lang/String;
    new-instance v0, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;

    invoke-direct {v0}, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;-><init>()V

    .line 254
    .local v0, dateInfo:Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ListingView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v0, p2, v6}, Lcom/google/android/finsky/layout/SubscriptionView;->fillSubscriptionDateInfo(Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;Landroid/content/res/Resources;)V

    .line 256
    iget-object v6, p0, Lcom/google/android/finsky/layout/ListingView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v7, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/layout/ListingRow;

    .line 258
    .local v4, paymentRow:Lcom/google/android/finsky/layout/ListingRow;
    const v6, 0x7f070264

    iget-object v7, v0, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;->renewalDescription:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6, v5, v7}, Lcom/google/android/finsky/layout/ListingRow;->populate(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 260
    invoke-virtual {v4}, Lcom/google/android/finsky/layout/ListingRow;->hideSeparator()V

    .line 261
    iget-object v6, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 263
    invoke-virtual {p0, v8}, Lcom/google/android/finsky/layout/ListingView;->setVisibility(I)V

    .line 265
    .end local v0           #dateInfo:Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;
    .end local v1           #descriptionRow:Lcom/google/android/finsky/layout/ListingRow;
    .end local v2           #offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .end local v4           #paymentRow:Lcom/google/android/finsky/layout/ListingRow;
    .end local v5           #priceDescription:Ljava/lang/String;
    :cond_7d
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 58
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 60
    const v0, 0x7f0800cf

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ListingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    .line 61
    return-void
.end method

.method protected setupHeader(Ljava/lang/String;I)V
    .registers 6
    .parameter "headerString"
    .parameter "headerBackendId"

    .prologue
    .line 268
    const v2, 0x7f0800a8

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/ListingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 269
    .local v1, headerView:Landroid/widget/TextView;
    if-eqz v1, :cond_23

    .line 270
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 272
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ListingView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v0

    .line 277
    .local v0, color:I
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 279
    .end local v0           #color:I
    :cond_23
    return-void
.end method
