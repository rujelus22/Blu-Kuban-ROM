.class public Lcom/vlingo/client/help/InCarScreen;
.super Landroid/app/Activity;
.source "InCarScreen.java"

# interfaces
.implements Lcom/vlingo/client/scroller/ScrollableItemChangeListener;


# instance fields
.field private doneButton:Landroid/widget/Button;

.field private dot_0:Landroid/widget/ImageView;

.field private dot_1:Landroid/widget/ImageView;

.field private dot_2:Landroid/widget/ImageView;

.field private dot_3:Landroid/widget/ImageView;

.field private progressContainer:Landroid/widget/LinearLayout;

.field private scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/help/InCarScreen;)Lcom/vlingo/client/scroller/ScrollableContainer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vlingo/client/help/InCarScreen;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 29
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/vlingo/client/help/InCarScreen;->requestWindowFeature(I)Z

    .line 44
    const v25, 0x7f030038

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/vlingo/client/help/InCarScreen;->setContentView(I)V

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/help/InCarScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f020154

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/vlingo/client/ui/UIUtils;->setActivityBackgroundToDrawable(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V

    .line 47
    const v25, 0x7f0f004d

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/vlingo/client/help/InCarScreen;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/vlingo/client/scroller/ScrollableContainer;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/help/InCarScreen;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    .line 48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/help/InCarScreen;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/vlingo/client/scroller/ScrollableContainer;->setChangeListener(Lcom/vlingo/client/scroller/ScrollableItemChangeListener;)V

    .line 49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/help/InCarScreen;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/vlingo/client/scroller/ScrollableContainer;->init()V

    .line 50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/help/InCarScreen;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/vlingo/client/scroller/ScrollableContainer;->setCurrentScreenIndex(I)V

    .line 53
    const v25, 0x7f0f004b

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/vlingo/client/help/InCarScreen;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/help/InCarScreen;->dot_0:Landroid/widget/ImageView;

    .line 54
    const v25, 0x7f0f004a

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/vlingo/client/help/InCarScreen;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/help/InCarScreen;->dot_1:Landroid/widget/ImageView;

    .line 55
    const v25, 0x7f0f004c

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/vlingo/client/help/InCarScreen;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/help/InCarScreen;->dot_2:Landroid/widget/ImageView;

    .line 56
    const v25, 0x7f0f00f0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/vlingo/client/help/InCarScreen;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/help/InCarScreen;->dot_3:Landroid/widget/ImageView;

    .line 58
    const v25, 0x7f0f0051

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/vlingo/client/help/InCarScreen;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/help/InCarScreen;->progressContainer:Landroid/widget/LinearLayout;

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/help/InCarScreen;->progressContainer:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    invoke-virtual/range {v25 .. v26}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 61
    const v25, 0x7f0f0055

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/vlingo/client/help/InCarScreen;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/Button;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/help/InCarScreen;->doneButton:Landroid/widget/Button;

    .line 62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/help/InCarScreen;->doneButton:Landroid/widget/Button;

    move-object/from16 v25, v0

    const v26, 0x7f090260

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/vlingo/client/help/InCarScreen;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/help/InCarScreen;->doneButton:Landroid/widget/Button;

    move-object/from16 v25, v0

    new-instance v26, Lcom/vlingo/client/help/InCarScreen$1;

    invoke-direct/range {v26 .. v27}, Lcom/vlingo/client/help/InCarScreen$1;-><init>(Lcom/vlingo/client/help/InCarScreen;)V

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v25, 0x7f0901ed

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/vlingo/client/help/InCarScreen;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    .line 73
    .local v5, html:Landroid/text/Spanned;
    const v25, 0x7f0f004e

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/vlingo/client/help/InCarScreen;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/RelativeLayout;

    .line 74
    .local v23, welcomeItem:Landroid/widget/RelativeLayout;
    const v25, 0x7f0f0057

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 75
    .local v22, welcomeBody:Landroid/widget/TextView;
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    const v25, 0x7f0f0058

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    .line 77
    .local v12, rightBtn:Landroid/widget/ImageButton;
    new-instance v25, Lcom/vlingo/client/help/InCarScreen$2;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vlingo/client/help/InCarScreen$2;-><init>(Lcom/vlingo/client/help/InCarScreen;)V

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v25, 0x7f0f0056

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 83
    .local v4, count:Landroid/widget/TextView;
    const-string v25, "1/4"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const v25, 0x7f0f004f

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/vlingo/client/help/InCarScreen;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/RelativeLayout;

    .line 87
    .local v24, wycsItem:Landroid/widget/RelativeLayout;
    const v25, 0x7f0f0056

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #count:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 88
    .restart local v4       #count:Landroid/widget/TextView;
    const-string v25, "2/4"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const v25, 0x7f0f005c

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 90
    .local v2, callEx:Landroid/widget/TextView;
    const v25, 0x7f0f005b

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 91
    .local v3, callIc:Landroid/widget/ImageView;
    const v25, 0x7f0f005e

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 92
    .local v17, textEx:Landroid/widget/TextView;
    const v25, 0x7f0f005d

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 93
    .local v18, textIc:Landroid/widget/ImageView;
    const v25, 0x7f0f0060

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 94
    .local v10, navEx:Landroid/widget/TextView;
    const v25, 0x7f0f005f

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 95
    .local v11, navIc:Landroid/widget/ImageView;
    const v25, 0x7f0f0062

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 96
    .local v15, srEx:Landroid/widget/TextView;
    const v25, 0x7f0f0061

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 98
    .local v16, srIc:Landroid/widget/ImageView;
    const v25, 0x7f09004e

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/vlingo/client/help/InCarScreen;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    .line 99
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const v25, 0x7f02011f

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    const v25, 0x7f09004f

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/vlingo/client/help/InCarScreen;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    .line 103
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const v25, 0x7f020133

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    const v25, 0x7f090050

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/vlingo/client/help/InCarScreen;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    .line 107
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    const v25, 0x7f02013a

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    const v25, 0x7f090051

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/vlingo/client/help/InCarScreen;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    .line 111
    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const v25, 0x7f020141

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    const v25, 0x7f0f0135

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 116
    .local v8, musicEx:Landroid/widget/TextView;
    const v25, 0x7f0f0134

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 117
    .local v9, musicIc:Landroid/widget/ImageView;
    const v25, 0x7f0f0133

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 118
    .local v13, scheduleEx:Landroid/widget/TextView;
    const v25, 0x7f0f0132

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 119
    .local v14, scheduleIc:Landroid/widget/ImageView;
    const v25, 0x7f0f0137

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 120
    .local v6, memoEx:Landroid/widget/TextView;
    const v25, 0x7f0f0136

    invoke-virtual/range {v24 .. v25}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 122
    .local v7, memoIc:Landroid/widget/ImageView;
    const v25, 0x7f090052

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/vlingo/client/help/InCarScreen;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    .line 123
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const v25, 0x7f02013e

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    const v25, 0x7f090053

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/vlingo/client/help/InCarScreen;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    .line 127
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    const v25, 0x7f020136

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    const v25, 0x7f090054

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/vlingo/client/help/InCarScreen;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    .line 131
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    const v25, 0x7f02012f

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    const v25, 0x7f0f0050

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/vlingo/client/help/InCarScreen;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/RelativeLayout;

    .line 136
    .local v19, tipsItem:Landroid/widget/RelativeLayout;
    const v25, 0x7f0f0056

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #count:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 137
    .restart local v4       #count:Landroid/widget/TextView;
    const-string v25, "3/4"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const v25, 0x7f0f00f1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/vlingo/client/help/InCarScreen;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/RelativeLayout;

    .line 140
    .local v21, wakeupItem:Landroid/widget/RelativeLayout;
    const v25, 0x7f0f0130

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 141
    .local v20, tv:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/help/InCarScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f090055

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    .line 142
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v25

    const-string v26, "car-help"

    invoke-virtual/range {v25 .. v26}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public onScrollableContainerItemChanged(Lcom/vlingo/client/scroller/ScrollableContainer;Lcom/vlingo/client/scroller/ScrollableItem;Lcom/vlingo/client/scroller/ScrollableItem;I)V
    .registers 9
    .parameter "container"
    .parameter "prevItem"
    .parameter "newItem"
    .parameter "newItemIndex"

    .prologue
    .line 148
    const/4 v2, 0x4

    new-array v0, v2, [Landroid/widget/ImageView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vlingo/client/help/InCarScreen;->dot_0:Landroid/widget/ImageView;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vlingo/client/help/InCarScreen;->dot_1:Landroid/widget/ImageView;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/vlingo/client/help/InCarScreen;->dot_2:Landroid/widget/ImageView;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/vlingo/client/help/InCarScreen;->dot_3:Landroid/widget/ImageView;

    aput-object v3, v0, v2

    .line 149
    .local v0, dots:[Landroid/widget/ImageView;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_18
    array-length v2, v0

    if-ge v1, v2, :cond_31

    .line 150
    if-ne v1, p4, :cond_28

    .line 151
    aget-object v2, v0, v1

    const v3, 0x7f020041

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 154
    :cond_28
    aget-object v2, v0, v1

    const v3, 0x7f020040

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_25

    .line 157
    :cond_31
    return-void
.end method
