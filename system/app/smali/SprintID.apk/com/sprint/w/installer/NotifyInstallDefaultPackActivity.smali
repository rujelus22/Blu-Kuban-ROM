.class public Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;
.super Landroid/app/Activity;
.source "NotifyInstallDefaultPackActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;
    }
.end annotation


# static fields
.field public static final ACTION_NOTIFY:Ljava/lang/String; = "com.sprint.w.installer.ACTION_NOTIFY"

.field public static final EXTRA_PENDINGINTENT:Ljava/lang/String; = "EXTRA_PENDINGINTENT"

.field public static final EXTRA_SERVICEPACK:Ljava/lang/String; = "EXTRA_SERVICEPACK"


# instance fields
.field private log:Lcom/sprint/id/logger/Logger;

.field mButton:Landroid/widget/Button;

.field mClose:Landroid/view/View$OnClickListener;

.field mHandler:Landroid/os/Handler;

.field mInstall:Landroid/view/View$OnClickListener;

.field mListener:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;

.field mMessage:Landroid/widget/TextView;

.field mPack:Lcom/sprint/w/installer/psi/ServicePack;

.field mPending:Landroid/app/PendingIntent;

.field mPercent:Landroid/widget/TextView;

.field mProgress:Landroid/widget/ProgressBar;

.field mSubMessage:Landroid/widget/TextView;

.field mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const-class v0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->log:Lcom/sprint/id/logger/Logger;

    .line 110
    new-instance v0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$1;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$1;-><init>(Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;)V

    iput-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mInstall:Landroid/view/View$OnClickListener;

    .line 133
    new-instance v0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$2;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$2;-><init>(Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;)V

    iput-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mClose:Landroid/view/View$OnClickListener;

    .line 179
    return-void
.end method

.method static synthetic access$100(Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->cancelAlarm()V

    return-void
.end method

.method static synthetic access$200(Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;)Lcom/sprint/id/logger/Logger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->log:Lcom/sprint/id/logger/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->updateUI(I)V

    return-void
.end method

.method private cancelAlarm()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 174
    invoke-virtual {p0}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v4, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 175
    .local v1, pi:Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 176
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 177
    return-void
.end method

.method private updateUI(I)V
    .registers 9
    .parameter "status"

    .prologue
    const v6, 0x7f060034

    const/4 v2, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 142
    packed-switch p1, :pswitch_data_b6

    .line 167
    iget-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mClose:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 171
    :goto_16
    return-void

    .line 144
    :pswitch_17
    iget-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mInstall:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mButton:Landroid/widget/Button;

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 146
    iget-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mSubMessage:Landroid/widget/TextView;

    const v1, 0x7f0600f8

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v3}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mPercent:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_16

    .line 151
    :pswitch_4b
    iget-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mClose:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mSubMessage:Landroid/widget/TextView;

    const v1, 0x7f0600fa

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v3}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 154
    iget-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mPercent:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_16

    .line 158
    :pswitch_7c
    iget-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mClose:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mSubMessage:Landroid/widget/TextView;

    const v1, 0x7f0600f9

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v3}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 161
    iget-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mPercent:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    goto/16 :goto_16

    .line 142
    nop

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_7c
        :pswitch_17
        :pswitch_4b
    .end packed-switch
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1

    .prologue
    .line 99
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0, v5}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->requestWindowFeature(I)Z

    .line 47
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mHandler:Landroid/os/Handler;

    .line 49
    const-string v1, "com.sprint.w.installer.ACTION_NOTIFY"

    invoke-virtual {p0}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {p0}, Lcom/sprint/w/installer/DownloadService;->hasDefaultPackToInstall(Landroid/content/Context;)Lcom/sprint/w/installer/psi/ServicePack;

    move-result-object v1

    if-nez v1, :cond_2b

    .line 51
    invoke-direct {p0}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->cancelAlarm()V

    .line 52
    invoke-virtual {p0}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->finish()V

    .line 55
    :cond_2b
    const v1, 0x7f030017

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 58
    invoke-virtual {p0}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_SERVICEPACK"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/sprint/w/installer/psi/ServicePack;

    iput-object v1, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    .line 60
    const v1, 0x7f0c000b

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mTitle:Landroid/widget/TextView;

    .line 61
    iget-object v1, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v2}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const v1, 0x7f0c003e

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mMessage:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f0c003f

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mSubMessage:Landroid/widget/TextView;

    .line 64
    const v1, 0x7f0c0008

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mProgress:Landroid/widget/ProgressBar;

    .line 65
    const v1, 0x7f0c0041

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mPercent:Landroid/widget/TextView;

    .line 66
    const v1, 0x7f0c000d

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mButton:Landroid/widget/Button;

    .line 68
    const-string v1, "com.sprint.w.installer.ACTION_NOTIFY"

    invoke-virtual {p0}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f7

    .line 69
    invoke-virtual {p0}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_PENDINGINTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mPending:Landroid/app/PendingIntent;

    .line 71
    iget-object v1, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f0600f7

    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v4}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mSubMessage:Landroid/widget/TextView;

    const v2, 0x7f0600f8

    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v4}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v1, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mInstall:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v1, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mButton:Landroid/widget/Button;

    const v2, 0x7f060003

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 85
    :goto_f6
    return-void

    .line 79
    :cond_f7
    iget-object v1, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mMessage:Landroid/widget/TextView;

    const v2, 0x7f0600f6

    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v4}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    new-instance v1, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;-><init>(Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$1;)V

    iput-object v1, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mListener:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;

    .line 82
    iget-object v1, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v1}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->mListener:Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity$DownloadStatusListener;

    invoke-static {p0, v1, v2}, Lcom/sprint/w/installer/DownloadService;->addStatusListener(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/w/installer/DownloadService$StatusListener;)I

    move-result v0

    .line 83
    .local v0, status:I
    invoke-direct {p0, v0}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->updateUI(I)V

    goto :goto_f6
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 108
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 90
    invoke-static {p0}, Lcom/sprint/w/installer/DownloadService;->hasDefaultPackToInstall(Landroid/content/Context;)Lcom/sprint/w/installer/psi/ServicePack;

    move-result-object v0

    if-nez v0, :cond_c

    .line 91
    invoke-virtual {p0}, Lcom/sprint/w/installer/NotifyInstallDefaultPackActivity;->finish()V

    .line 93
    :cond_c
    return-void
.end method
