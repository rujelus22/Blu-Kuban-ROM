.class public Lcom/vlingo/client/car/CarHeaderView;
.super Landroid/widget/RelativeLayout;
.source "CarHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/car/CarHeaderView$CarHeaderCallback;
    }
.end annotation


# instance fields
.field private callback:Lcom/vlingo/client/car/CarHeaderView$CarHeaderCallback;

.field private carAnim:Lcom/vlingo/client/car/CarAnim;

.field private helpBtn:Landroid/widget/ImageButton;

.field private spotIcon:Landroid/widget/ImageView;

.field private topBarFadeAnim:Landroid/view/animation/AlphaAnimation;

.field protected topLabel:Landroid/widget/TextView;

.field private topListening:Landroid/widget/ImageView;

.field protected topLogo:Landroid/widget/TextView;

.field private topThinking:Landroid/widget/ImageView;

.field protected topTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-static {}, Lcom/vlingo/client/car/CarAnim;->newInstance()Lcom/vlingo/client/car/CarAnim;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->carAnim:Lcom/vlingo/client/car/CarAnim;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/car/CarHeaderView;)Lcom/vlingo/client/car/CarHeaderView$CarHeaderCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->callback:Lcom/vlingo/client/car/CarHeaderView$CarHeaderCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vlingo/client/car/CarHeaderView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/vlingo/client/car/CarHeaderView;->setSpotOn()V

    return-void
.end method

