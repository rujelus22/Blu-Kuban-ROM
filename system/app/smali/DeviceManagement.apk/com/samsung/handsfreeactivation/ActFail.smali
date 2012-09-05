.class public Lcom/samsung/handsfreeactivation/ActFail;
.super Landroid/app/Activity;
.source "ActFail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/handsfreeactivation/ActFail$RetryTimer;
    }
.end annotation


# instance fields
.field private activate:Landroid/widget/Button;

.field private cancel:Landroid/widget/Button;

.field private ctd:Landroid/os/CountDownTimer;

.field private mApp:Lcom/samsung/client/DMApp;

.field private final mRetries:I

.field private final mSeconds:I

.field private pb:Landroid/widget/ProgressBar;

.field private tv:Landroid/widget/TextView;

.field private tv2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->pb:Landroid/widget/ProgressBar;

    .line 27
    iput-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->tv:Landroid/widget/TextView;

    .line 28
    iput-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->tv2:Landroid/widget/TextView;

    .line 29
    iput-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->ctd:Landroid/os/CountDownTimer;

    .line 30
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->mRetries:I

    .line 31
    const/16 v0, 0x3c

    iput v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->mSeconds:I

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/handsfreeactivation/ActFail;)Lcom/samsung/client/DMApp;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->mApp:Lcom/samsung/client/DMApp;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/handsfreeactivation/ActFail;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->cancel:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/handsfreeactivation/ActFail;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/samsung/handsfreeactivation/ActFail;->doCancel()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/handsfreeactivation/ActFail;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->tv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/handsfreeactivation/ActFail;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->pb:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private doCancel()V
    .registers 3

    .prologue
    .line 146
    const-string v0, "ActFail"

    const-string v1, "doCancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->ctd:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 152
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->enableKeyGuard()V

    .line 153
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->releaseWakeLock()V

    .line 155
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->setNotification()V

    .line 156
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->launchHomeScreen()V

    .line 157
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const-string v0, "ActFail"

    const-string v1, "onCreate()....... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->mApp:Lcom/samsung/client/DMApp;

    .line 40
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0, p0}, Lcom/samsung/client/DMApp;->setCurrentActivity(Landroid/app/Activity;)V

    .line 41
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0, v7}, Lcom/samsung/client/DMApp;->setHomeLaunchedByApp(Z)V

    .line 43
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/samsung/handsfreeactivation/ActFail;->setContentView(I)V

    .line 45
    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/samsung/handsfreeactivation/ActFail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->cancel:Landroid/widget/Button;

    .line 46
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->cancel:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/handsfreeactivation/ActFail$1;

    invoke-direct {v1, p0}, Lcom/samsung/handsfreeactivation/ActFail$1;-><init>(Lcom/samsung/handsfreeactivation/ActFail;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/samsung/handsfreeactivation/ActFail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->activate:Landroid/widget/Button;

    .line 57
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->activate:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/handsfreeactivation/ActFail$2;

    invoke-direct {v1, p0}, Lcom/samsung/handsfreeactivation/ActFail$2;-><init>(Lcom/samsung/handsfreeactivation/ActFail;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v0, 0x7f070006

    invoke-virtual {p0, v0}, Lcom/samsung/handsfreeactivation/ActFail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->pb:Landroid/widget/ProgressBar;

    .line 70
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->pb:Landroid/widget/ProgressBar;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 71
    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/samsung/handsfreeactivation/ActFail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->tv:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f070008

    invoke-virtual {p0, v0}, Lcom/samsung/handsfreeactivation/ActFail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->tv2:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->tv:Landroid/widget/TextView;

    const-string v1, "60 : seconds"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 76
    new-instance v0, Lcom/samsung/handsfreeactivation/ActFail$RetryTimer;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/handsfreeactivation/ActFail$RetryTimer;-><init>(Lcom/samsung/handsfreeactivation/ActFail;JJ)V

    iput-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->ctd:Landroid/os/CountDownTimer;

    .line 78
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->mApp:Lcom/samsung/client/DMApp;

    iget v1, v0, Lcom/samsung/client/DMApp;->numRetries:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/samsung/client/DMApp;->numRetries:I

    .line 79
    const-string v0, "ActFail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tries Finished numRetries = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/handsfreeactivation/ActFail;->mApp:Lcom/samsung/client/DMApp;

    iget v2, v2, Lcom/samsung/client/DMApp;->numRetries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->mApp:Lcom/samsung/client/DMApp;

    iget v0, v0, Lcom/samsung/client/DMApp;->numRetries:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_f7

    .line 81
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->mApp:Lcom/samsung/client/DMApp;

    iput v7, v0, Lcom/samsung/client/DMApp;->numRetries:I

    .line 82
    invoke-direct {p0}, Lcom/samsung/handsfreeactivation/ActFail;->doCancel()V

    .line 83
    invoke-virtual {p0}, Lcom/samsung/handsfreeactivation/ActFail;->finish()V

    .line 84
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->launchDSAapp()V

    .line 89
    :goto_c5
    const v0, 0x7f050023

    invoke-virtual {p0, v0}, Lcom/samsung/handsfreeactivation/ActFail;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 90
    .local v6, retry:Ljava/lang/String;
    const-string v0, "xx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/handsfreeactivation/ActFail;->mApp:Lcom/samsung/client/DMApp;

    iget v2, v2, Lcom/samsung/client/DMApp;->numRetries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 91
    const-string v0, "yy"

    const-string v1, "5"

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 92
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->tv2:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-void

    .line 86
    .end local v6           #retry:Ljava/lang/String;
    :cond_f7
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/ActFail;->ctd:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_c5
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 192
    const-string v0, "ActFail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEYCODE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    packed-switch p1, :pswitch_data_24

    .line 204
    :goto_1b
    const/4 v0, 0x1

    return v0

    .line 196
    :pswitch_1d
    invoke-virtual {p0}, Lcom/samsung/handsfreeactivation/ActFail;->finish()V

    .line 197
    invoke-direct {p0}, Lcom/samsung/handsfreeactivation/ActFail;->doCancel()V

    goto :goto_1b

    .line 194
    :pswitch_data_24
    .packed-switch 0x4
        :pswitch_1d
    .end packed-switch
.end method

.method protected onUserLeaveHint()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 97
    const-string v1, "ActFail"

    const-string v2, "onUserLeaveHint() ............ "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v1, "ActFail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUserLeaveHint mApp.isHomeLaunchedByApp() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/handsfreeactivation/ActFail;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v3}, Lcom/samsung/client/DMApp;->isHomeLaunchedByApp()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/ActFail;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->isHomeLaunchedByApp()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 143
    :cond_31
    :goto_31
    return-void

    .line 126
    :cond_32
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/content/Intent;

    .line 127
    .local v0, intents:[Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    .line 128
    aget-object v1, v0, v4

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    aget-object v1, v0, v4

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/ActFail;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1, v0}, Lcom/samsung/client/DMApp;->checkTopActivity([Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 136
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/ActFail;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->enableKeyGuard()V

    .line 137
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/ActFail;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->releaseWakeLock()V

    .line 139
    iget-object v1, p0, Lcom/samsung/handsfreeactivation/ActFail;->mApp:Lcom/samsung/client/DMApp;

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->setNotification()V

    .line 141
    invoke-virtual {p0}, Lcom/samsung/handsfreeactivation/ActFail;->finish()V

    goto :goto_31
.end method
