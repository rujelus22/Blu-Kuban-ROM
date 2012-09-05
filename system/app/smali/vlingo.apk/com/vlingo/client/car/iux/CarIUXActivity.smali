.class public Lcom/vlingo/client/car/iux/CarIUXActivity;
.super Lcom/vlingo/client/ui/VLActivity;
.source "CarIUXActivity.java"

# interfaces
.implements Lcom/vlingo/client/scroller/ScrollableItemChangeListener;
.implements Lcom/vlingo/client/car/tts/CarTTSCachedRequests$CarTTSCachedRequestsListener;


# static fields
.field private static final DIALOG_DOWNLOAD_LANG_PACK:I = 0x66

.field private static final DIALOG_ERR:I = -0xc9

.field private static final TTS_DATA_CHECK_CODE:I = 0x3e9

.field private static final TTS_DATA_INSTALL_CODE:I = 0x3ea


# instance fields
.field private cachedRequests:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

.field private doneButton:Landroid/widget/Button;

.field private dot_0:Landroid/widget/ImageView;

.field private dot_1:Landroid/widget/ImageView;

.field private dot_2:Landroid/widget/ImageView;

.field private err:Ljava/lang/String;

.field private progressBar:Landroid/widget/ProgressBar;

.field private progressContainer:Landroid/widget/LinearLayout;

.field private scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/vlingo/client/ui/VLActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/car/iux/CarIUXActivity;)Lcom/vlingo/client/scroller/ScrollableContainer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vlingo/client/car/iux/CarIUXActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vlingo/client/car/iux/CarIUXActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/vlingo/client/car/iux/CarIUXActivity;->onCachingComplete()V

    return-void
.end method

