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
    .line 40
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private clearWebViewCache()V
    .registers 4

    .prologue
    .line 151
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/DebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 153
    .local v0, webview:Landroid/webkit/WebView;
    const/4 v1, 0x1

    :try_start_a
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 154
    const-string v1, "Email"

    const-string v2, "Cleard WebView cache."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_18

    .line 156
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 158
    return-void

    .line 156
    :catchall_18
    move-exception v1

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    throw v1
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_48

    .line 138
    :goto_7
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/email/activity/setup/DebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Email;->updateLoggingFlags(Landroid/content/Context;)V

    .line 139
    return-void

    .line 112
    :pswitch_f
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setEnableDebugLogging(Z)V

    .line 113
    sput-boolean p2, Lcom/android/email/Email;->DEBUG:Z

    .line 114
    sput-boolean p2, Lcom/android/email/Email;->DEBUG_EXCHANGE:Z

    goto :goto_7

    .line 117
    :pswitch_19
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setEnableExchangeLogging(Z)V

    .line 118
    sput-boolean p2, Lcom/android/email/Email;->DEBUG_EXCHANGE_VERBOSE:Z

    goto :goto_7

    .line 121
    :pswitch_21
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setEnableExchangeFileLogging(Z)V

    .line 122
    sput-boolean p2, Lcom/android/email/Email;->DEBUG_EXCHANGE_FILE:Z

    goto :goto_7

    .line 125
    :pswitch_29
    sput-boolean p2, Lcom/android/email/Email;->sDebugInhibitGraphicsAcceleration:Z

    .line 126
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setInhibitGraphicsAcceleration(Z)V

    goto :goto_7

    .line 129
    :pswitch_31
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setForceOneMinuteRefresh(Z)V

    .line 130
    invoke-virtual {p0}, Lcom/android/email/activity/setup/DebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/service/MailService;->actionReschedule(Landroid/content/Context;)V

    goto :goto_7

    .line 133
    :pswitch_3e
    iget-object v0, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setEnableStrictMode(Z)V

    .line 134
    invoke-static {p2}, Lcom/android/email/Email;->enableStrictMode(Z)V

    goto :goto_7

    .line 110
    nop

    :pswitch_data_48
    .packed-switch 0x7f0e0067
        :pswitch_f
        :pswitch_19
        :pswitch_21
        :pswitch_7
        :pswitch_29
        :pswitch_31
        :pswitch_3e
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 148
    :goto_7
    return-void

    .line 145
    :pswitch_8
    invoke-direct {p0}, Lcom/android/email/activity/setup/DebugFragment;->clearWebViewCache()V

    goto :goto_7

    .line 143
    :pswitch_data_c
    .packed-switch 0x7f0e006a
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

    .line 55
    sget-boolean v3, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    if-eqz v3, :cond_12

    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_12

    .line 56
    const-string v3, "Email"

    const-string v4, "AccountSetupBasicsFragment onCreateView"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_12
    const v3, 0x7f040027

    invoke-virtual {p1, v3, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 60
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/DebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 61
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    .line 63
    const v3, 0x7f0e0066

    invoke-static {v2, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mVersionView:Landroid/widget/TextView;

    .line 64
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mVersionView:Landroid/widget/TextView;

    const v4, 0x7f080046

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/high16 v6, 0x7f08

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v3, 0x7f0e0067

    invoke-static {v2, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableDebugLoggingView:Landroid/widget/CheckBox;

    .line 68
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableDebugLoggingView:Landroid/widget/CheckBox;

    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 70
    const v3, 0x7f0e0068

    invoke-static {v2, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableExchangeLoggingView:Landroid/widget/CheckBox;

    .line 71
    const v3, 0x7f0e0069

    invoke-static {v2, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableExchangeFileLoggingView:Landroid/widget/CheckBox;

    .line 75
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableDebugLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 77
    invoke-static {v0}, Lcom/android/email/service/EmailServiceUtils;->isExchangeAvailable(Landroid/content/Context;)Z

    move-result v1

    .line 78
    .local v1, exchangeAvailable:Z
    if-eqz v1, :cond_f0

    .line 79
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableExchangeLoggingView:Landroid/widget/CheckBox;

    sget-boolean v4, Lcom/android/email/Email;->DEBUG_EXCHANGE_VERBOSE:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 80
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableExchangeFileLoggingView:Landroid/widget/CheckBox;

    sget-boolean v4, Lcom/android/email/Email;->DEBUG_EXCHANGE_FILE:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 81
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableExchangeLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 82
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableExchangeFileLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    :goto_98
    const v3, 0x7f0e006a

    invoke-static {v2, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v3, 0x7f0e006b

    invoke-static {v2, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mInhibitGraphicsAccelerationView:Landroid/widget/CheckBox;

    .line 92
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mInhibitGraphicsAccelerationView:Landroid/widget/CheckBox;

    sget-boolean v4, Lcom/android/email/Email;->sDebugInhibitGraphicsAcceleration:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 93
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mInhibitGraphicsAccelerationView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 95
    const v3, 0x7f0e006c

    invoke-static {v2, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mForceOneMinuteRefreshView:Landroid/widget/CheckBox;

    .line 97
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mForceOneMinuteRefreshView:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v4}, Lcom/android/email/Preferences;->getForceOneMinuteRefresh()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 98
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mForceOneMinuteRefreshView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 100
    const v3, 0x7f0e006d

    invoke-static {v2, v3}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableStrictModeView:Landroid/widget/CheckBox;

    .line 102
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableStrictModeView:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/email/activity/setup/DebugFragment;->mPreferences:Lcom/android/email/Preferences;

    invoke-virtual {v4}, Lcom/android/email/Preferences;->getEnableStrictMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 103
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableStrictModeView:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 105
    return-object v2

    .line 84
    :cond_f0
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableExchangeLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 85
    iget-object v3, p0, Lcom/android/email/activity/setup/DebugFragment;->mEnableExchangeFileLoggingView:Landroid/widget/CheckBox;

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_98
.end method
