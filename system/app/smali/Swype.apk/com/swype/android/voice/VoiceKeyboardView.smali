.class public Lcom/swype/android/voice/VoiceKeyboardView;
.super Landroid/widget/LinearLayout;
.source "VoiceKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CANCEL_TIMEOUT_MILLISECONDS:I = 0xbb8

.field protected static final MSG_CANCEL:I = 0x4

.field protected static final MSG_ERROR:I = 0x3

.field protected static final MSG_SET_TEXT:I = 0x0

.field protected static final MSG_START_LISTENING:I = 0x1

.field protected static final MSG_START_WORKING:I = 0x2


# instance fields
.field protected animation:Landroid/widget/ImageView;

.field private handler:Landroid/os/Handler;

.field private manager:Lcom/swype/android/voice/VoiceKeyboardManager;

.field protected message:Landroid/widget/TextView;

.field protected voiceButton:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "screen"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "screen"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/swype/android/voice/VoiceKeyboardView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/swype/android/voice/VoiceKeyboardView;->cancel()V

    return-void
.end method

.method private cancel()V
    .registers 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardView;->manager:Lcom/swype/android/voice/VoiceKeyboardManager;

    invoke-virtual {v0}, Lcom/swype/android/voice/VoiceKeyboardManager;->cancel()V

    .line 134
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardView;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardView;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 136
    return-void
.end method


# virtual methods
.method protected init(Lcom/swype/android/voice/VoiceKeyboardManager;)V
    .registers 3
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/swype/android/voice/VoiceKeyboardView;->manager:Lcom/swype/android/voice/VoiceKeyboardManager;

    .line 45
    const v0, 0x7f0d0023

    invoke-virtual {p0, v0}, Lcom/swype/android/voice/VoiceKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardView;->message:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0d0022

    invoke-virtual {p0, v0}, Lcom/swype/android/voice/VoiceKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardView;->animation:Landroid/widget/ImageView;

    .line 47
    const v0, 0x7f0d0024

    invoke-virtual {p0, v0}, Lcom/swype/android/voice/VoiceKeyboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardView;->voiceButton:Landroid/widget/LinearLayout;

    .line 48
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardView;->voiceButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2c

    .line 49
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardView;->voiceButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    :cond_2c
    new-instance v0, Lcom/swype/android/voice/VoiceKeyboardView$1;

    invoke-direct {v0, p0}, Lcom/swype/android/voice/VoiceKeyboardView$1;-><init>(Lcom/swype/android/voice/VoiceKeyboardView;)V

    iput-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardView;->handler:Landroid/os/Handler;

    .line 86
    invoke-virtual {p0}, Lcom/swype/android/voice/VoiceKeyboardView;->requestFocus()Z

    .line 87
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d0024

    if-ne v0, v1, :cond_c

    .line 92
    invoke-direct {p0}, Lcom/swype/android/voice/VoiceKeyboardView;->cancel()V

    .line 94
    :cond_c
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 107
    invoke-direct {p0}, Lcom/swype/android/voice/VoiceKeyboardView;->cancel()V

    .line 108
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    .line 99
    const/16 v0, 0x8

    if-ne p1, v0, :cond_a

    .line 100
    invoke-direct {p0}, Lcom/swype/android/voice/VoiceKeyboardView;->cancel()V

    .line 102
    :cond_a
    return-void
.end method

.method protected setError(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/swype/android/voice/VoiceKeyboardView;->handler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 130
    return-void
.end method

.method protected setListening()V
    .registers 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/swype/android/voice/VoiceKeyboardView;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 122
    return-void
.end method

.method protected setMessage(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/swype/android/voice/VoiceKeyboardView;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 112
    return-void
.end method

.method protected setPreparing()V
    .registers 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardView;->message:Landroid/widget/TextView;

    const v1, 0x7f07007d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 117
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardView;->animation:Landroid/widget/ImageView;

    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    return-void
.end method

.method protected setWorking()V
    .registers 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/swype/android/voice/VoiceKeyboardView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/swype/android/voice/VoiceKeyboardView;->handler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 126
    return-void
.end method
