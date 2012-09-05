.class public abstract Lcom/android/email/activity/setup/AccountServerBaseFragment;
.super Landroid/app/Fragment;
.source "AccountServerBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;,
        Lcom/android/email/activity/setup/AccountServerBaseFragment$EmptyCallback;,
        Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;
    }
.end annotation


# static fields
.field private static CHECK_MODE_NONE:I

.field public static mProceedButtonPressed:Z

.field protected static sDefaultUri:Ljava/net/URI;

.field public static sSetupModeArgs:Landroid/os/Bundle;


# instance fields
.field mBaseScheme:Ljava/lang/String;

.field private mCallOnProceedNext:Z

.field protected mCallback:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

.field private mCheckSettingsModeFromTask:I

.field protected mContext:Landroid/content/Context;

.field mLoadedRecvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

.field mLoadedSendAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

.field protected mLoadedUri:Ljava/net/URI;

.field public mProceedButton:Landroid/widget/Button;

.field protected mSettingsMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->sSetupModeArgs:Landroid/os/Bundle;

    .line 56
    const/4 v0, 0x0

    sput v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->CHECK_MODE_NONE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 143
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCallOnProceedNext:Z

    .line 57
    sget v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->CHECK_MODE_NONE:I

    iput v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCheckSettingsModeFromTask:I

    .line 62
    sget-object v0, Lcom/android/email/activity/setup/AccountServerBaseFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCallback:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    .line 80
    const-string v0, "protocol"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mBaseScheme:Ljava/lang/String;

    .line 144
    sget-object v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->sDefaultUri:Ljava/net/URI;

    if-nez v0, :cond_1f

    .line 146
    :try_start_16
    new-instance v0, Ljava/net/URI;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->sDefaultUri:Ljava/net/URI;
    :try_end_1f
    .catch Ljava/net/URISyntaxException; {:try_start_16 .. :try_end_1f} :catch_20

    .line 151
    :cond_1f
    :goto_1f
    return-void

    .line 147
    :catch_20
    move-exception v0

    goto :goto_1f
.end method

