.class public Lcom/vlingo/client/ui/MessageScreen;
.super Lcom/vlingo/client/ui/VLActivity;
.source "MessageScreen.java"


# instance fields
.field private m_MessageText:Landroid/widget/TextView;

.field private m_Updater:Landroid/os/Handler;

.field private m_okButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/vlingo/client/ui/VLActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/ui/MessageScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/vlingo/client/ui/MessageScreen;->updateDisplay()V

    return-void
.end method

.method private updateDisplay()V
    .registers 4

    .prologue
    .line 106
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->getInstance()Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;

    move-result-object v1

    .line 107
    .local v1, msgDialog:Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;
    if-eqz v1, :cond_f

    .line 108
    invoke-virtual {v1}, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/vlingo/client/ui/MessageScreen;->m_MessageText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .end local v0           #message:Ljava/lang/String;
    :cond_f
    return-void
.end method


# virtual methods
.method public hide()V
    .registers 2

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/vlingo/client/ui/MessageScreen;->finish()V

    .line 99
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->getInstance()Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;

    move-result-object v0

    .line 100
    .local v0, msgDialog:Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;
    if-eqz v0, :cond_c

    .line 101
    invoke-virtual {v0}, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->clearMessage()V

    .line 103
    :cond_c
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x3

    .line 28
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->getInstance()Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;

    move-result-object v2

    .line 30
    .local v2, msgDialog:Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;
    const/4 v1, 0x0

    .line 31
    .local v1, message:Ljava/lang/String;
    if-eqz v2, :cond_f

    .line 32
    invoke-virtual {v2}, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 34
    :cond_f
    if-nez v1, :cond_24

    .line 35
    invoke-virtual {p0}, Lcom/vlingo/client/ui/MessageScreen;->finish()V

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/vlingo/client/home/HomeActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v0, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    invoke-virtual {p0, v0}, Lcom/vlingo/client/ui/MessageScreen;->startActivity(Landroid/content/Intent;)V

    .line 63
    .end local v0           #intent:Landroid/content/Intent;
    :goto_23
    return-void

    .line 42
    :cond_24
    invoke-virtual {p0, v5}, Lcom/vlingo/client/ui/MessageScreen;->requestWindowFeature(I)Z

    .line 43
    invoke-virtual {p0}, Lcom/vlingo/client/ui/MessageScreen;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 44
    .local v3, w:Landroid/view/Window;
    const v4, 0x7f030059

    invoke-virtual {p0, v4}, Lcom/vlingo/client/ui/MessageScreen;->setContentView(I)V

    .line 45
    invoke-virtual {v2}, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->getType()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 46
    const v4, 0x7f0f0154

    invoke-virtual {p0, v4}, Lcom/vlingo/client/ui/MessageScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/vlingo/client/ui/MessageScreen;->m_MessageText:Landroid/widget/TextView;

    .line 47
    const v4, 0x7f0f0155

    invoke-virtual {p0, v4}, Lcom/vlingo/client/ui/MessageScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/vlingo/client/ui/MessageScreen;->m_okButton:Landroid/widget/Button;

    .line 49
    new-instance v4, Lcom/vlingo/client/ui/MessageScreen$1;

    invoke-direct {v4, p0}, Lcom/vlingo/client/ui/MessageScreen$1;-><init>(Lcom/vlingo/client/ui/MessageScreen;)V

    iput-object v4, p0, Lcom/vlingo/client/ui/MessageScreen;->m_Updater:Landroid/os/Handler;

    .line 56
    iget-object v4, p0, Lcom/vlingo/client/ui/MessageScreen;->m_MessageText:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v4, p0, Lcom/vlingo/client/ui/MessageScreen;->m_okButton:Landroid/widget/Button;

    new-instance v5, Lcom/vlingo/client/ui/MessageScreen$2;

    invoke-direct {v5, p0}, Lcom/vlingo/client/ui/MessageScreen$2;-><init>(Lcom/vlingo/client/ui/MessageScreen;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_23
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 81
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->getInstance()Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;

    move-result-object v0

    .line 82
    .local v0, msgDialog:Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;
    invoke-virtual {v0, p0}, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->deactivated(Lcom/vlingo/client/ui/MessageScreen;)V

    .line 83
    invoke-super {p0}, Lcom/vlingo/client/ui/VLActivity;->onPause()V

    .line 84
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 74
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->getInstance()Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;

    move-result-object v0

    .line 75
    .local v0, msgDialog:Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;
    invoke-virtual {v0, p0}, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->activated(Lcom/vlingo/client/ui/MessageScreen;)V

    .line 76
    invoke-super {p0}, Lcom/vlingo/client/ui/VLActivity;->onResume()V

    .line 77
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 67
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->getInstance()Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;

    move-result-object v0

    .line 68
    .local v0, msgDialog:Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;
    invoke-virtual {v0, p0}, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->activated(Lcom/vlingo/client/ui/MessageScreen;)V

    .line 69
    invoke-super {p0}, Lcom/vlingo/client/ui/VLActivity;->onStart()V

    .line 70
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 88
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->getInstance()Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;

    move-result-object v0

    .line 89
    .local v0, msgDialog:Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;
    invoke-virtual {v0, p0}, Lcom/vlingo/client/android/core/asr/AndroidMsgDialog;->deactivated(Lcom/vlingo/client/ui/MessageScreen;)V

    .line 90
    invoke-super {p0}, Lcom/vlingo/client/ui/VLActivity;->onStop()V

    .line 91
    return-void
.end method

.method public updateMessage()V
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vlingo/client/ui/MessageScreen;->m_Updater:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 95
    return-void
.end method
