.class public Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;
.super Lcom/vlingo/client/ui/VLActivity;
.source "CarIUXCompoundActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$BroadcastReceiverImpl;
    }
.end annotation


# static fields
.field public static final ACTION_CLEANUP:Ljava/lang/String; = "com.vlingo.client.iux.cleanup"

.field public static final EXTRA_STEP:Ljava/lang/String; = "com.vlingo.client.iux.extra.step"


# instance fields
.field private nextButton:Landroid/widget/Button;

.field private prevButton:Landroid/widget/Button;

.field private recv:Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$BroadcastReceiverImpl;

.field private skipButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/vlingo/client/ui/VLActivity;-><init>()V

    .line 148
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f0f012f

    const v6, 0x7f0f012e

    .line 77
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->registerReciever()V

    .line 81
    invoke-virtual {p0}, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.vlingo.client.iux.extra.step"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 82
    .local v1, step:I
    if-nez v1, :cond_4e

    .line 83
    const v3, 0x7f03004d

    invoke-virtual {p0, v3}, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->setContentView(I)V

    .line 84
    const v3, 0x7f09044d

    invoke-virtual {p0, v3}, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {p0, v7}, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->skipButton:Landroid/widget/Button;

    .line 87
    iget-object v3, p0, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->skipButton:Landroid/widget/Button;

    new-instance v4, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$1;

    invoke-direct {v4, p0}, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$1;-><init>(Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    invoke-virtual {p0, v6}, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->nextButton:Landroid/widget/Button;

    .line 95
    iget-object v3, p0, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->nextButton:Landroid/widget/Button;

    new-instance v4, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$2;

    invoke-direct {v4, p0}, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$2;-><init>(Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    :cond_4d
    :goto_4d
    return-void

    .line 103
    :cond_4e
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4d

    .line 104
    const v3, 0x7f030052

    invoke-virtual {p0, v3}, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->setContentView(I)V

    .line 105
    const v3, 0x7f090464

    invoke-virtual {p0, v3}, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    const v3, 0x7f0f0130

    invoke-virtual {p0, v3}, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 108
    .local v2, tf:Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const/16 v3, 0x11

    invoke-static {v3}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 111
    const v3, 0x7f0f0139

    invoke-virtual {p0, v3}, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 112
    .local v0, body3:Landroid/widget/TextView;
    const v3, 0x7f0901e6

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 115
    .end local v0           #body3:Landroid/widget/TextView;
    :cond_90
    invoke-virtual {p0, v7}, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->skipButton:Landroid/widget/Button;

    .line 116
    iget-object v3, p0, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->skipButton:Landroid/widget/Button;

    new-instance v4, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$3;

    invoke-direct {v4, p0}, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$3;-><init>(Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v3, 0x7f0f0138

    invoke-virtual {p0, v3}, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->prevButton:Landroid/widget/Button;

    .line 125
    iget-object v3, p0, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->prevButton:Landroid/widget/Button;

    new-instance v4, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$4;

    invoke-direct {v4, p0}, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$4;-><init>(Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-virtual {p0, v6}, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->nextButton:Landroid/widget/Button;

    .line 131
    iget-object v3, p0, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->nextButton:Landroid/widget/Button;

    new-instance v4, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$5;

    invoke-direct {v4, p0}, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$5;-><init>(Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4d
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/vlingo/client/ui/VLActivity;->onDestroy()V

    .line 63
    invoke-virtual {p0}, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->unregisterReciever()V

    .line 64
    return-void
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 69
    const/16 v0, 0x54

    if-ne p1, v0, :cond_6

    .line 70
    const/4 v0, 0x1

    .line 73
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/vlingo/client/ui/VLActivity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 143
    const-string v0, "com.vlingo.client.ui.extra.FINISH_ACTIVITY"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vlingo.client.iux.cleanup"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 146
    :cond_16
    return-void
.end method

.method public registerReciever()V
    .registers 4

    .prologue
    .line 41
    iget-object v1, p0, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->recv:Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$BroadcastReceiverImpl;

    if-nez v1, :cond_18

    .line 44
    new-instance v1, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$BroadcastReceiverImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$BroadcastReceiverImpl;-><init>(Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$1;)V

    iput-object v1, p0, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->recv:Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$BroadcastReceiverImpl;

    .line 45
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.vlingo.client.iux.cleanup"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->recv:Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$BroadcastReceiverImpl;

    invoke-virtual {p0, v1, v0}, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_18
    return-void
.end method

.method public unregisterReciever()V
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->recv:Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$BroadcastReceiverImpl;

    if-eqz v0, :cond_9

    .line 54
    iget-object v0, p0, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->recv:Lcom/vlingo/client/car/iux/CarIUXCompoundActivity$BroadcastReceiverImpl;

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/iux/CarIUXCompoundActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 56
    :cond_9
    return-void
.end method