.method static synthetic access$002(Lcom/android/email/activity/setup/AccountServerBaseFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCallOnProceedNext:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/email/activity/setup/AccountServerBaseFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCheckSettingsModeFromTask:I

    return p1
.end method

.method public static declared-synchronized getSettingsModeArgs()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 136
    const-class v1, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->sSetupModeArgs:Landroid/os/Bundle;

    if-nez v0, :cond_16

    .line 137
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->sSetupModeArgs:Landroid/os/Bundle;

    .line 138
    sget-object v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->sSetupModeArgs:Landroid/os/Bundle;

    const-string v2, "AccountServerBaseFragment.settings"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    :cond_16
    sget-object v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->sSetupModeArgs:Landroid/os/Bundle;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    monitor-exit v1

    return-object v0

    .line 136
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method clearButtonBounce()V
    .registers 2

    .prologue
    .line 266
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButtonPressed:Z

    .line 267
    return-void
.end method

.method public enableNextButton(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    .line 253
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 256
    :cond_9
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->clearButtonBounce()V

    .line 259
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCallback:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    invoke-interface {v0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;->onEnableProceedButtons(Z)V

    .line 260
    return-void
.end method

.method public haveSettingsChanged()Z
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 378
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 380
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v3

    .line 381
    .local v3, sendAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mLoadedSendAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v7, :cond_32

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mLoadedSendAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v7, v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_32

    move v4, v5

    .line 383
    .local v4, sendChanged:Z
    :goto_19
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    .line 384
    .local v1, recvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mLoadedRecvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v7, :cond_34

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mLoadedRecvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v7, v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_34

    move v2, v5

    .line 386
    .local v2, recvChanged:Z
    :goto_2c
    if-nez v4, :cond_30

    if-eqz v2, :cond_31

    :cond_30
    move v6, v5

    :cond_31
    return v6

    .end local v1           #recvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .end local v2           #recvChanged:Z
    .end local v4           #sendChanged:Z
    :cond_32
    move v4, v6

    .line 381
    goto :goto_19

    .restart local v1       #recvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .restart local v4       #sendChanged:Z
    :cond_34
    move v2, v6

    .line 384
    goto :goto_2c
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 205
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 206
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    .line 209
    instance-of v0, p1, Lcom/android/email/activity/setup/AccountSettingsXL;

    if-eqz v0, :cond_e

    .line 210
    check-cast p1, Lcom/android/email/activity/setup/AccountSettingsXL;

    .end local p1
    invoke-virtual {p1, p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onAttach(Landroid/app/Fragment;)V

    .line 212
    :cond_e
    return-void
.end method

.method public onAutoDiscoverComplete(ILcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .registers 4
    .parameter "result"
    .parameter "hostAuth"

    .prologue
    .line 371
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public onCheckSettingsComplete(I)V
    .registers 4
    .parameter "settingsResult"

    .prologue
    .line 344
    new-instance v0, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;-><init>(Lcom/android/email/activity/setup/AccountServerBaseFragment;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 363
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 235
    :cond_7
    :goto_7
    return-void

    .line 228
    :pswitch_8
    sget-boolean v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButtonPressed:Z

    if-nez v0, :cond_7

    .line 231
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButtonPressed:Z

    .line 232
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onNext()V

    goto :goto_7

    .line 225
    nop

    :pswitch_data_14
    .packed-switch 0x7f10001e
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 158
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 162
    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    .line 163
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 164
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AccountServerBaseFragment.settings"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    .line 167
    :cond_18
    sput-boolean v2, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButtonPressed:Z

    .line 168
    return-void
.end method

.method protected onCreateViewSettingsMode(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    if-eqz v0, :cond_1a

    .line 176
    const v0, 0x7f10001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButton:Landroid/widget/Button;

    .line 177
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 180
    :cond_1a
    return-void
.end method

.method public onDetach()V
    .registers 1

    .prologue
    .line 217
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 218
    return-void
.end method

.method public abstract onNext()V
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 185
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 186
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCallOnProceedNext:Z

    if-eqz v1, :cond_1b

    iget v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCheckSettingsModeFromTask:I

    sget v2, Lcom/android/email/activity/setup/AccountServerBaseFragment;->CHECK_MODE_NONE:I

    if-eq v1, v2, :cond_1b

    .line 188
    :try_start_e
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCallback:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    iget v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCheckSettingsModeFromTask:I

    invoke-interface {v1, v2, p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;->onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_27
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_15} :catch_1c

    .line 192
    iput-boolean v3, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCallOnProceedNext:Z

    .line 193
    sget v1, Lcom/android/email/activity/setup/AccountServerBaseFragment;->CHECK_MODE_NONE:I

    iput v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCheckSettingsModeFromTask:I

    .line 196
    :cond_1b
    :goto_1b
    return-void

    .line 189
    :catch_1c
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_1d
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_27

    .line 192
    iput-boolean v3, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCallOnProceedNext:Z

    .line 193
    sget v1, Lcom/android/email/activity/setup/AccountServerBaseFragment;->CHECK_MODE_NONE:I

    iput v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCheckSettingsModeFromTask:I

    goto :goto_1b

    .line 192
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_27
    move-exception v1

    iput-boolean v3, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCallOnProceedNext:Z

    .line 193
    sget v2, Lcom/android/email/activity/setup/AccountServerBaseFragment;->CHECK_MODE_NONE:I

    iput v2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCheckSettingsModeFromTask:I

    throw v1
.end method

.method public abstract saveSettingsAfterEdit()V
.end method

.method public abstract saveSettingsAfterSetup()V
.end method

.method public setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 241
    if-nez p1, :cond_4

    sget-object p1, Lcom/android/email/activity/setup/AccountServerBaseFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    .end local p1
    :cond_4
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCallback:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    .line 242
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    .line 243
    return-void
.end method

.method protected startDuplicateTaskCheck(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 15
    .parameter "accountId"
    .parameter "checkHost"
    .parameter "checkLogin"
    .parameter "checkSettingsMode"
    .parameter "email"

    .prologue
    .line 276
    new-instance v0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;-><init>(Lcom/android/email/activity/setup/AccountServerBaseFragment;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 277
    return-void
.end method
