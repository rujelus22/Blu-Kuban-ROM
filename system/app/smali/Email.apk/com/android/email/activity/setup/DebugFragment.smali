.class public Lcom/android/email/activity/setup/DebugFragment;
.super Landroid/app/Fragment;
.source "DebugFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mEnableDebugLoggingView:Landroid/widget/CheckBox;

.field private mEnableExchangeFileLoggingView:Landroid/widget/CheckBox;

.field private mEnableExchangeLoggingView:Landroid/widget/CheckBox;

.field private mEnableStrictModeView:Landroid/widget/CheckBox;

.field private mForceOneMinuteRefreshView:Landroid/widget/CheckBox;

.field private mInhibitGraphicsAccelerationView:Landroid/widget/CheckBox;

.field private mPreferences:Lcom/android/email/Preferences;

.field private mVersionView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private clearWebViewCache()V
    .registers 4

    .prologue
    .line 149
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/DebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 151
    .local v0, webview:Landroid/webkit/WebView;
    const/4 v1, 0x1

    :try_start_a
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 152
    const-string v1, "Email"

    const-string v2, "Cleard WebView cache."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_18

    .line 154
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 156
    return-void

    .line 154
    :catchall_18
    move-exception v1

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    throw v1
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_4a

    .line 136
    :goto_7
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/email/activity/setup/DebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Email;->updateLoggingFlags(Landroid/content/Context;)V

    .line 137
    return-void

    .line 110
    :pswitch_f
    sput-boolean p2, Lcom/android/email/Email;->DEBUG:Z

    .line 111
    sput-boolean p2, Lcom/android/emailcommon/EasRefs;->PARSER_LOG:Z

    .line 112
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    invoke-virtual {v0, v1}, Lcom/android/email/Preferences;->setEnableDebugLogging(Z)V

    goto :goto_7

    .line 115
    :pswitch_1b
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setEnableExchangeLogging(Z)V

    .line 116
    sput-boolean p2, Lcom/android/emailcommon/EasRefs;->PARSER_LOG:Z

    goto :goto_7

    .line 119
    :pswitch_23
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setEnableExchangeFileLogging(Z)V

    .line 120
    sput-boolean p2, Lcom/android/emailcommon/EasRefs;->FILE_LOG:Z

    goto :goto_7

    .line 123
    :pswitch_2b
    sput-boolean p2, Lcom/android/email/Email;->sDebugInhibitGraphicsAcceleration:Z

    .line 124
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setInhibitGraphicsAcceleration(Z)V

    goto :goto_7

    .line 127
    :pswitch_33
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setForceOneMinuteRefresh(Z)V

    .line 128
    invoke-virtual {p0}, Lcom/android/email/activity/setup/DebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/service/MailService;->actionReschedule(Landroid/content/Context;)V

    goto :goto_7

    .line 131
    :pswitch_40
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setEnableStrictMode(Z)V

    .line 132
    invoke-static {p2}, Lcom/android/email/Email;->enableStrictMode(Z)V

    goto :goto_7

    .line 108
    nop

    :pswitch_data_4a
    .packed-switch 0x7f100126
        :pswitch_f
        :pswitch_1b
        :pswitch_23
        :pswitch_7
        :pswitch_2b
        :pswitch_33
        :pswitch_40
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 146
    :goto_7
    return-void

    .line 143
    :pswitch_8
    invoke-direct {p0}, Lcom/android/email/activity/setup/DebugFragment;->clearWebViewCache()V

    goto :goto_7

    .line 141
    :pswitch_data_c
    .packed-switch 0x7f100129
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 57
    const v3, 0x7f040062

    invoke-virtual {p1, v3, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 59
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/DebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 60
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    .line 62
    const v3, 0x7f100125

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mVersionView:Landroid/widget/TextView;

    .line 63
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mVersionView:Landroid/widget/TextView;

    const v4, 0x7f080096

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const v6, 0x7f080004

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v3, 0x7f100126

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableDebugLoggingView:Landroid/widget/CheckBox;

    .line 68
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableDebugLoggingView:Landroid/widget/CheckBox;

    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 69
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableDebugLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 71
    const v3, 0x7f100127

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableExchangeLoggingView:Landroid/widget/CheckBox;

    .line 72
    const v3, 0x7f100128

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableExchangeFileLoggingView:Landroid/widget/CheckBox;

    .line 74
    invoke-static {v0}, Lcom/android/email/ExchangeUtils;->isExchangeAvailable(Landroid/content/Context;)Z

    move-result v1

    .line 75
    .local v1, exchangeAvailable:Z
    if-eqz v1, :cond_ec

    .line 76
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableExchangeLoggingView:Landroid/widget/CheckBox;

    sget-boolean v4, Lcom/android/emailcommon/EasRefs;->PARSER_LOG:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 77
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableExchangeFileLoggingView:Landroid/widget/CheckBox;

    sget-boolean v4, Lcom/android/emailcommon/EasRefs;->FILE_LOG:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 78
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableExchangeLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 79
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableExchangeFileLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 85
    :goto_8a
    const v3, 0x7f100129

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v3, 0x7f10012a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mInhibitGraphicsAccelerationView:Landroid/widget/CheckBox;

    .line 89
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mInhibitGraphicsAccelerationView:Landroid/widget/CheckBox;

    sget-boolean v4, Lcom/android/email/Email;->sDebugInhibitGraphicsAcceleration:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 90
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mInhibitGraphicsAccelerationView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 92
    const v3, 0x7f10012b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mForceOneMinuteRefreshView:Landroid/widget/CheckBox;

    .line 94
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mForceOneMinuteRefreshView:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v4}, Lcom/android/email/Preferences;->getForceOneMinuteRefresh()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 95
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mForceOneMinuteRefreshView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 97
    const v3, 0x7f10012c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableStrictModeView:Landroid/widget/CheckBox;

    .line 98
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableStrictModeView:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableStrictMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 99
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableStrictModeView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/email/activity/setup/DebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f080034

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(I)V

    .line 103
    return-object v2

    .line 81
    :cond_ec
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableExchangeLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 82
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableExchangeFileLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_8a
.end method