.method static synthetic access$202(Lcom/vlingo/client/car/iux/CarIUXActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/vlingo/client/car/iux/CarIUXActivity;->err:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/vlingo/client/car/iux/CarIUXActivity;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vlingo/client/car/iux/CarIUXActivity;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private onCachingComplete()V
    .registers 1

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/vlingo/client/car/iux/CarIUXActivity;->onDone()V

    .line 238
    return-void
.end method

.method private onDone()V
    .registers 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/vlingo/client/car/iux/CarIUXActivity;->doneButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/vlingo/client/car/iux/CarIUXActivity;->progressContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 230
    return-void
.end method

.method private updateCacheManually()V
    .registers 2

    .prologue
    .line 176
    new-instance v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    invoke-direct {v0}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/car/iux/CarIUXActivity;->cachedRequests:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    .line 177
    iget-object v0, p0, Lcom/vlingo/client/car/iux/CarIUXActivity;->cachedRequests:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    invoke-virtual {v0, p0, p0}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->cacheRequests(Lcom/vlingo/client/car/tts/CarTTSCachedRequests$CarTTSCachedRequestsListener;Landroid/content/Context;)V

    .line 178
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 241
    invoke-super {p0, p1, p2, p3}, Lcom/vlingo/client/ui/VLActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 242
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1a

    .line 246
    const/4 v0, 0x1

    if-ne p2, v0, :cond_e

    .line 247
    invoke-direct {p0}, Lcom/vlingo/client/car/iux/CarIUXActivity;->onDone()V

    .line 260
    :cond_d
    :goto_d
    return-void

    .line 250
    :cond_e
    invoke-virtual {p0}, Lcom/vlingo/client/car/iux/CarIUXActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_d

    .line 251
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/iux/CarIUXActivity;->showDialog(I)V

    goto :goto_d

    .line 255
    :cond_1a
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_d

    .line 258
    invoke-direct {p0}, Lcom/vlingo/client/car/iux/CarIUXActivity;->onDone()V

    goto :goto_d
.end method

.method public onCachingCancelled()V
    .registers 2

    .prologue
    .line 285
    new-instance v0, Lcom/vlingo/client/car/iux/CarIUXActivity$6;

    invoke-direct {v0, p0}, Lcom/vlingo/client/car/iux/CarIUXActivity$6;-><init>(Lcom/vlingo/client/car/iux/CarIUXActivity;)V

    invoke-static {v0}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    .line 292
    return-void
.end method

.method public onCachingFinished(ZLjava/lang/String;)V
    .registers 4
    .parameter "success"
    .parameter "error"

    .prologue
    .line 295
    new-instance v0, Lcom/vlingo/client/car/iux/CarIUXActivity$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/vlingo/client/car/iux/CarIUXActivity$7;-><init>(Lcom/vlingo/client/car/iux/CarIUXActivity;ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    .line 310
    return-void
.end method

.method public onCachingStarted()V
    .registers 2

    .prologue
    .line 313
    new-instance v0, Lcom/vlingo/client/car/iux/CarIUXActivity$8;

    invoke-direct {v0, p0}, Lcom/vlingo/client/car/iux/CarIUXActivity$8;-><init>(Lcom/vlingo/client/car/iux/CarIUXActivity;)V

    invoke-static {v0}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    .line 320
    return-void
.end method

.method public onCachingUpdated(F)V
    .registers 3
    .parameter "percentage"

    .prologue
    .line 323
    new-instance v0, Lcom/vlingo/client/car/iux/CarIUXActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/vlingo/client/car/iux/CarIUXActivity$9;-><init>(Lcom/vlingo/client/car/iux/CarIUXActivity;F)V

    invoke-static {v0}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    .line 330
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 26
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super/range {p0 .. p1}, Lcom/vlingo/client/ui/VLActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/iux/CarIUXActivity;->requestWindowFeature(I)Z

    .line 65
    const v22, 0x7f03004c

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/iux/CarIUXActivity;->setContentView(I)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/car/iux/CarIUXActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f020154

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/vlingo/client/ui/UIUtils;->setActivityBackgroundToDrawable(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V

    .line 68
    const v22, 0x7f0f004d

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/iux/CarIUXActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/vlingo/client/scroller/ScrollableContainer;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/car/iux/CarIUXActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/iux/CarIUXActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vlingo/client/scroller/ScrollableContainer;->setChangeListener(Lcom/vlingo/client/scroller/ScrollableItemChangeListener;)V

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/iux/CarIUXActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/vlingo/client/scroller/ScrollableContainer;->init()V

    .line 71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/iux/CarIUXActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/vlingo/client/scroller/ScrollableContainer;->setCurrentScreenIndex(I)V

    .line 74
    const v22, 0x7f0f004b

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/iux/CarIUXActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/car/iux/CarIUXActivity;->dot_0:Landroid/widget/ImageView;

    .line 75
    const v22, 0x7f0f004a

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/iux/CarIUXActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/car/iux/CarIUXActivity;->dot_1:Landroid/widget/ImageView;

    .line 76
    const v22, 0x7f0f004c

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/iux/CarIUXActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/car/iux/CarIUXActivity;->dot_2:Landroid/widget/ImageView;

    .line 78
    const v22, 0x7f0f0051

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/iux/CarIUXActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/car/iux/CarIUXActivity;->progressContainer:Landroid/widget/LinearLayout;

    .line 79
    const v22, 0x7f0f0054

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/iux/CarIUXActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ProgressBar;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/car/iux/CarIUXActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/iux/CarIUXActivity;->progressBar:Landroid/widget/ProgressBar;

    move-object/from16 v22, v0

    const/16 v23, 0x64

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 81
    const v22, 0x7f0f0055

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/iux/CarIUXActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Button;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/car/iux/CarIUXActivity;->doneButton:Landroid/widget/Button;

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/iux/CarIUXActivity;->doneButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setVisibility(I)V

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/car/iux/CarIUXActivity;->doneButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    new-instance v23, Lcom/vlingo/client/car/iux/CarIUXActivity$1;

    invoke-direct/range {v23 .. v24}, Lcom/vlingo/client/car/iux/CarIUXActivity$1;-><init>(Lcom/vlingo/client/car/iux/CarIUXActivity;)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v22, 0x7f0901ed

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/iux/CarIUXActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 94
    .local v4, html:Landroid/text/Spanned;
    const v22, 0x7f0f004e

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/iux/CarIUXActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout;

    .line 95
    .local v20, welcomeItem:Landroid/widget/RelativeLayout;
    const v22, 0x7f0f0057

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 96
    .local v19, welcomeBody:Landroid/widget/TextView;
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const v22, 0x7f0f0058

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageButton;

    .line 98
    .local v11, rightBtn:Landroid/widget/ImageButton;
    new-instance v22, Lcom/vlingo/client/car/iux/CarIUXActivity$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vlingo/client/car/iux/CarIUXActivity$2;-><init>(Lcom/vlingo/client/car/iux/CarIUXActivity;)V

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v22, 0x7f0f004f

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/iux/CarIUXActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/RelativeLayout;

    .line 106
    .local v21, wycsItem:Landroid/widget/RelativeLayout;
    const v22, 0x7f0f005c

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 107
    .local v2, callEx:Landroid/widget/TextView;
    const v22, 0x7f0f005b

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 108
    .local v3, callIc:Landroid/widget/ImageView;
    const v22, 0x7f0f005e

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 109
    .local v16, textEx:Landroid/widget/TextView;
    const v22, 0x7f0f005d

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 110
    .local v17, textIc:Landroid/widget/ImageView;
    const v22, 0x7f0f0060

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 111
    .local v9, navEx:Landroid/widget/TextView;
    const v22, 0x7f0f005f

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 112
    .local v10, navIc:Landroid/widget/ImageView;
    const v22, 0x7f0f0062

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 113
    .local v14, srEx:Landroid/widget/TextView;
    const v22, 0x7f0f0061

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 115
    .local v15, srIc:Landroid/widget/ImageView;
    const v22, 0x7f09004e

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/iux/CarIUXActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 116
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    const v22, 0x7f02011f

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    const v22, 0x7f09004f

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/iux/CarIUXActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 120
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    const v22, 0x7f020133

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    const v22, 0x7f090050

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/iux/CarIUXActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 124
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    const v22, 0x7f02013a

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    const v22, 0x7f090051

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/iux/CarIUXActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 128
    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    const v22, 0x7f020141

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    const v22, 0x7f0f0135

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 133
    .local v7, musicEx:Landroid/widget/TextView;
    const v22, 0x7f0f0134

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 134
    .local v8, musicIc:Landroid/widget/ImageView;
    const v22, 0x7f0f0133

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 135
    .local v12, scheduleEx:Landroid/widget/TextView;
    const v22, 0x7f0f0132

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 136
    .local v13, scheduleIc:Landroid/widget/ImageView;
    const v22, 0x7f0f0137

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 137
    .local v5, memoEx:Landroid/widget/TextView;
    const v22, 0x7f0f0136

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 139
    .local v6, memoIc:Landroid/widget/ImageView;
    const v22, 0x7f090052

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/iux/CarIUXActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 140
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    const v22, 0x7f02013e

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    const v22, 0x7f090053

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/iux/CarIUXActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 144
    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    const v22, 0x7f020136

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    const v22, 0x7f090054

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/iux/CarIUXActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 148
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    const v22, 0x7f02012f

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v22

    const-string v23, "car-iux"

    invoke-virtual/range {v22 .. v23}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 154
    const/16 v18, 0x0

    .line 155
    .local v18, updateCacheMode:Z
    if-eqz v18, :cond_291

    .line 156
    invoke-direct/range {p0 .. p0}, Lcom/vlingo/client/car/iux/CarIUXActivity;->updateCacheManually()V

    .line 161
    :goto_290
    return-void

    .line 159
    :cond_291
    invoke-direct/range {p0 .. p0}, Lcom/vlingo/client/car/iux/CarIUXActivity;->onDone()V

    goto :goto_290
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 182
    sparse-switch p1, :sswitch_data_74

    .line 216
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 184
    :sswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0901f8

    invoke-virtual {p0, v1}, Lcom/vlingo/client/car/iux/CarIUXActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/car/iux/CarIUXActivity;->err:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901f7

    invoke-virtual {p0, v1}, Lcom/vlingo/client/car/iux/CarIUXActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/vlingo/client/car/iux/CarIUXActivity$3;

    invoke-direct {v2, p0}, Lcom/vlingo/client/car/iux/CarIUXActivity$3;-><init>(Lcom/vlingo/client/car/iux/CarIUXActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 196
    :sswitch_33
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0901f4

    invoke-virtual {p0, v1}, Lcom/vlingo/client/car/iux/CarIUXActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901f6

    invoke-virtual {p0, v1}, Lcom/vlingo/client/car/iux/CarIUXActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901e2

    invoke-virtual {p0, v1}, Lcom/vlingo/client/car/iux/CarIUXActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/vlingo/client/car/iux/CarIUXActivity$5;

    invoke-direct {v2, p0}, Lcom/vlingo/client/car/iux/CarIUXActivity$5;-><init>(Lcom/vlingo/client/car/iux/CarIUXActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901f3

    invoke-virtual {p0, v1}, Lcom/vlingo/client/car/iux/CarIUXActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/vlingo/client/car/iux/CarIUXActivity$4;

    invoke-direct {v2, p0}, Lcom/vlingo/client/car/iux/CarIUXActivity$4;-><init>(Lcom/vlingo/client/car/iux/CarIUXActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 182
    nop

    :sswitch_data_74
    .sparse-switch
        -0xc9 -> :sswitch_8
        0x66 -> :sswitch_33
    .end sparse-switch
.end method

.method public onScrollableContainerItemChanged(Lcom/vlingo/client/scroller/ScrollableContainer;Lcom/vlingo/client/scroller/ScrollableItem;Lcom/vlingo/client/scroller/ScrollableItem;I)V
    .registers 9
    .parameter "container"
    .parameter "prevItem"
    .parameter "newItem"
    .parameter "newItemIndex"

    .prologue
    .line 268
    const/4 v2, 0x3

    new-array v0, v2, [Landroid/widget/ImageView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vlingo/client/car/iux/CarIUXActivity;->dot_0:Landroid/widget/ImageView;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vlingo/client/car/iux/CarIUXActivity;->dot_1:Landroid/widget/ImageView;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/vlingo/client/car/iux/CarIUXActivity;->dot_2:Landroid/widget/ImageView;

    aput-object v3, v0, v2

    .line 269
    .local v0, dots:[Landroid/widget/ImageView;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    array-length v2, v0

    if-ge v1, v2, :cond_2c

    .line 270
    if-ne v1, p4, :cond_23

    .line 271
    aget-object v2, v0, v1

    const v3, 0x7f020041

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 269
    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 274
    :cond_23
    aget-object v2, v0, v1

    const v3, 0x7f020040

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_20

    .line 277
    :cond_2c
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/vlingo/client/car/iux/CarIUXActivity;->cachedRequests:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    if-eqz v0, :cond_a

    .line 221
    iget-object v0, p0, Lcom/vlingo/client/car/iux/CarIUXActivity;->cachedRequests:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->cancel(Z)V

    .line 223
    :cond_a
    invoke-virtual {p0}, Lcom/vlingo/client/car/iux/CarIUXActivity;->finish()V

    .line 224
    invoke-super {p0}, Lcom/vlingo/client/ui/VLActivity;->onStop()V

    .line 225
    return-void
.end method