.method static synthetic access$200(Lcom/vlingo/client/car/CarHeaderView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/vlingo/client/car/CarHeaderView;->setSpotOff()V

    return-void
.end method

.method private setSpotOff()V
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->spotIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    return-void
.end method

.method private setSpotOn()V
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->spotIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    return-void
.end method


# virtual methods
.method public hideIcon()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 83
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarHeaderView;->resetAnyAnimation()V

    .line 84
    iget-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->topLogo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->topLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->topListening:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->topThinking:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->topTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->helpBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 90
    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    const v3, 0x7f0f010d

    const v2, 0x7f0f0102

    .line 50
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 51
    const v0, 0x7f0f0049

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/CarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->topLogo:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0f00f7

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/CarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->topTitle:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0f00f4

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/CarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->topListening:Landroid/widget/ImageView;

    .line 54
    const v0, 0x7f0f00f3

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/CarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->topThinking:Landroid/widget/ImageView;

    .line 55
    const v0, 0x7f0f00f8

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/CarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->topLabel:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f0f00f5

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/CarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->spotIcon:Landroid/widget/ImageView;

    .line 57
    const v0, 0x7f0f00f6

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/CarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->helpBtn:Landroid/widget/ImageButton;

    .line 58
    invoke-direct {p0}, Lcom/vlingo/client/car/CarHeaderView;->setSpotOff()V

    .line 60
    iget-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->helpBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/vlingo/client/car/CarHeaderView$1;

    invoke-direct {v1, p0}, Lcom/vlingo/client/car/CarHeaderView$1;-><init>(Lcom/vlingo/client/car/CarHeaderView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->helpBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setNextFocusUpId(I)V

    .line 67
    iget-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->helpBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setNextFocusDownId(I)V

    .line 68
    iget-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->helpBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setNextFocusLeftId(I)V

    .line 69
    iget-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->helpBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setNextFocusRightId(I)V

    .line 71
    iget-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->helpBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 72
    return-void
.end method

.method public resetAnyAnimation()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 162
    iget-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->carAnim:Lcom/vlingo/client/car/CarAnim;

    iget-object v1, p0, Lcom/vlingo/client/car/CarHeaderView;->topBarFadeAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/CarAnim;->stopAnimation(Landroid/view/animation/Animation;)V

    .line 163
    iput-object v2, p0, Lcom/vlingo/client/car/CarHeaderView;->topBarFadeAnim:Landroid/view/animation/AlphaAnimation;

    .line 164
    iget-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->topListening:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 165
    iget-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->topThinking:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 166
    return-void
.end method

.method public setCallback(Lcom/vlingo/client/car/CarHeaderView$CarHeaderCallback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/vlingo/client/car/CarHeaderView;->callback:Lcom/vlingo/client/car/CarHeaderView$CarHeaderCallback;

    .line 47
    return-void
.end method

.method public setPhraseSpotting(Z)V
    .registers 3
    .parameter "onOrOff"

    .prologue
    .line 100
    new-instance v0, Lcom/vlingo/client/car/CarHeaderView$2;

    invoke-direct {v0, p0, p1}, Lcom/vlingo/client/car/CarHeaderView$2;-><init>(Lcom/vlingo/client/car/CarHeaderView;Z)V

    invoke-static {v0}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method

.method public showListeningStatus()V
    .registers 5

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarHeaderView;->hideIcon()V

    .line 139
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f00

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/vlingo/client/car/CarHeaderView;->topBarFadeAnim:Landroid/view/animation/AlphaAnimation;

    .line 140
    iget-object v1, p0, Lcom/vlingo/client/car/CarHeaderView;->topBarFadeAnim:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x2ee

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 141
    iget-object v1, p0, Lcom/vlingo/client/car/CarHeaderView;->topBarFadeAnim:Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 142
    iget-object v1, p0, Lcom/vlingo/client/car/CarHeaderView;->topBarFadeAnim:Landroid/view/animation/AlphaAnimation;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 143
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, listening:Ljava/lang/String;
    iget-object v1, p0, Lcom/vlingo/client/car/CarHeaderView;->topLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v1, p0, Lcom/vlingo/client/car/CarHeaderView;->topLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object v1, p0, Lcom/vlingo/client/car/CarHeaderView;->topListening:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vlingo/client/car/CarHeaderView;->topBarFadeAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 147
    return-void
.end method

.method public showLogo()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 113
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarHeaderView;->resetAnyAnimation()V

    .line 115
    iget-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->topLogo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->helpBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->topTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->topLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->topListening:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->topThinking:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    return-void
.end method

.method public showThinkingStatus()V
    .registers 5

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarHeaderView;->hideIcon()V

    .line 151
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f00

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/vlingo/client/car/CarHeaderView;->topBarFadeAnim:Landroid/view/animation/AlphaAnimation;

    .line 152
    iget-object v1, p0, Lcom/vlingo/client/car/CarHeaderView;->topBarFadeAnim:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x2ee

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 153
    iget-object v1, p0, Lcom/vlingo/client/car/CarHeaderView;->topBarFadeAnim:Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 154
    iget-object v1, p0, Lcom/vlingo/client/car/CarHeaderView;->topBarFadeAnim:Landroid/view/animation/AlphaAnimation;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 155
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, processing:Ljava/lang/String;
    iget-object v1, p0, Lcom/vlingo/client/car/CarHeaderView;->topLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v1, p0, Lcom/vlingo/client/car/CarHeaderView;->topLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v1, p0, Lcom/vlingo/client/car/CarHeaderView;->topThinking:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vlingo/client/car/CarHeaderView;->topBarFadeAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 159
    return-void
.end method

.method public showTitle(Ljava/lang/String;)V
    .registers 4
    .parameter "title"

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarHeaderView;->hideIcon()V

    .line 94
    iget-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->topTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->topTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/vlingo/client/car/CarHeaderView;->helpBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 97
    return-void
.end method

.method public showWait()V
    .registers 5

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarHeaderView;->hideIcon()V

    .line 126
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f00

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/vlingo/client/car/CarHeaderView;->topBarFadeAnim:Landroid/view/animation/AlphaAnimation;

    .line 127
    iget-object v1, p0, Lcom/vlingo/client/car/CarHeaderView;->topBarFadeAnim:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x2ee

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 128
    iget-object v1, p0, Lcom/vlingo/client/car/CarHeaderView;->topBarFadeAnim:Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 129
    iget-object v1, p0, Lcom/vlingo/client/car/CarHeaderView;->topBarFadeAnim:Landroid/view/animation/AlphaAnimation;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 130
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, wait:Ljava/lang/String;
    iget-object v1, p0, Lcom/vlingo/client/car/CarHeaderView;->topLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v1, p0, Lcom/vlingo/client/car/CarHeaderView;->topLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    iget-object v1, p0, Lcom/vlingo/client/car/CarHeaderView;->topThinking:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/vlingo/client/car/CarHeaderView;->topBarFadeAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 135
    return-void
.end method
