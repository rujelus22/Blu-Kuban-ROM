.class public Lcom/vlingo/client/home/RecoButton;
.super Landroid/widget/FrameLayout;
.source "RecoButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/home/RecoButton$3;,
        Lcom/vlingo/client/home/RecoButton$RecoButtonListener;,
        Lcom/vlingo/client/home/RecoButton$State;
    }
.end annotation


# instance fields
.field private btnCaption:Landroid/widget/TextView;

.field private btnIcon:Landroid/widget/ImageView;

.field private btnLabel:Landroid/widget/TextView;

.field private final changeViewHandler:Landroid/os/Handler;

.field private listener:Lcom/vlingo/client/home/RecoButton$RecoButtonListener;

.field private recoButtonWithStatus:Landroid/widget/LinearLayout;

.field private state:Lcom/vlingo/client/home/RecoButton$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    sget-object v0, Lcom/vlingo/client/home/RecoButton$State;->Clear:Lcom/vlingo/client/home/RecoButton$State;

    iput-object v0, p0, Lcom/vlingo/client/home/RecoButton;->state:Lcom/vlingo/client/home/RecoButton$State;

    .line 140
    new-instance v0, Lcom/vlingo/client/home/RecoButton$2;

    invoke-direct {v0, p0}, Lcom/vlingo/client/home/RecoButton$2;-><init>(Lcom/vlingo/client/home/RecoButton;)V

    iput-object v0, p0, Lcom/vlingo/client/home/RecoButton;->changeViewHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/home/RecoButton;)Lcom/vlingo/client/home/RecoButton$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vlingo/client/home/RecoButton;->state:Lcom/vlingo/client/home/RecoButton$State;

    return-object v0
.end method

.method static synthetic access$002(Lcom/vlingo/client/home/RecoButton;Lcom/vlingo/client/home/RecoButton$State;)Lcom/vlingo/client/home/RecoButton$State;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/vlingo/client/home/RecoButton;->state:Lcom/vlingo/client/home/RecoButton$State;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vlingo/client/home/RecoButton;)Lcom/vlingo/client/home/RecoButton$RecoButtonListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vlingo/client/home/RecoButton;->listener:Lcom/vlingo/client/home/RecoButton$RecoButtonListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vlingo/client/home/RecoButton;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vlingo/client/home/RecoButton;->btnLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vlingo/client/home/RecoButton;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vlingo/client/home/RecoButton;->btnIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vlingo/client/home/RecoButton;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vlingo/client/home/RecoButton;->btnCaption:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vlingo/client/home/RecoButton;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vlingo/client/home/RecoButton;->recoButtonWithStatus:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public getState()Lcom/vlingo/client/home/RecoButton$State;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/vlingo/client/home/RecoButton;->state:Lcom/vlingo/client/home/RecoButton$State;

    return-object v0
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 58
    const v0, 0x7f0f014a

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/RecoButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vlingo/client/home/RecoButton;->recoButtonWithStatus:Landroid/widget/LinearLayout;

    .line 59
    const v0, 0x7f0f00a5

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/RecoButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vlingo/client/home/RecoButton;->btnIcon:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f0f00a6

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/RecoButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/home/RecoButton;->btnLabel:Landroid/widget/TextView;

    .line 62
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->getVlingoLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "de-DE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-static {}, Lcom/vlingo/client/settings/Settings;->getVlingoLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ru-RU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 65
    :cond_3c
    iget-object v0, p0, Lcom/vlingo/client/home/RecoButton;->btnLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_4f

    .line 66
    iget-object v0, p0, Lcom/vlingo/client/home/RecoButton;->btnLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vlingo/client/home/RecoButton;->btnLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    const/high16 v3, 0x4110

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 80
    :cond_4f
    const v0, 0x7f0f014b

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/RecoButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/home/RecoButton;->btnCaption:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/vlingo/client/home/RecoButton;->recoButtonWithStatus:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/vlingo/client/home/RecoButton$1;

    invoke-direct {v1, p0}, Lcom/vlingo/client/home/RecoButton$1;-><init>(Lcom/vlingo/client/home/RecoButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    return-void
.end method

.method public setListener(Lcom/vlingo/client/home/RecoButton$RecoButtonListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/vlingo/client/home/RecoButton;->listener:Lcom/vlingo/client/home/RecoButton$RecoButtonListener;

    .line 109
    return-void
.end method

.method public setLongPressListener(Landroid/view/View$OnLongClickListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 48
    if-nez p1, :cond_e

    .line 49
    iget-object v0, p0, Lcom/vlingo/client/home/RecoButton;->recoButtonWithStatus:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLongClickable(Z)V

    .line 52
    :goto_8
    iget-object v0, p0, Lcom/vlingo/client/home/RecoButton;->recoButtonWithStatus:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 53
    return-void

    .line 51
    :cond_e
    iget-object v0, p0, Lcom/vlingo/client/home/RecoButton;->recoButtonWithStatus:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLongClickable(Z)V

    goto :goto_8
.end method

.method public showListening()V
    .registers 3

    .prologue
    .line 128
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton;->changeViewHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 129
    .local v0, m:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 130
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton;->changeViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 131
    return-void
.end method

.method public showSpeakAgain()V
    .registers 3

    .prologue
    .line 122
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton;->changeViewHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 123
    .local v0, m:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 124
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton;->changeViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 125
    return-void
.end method

.method public showTapAndSpeak()V
    .registers 3

    .prologue
    .line 116
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton;->changeViewHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 117
    .local v0, m:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 118
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton;->changeViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 119
    return-void
.end method

.method public showThinking()V
    .registers 3

    .prologue
    .line 134
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton;->changeViewHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 135
    .local v0, m:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 136
    iget-object v1, p0, Lcom/vlingo/client/home/RecoButton;->changeViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 137
    return-void
.end method
