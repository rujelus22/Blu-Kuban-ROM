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
.field protected static sDefaultUri:Ljava/net/URI;

.field public static sSetupModeArgs:Landroid/os/Bundle;


# instance fields
.field mBaseScheme:Ljava/lang/String;

.field protected mCallback:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

.field protected mContext:Landroid/content/Context;

.field protected final mDismissImeOnDoneListener:Landroid/widget/TextView$OnEditorActionListener;

.field mLoadedRecvAuth:Lcom/android/emailcommon/provider/HostAuth;

.field mLoadedSendAuth:Lcom/android/emailcommon/provider/HostAuth;

.field private mProceedButton:Landroid/widget/Button;

.field private mProceedButtonPressed:Z

.field protected mSettingsMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->sSetupModeArgs:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 123
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 61
    sget-object v0, Lcom/android/email/activity/setup/AccountServerBaseFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCallback:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    .line 76
    const-string v0, "protocol"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mBaseScheme:Ljava/lang/String;

    .line 293
    new-instance v0, Lcom/android/email/activity/setup/AccountServerBaseFragment$3;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment$3;-><init>(Lcom/android/email/activity/setup/AccountServerBaseFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mDismissImeOnDoneListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 124
    sget-object v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->sDefaultUri:Ljava/net/URI;

    if-nez v0, :cond_1f

    .line 126
    :try_start_16
    new-instance v0, Ljava/net/URI;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->sDefaultUri:Ljava/net/URI;
    :try_end_1f
    .catch Ljava/net/URISyntaxException; {:try_start_16 .. :try_end_1f} :catch_20

    .line 131
    :cond_1f
    :goto_1f
    return-void

    .line 127
    :catch_20
    move-exception v0

    goto :goto_1f
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountServerBaseFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->clearButtonBounce()V

    return-void
.end method

.method private clearButtonBounce()V
    .registers 2

    .prologue
    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButtonPressed:Z

    .line 319
    return-void
.end method

.method public static declared-synchronized getSettingsModeArgs()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 116
    const-class v1, Lcom/android/email/activity/setup/AccountServerBaseFragment;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->sSetupModeArgs:Landroid/os/Bundle;

    if-nez v0, :cond_16

    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->sSetupModeArgs:Landroid/os/Bundle;

    .line 118
    sget-object v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->sSetupModeArgs:Landroid/os/Bundle;

    const-string v2, "AccountServerBaseFragment.settings"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 120
    :cond_16
    sget-object v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->sSetupModeArgs:Landroid/os/Bundle;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    monitor-exit v1

    return-object v0

    .line 116
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public enableNextButton(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButton:Landroid/widget/Button;

    if-eqz v0, :cond_9

    .line 232
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 234
    :cond_9
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->clearButtonBounce()V

    .line 237
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCallback:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    invoke-interface {v0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;->onEnableProceedButtons(Z)V

    .line 238
    return-void
.end method

.method public haveSettingsChanged()Z
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 402
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 404
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v3

    .line 405
    .local v3, sendAuth:Lcom/android/emailcommon/provider/HostAuth;
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mLoadedSendAuth:Lcom/android/emailcommon/provider/HostAuth;

    if-eqz v7, :cond_32

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mLoadedSendAuth:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v7, v3}, Lcom/android/emailcommon/provider/HostAuth;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_32

    move v4, v5

    .line 407
    .local v4, sendChanged:Z
    :goto_19
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v1

    .line 408
    .local v1, recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    iget-object v7, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mLoadedRecvAuth:Lcom/android/emailcommon/provider/HostAuth;

    if-eqz v7, :cond_34

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mLoadedRecvAuth:Lcom/android/emailcommon/provider/HostAuth;

    invoke-virtual {v7, v1}, Lcom/android/emailcommon/provider/HostAuth;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_34

    move v2, v5

    .line 410
    .local v2, recvChanged:Z
    :goto_2c
    if-nez v4, :cond_30

    if-eqz v2, :cond_31

    :cond_30
    move v6, v5

    :cond_31
    return v6

    .end local v1           #recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    .end local v2           #recvChanged:Z
    .end local v4           #sendChanged:Z
    :cond_32
    move v4, v6

    .line 405
    goto :goto_19

    .restart local v1       #recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    .restart local v4       #sendChanged:Z
    :cond_34
    move v2, v6

    .line 408
    goto :goto_2c
.end method

.method protected makeTextViewUneditable(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 4
    .parameter "view"
    .parameter "errorMessage"

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    if-eqz v0, :cond_1c

    .line 259
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 260
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 261
    new-instance v0, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;-><init>(Lcom/android/email/activity/setup/AccountServerBaseFragment;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 275
    new-instance v0, Lcom/android/email/activity/setup/AccountServerBaseFragment$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/activity/setup/AccountServerBaseFragment$2;-><init>(Lcom/android/email/activity/setup/AccountServerBaseFragment;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    :cond_1c
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    if-eqz v0, :cond_13

    if-eqz p1, :cond_13

    .line 164
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "AccountServerBaseFragment.title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 166
    :cond_13
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 167
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 177
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    .line 178
    return-void
.end method

.method public onAutoDiscoverComplete(ILcom/android/emailcommon/provider/HostAuth;)V
    .registers 4
    .parameter "result"
    .parameter "hostAuth"

    .prologue
    .line 395
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public onCheckSettingsComplete(I)V
    .registers 5
    .parameter "settingsResult"

    .prologue
    .line 368
    new-instance v0, Lcom/android/email/activity/setup/AccountServerBaseFragment$4;

    invoke-direct {v0, p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment$4;-><init>(Lcom/android/email/activity/setup/AccountServerBaseFragment;I)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountServerBaseFragment$4;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 387
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 215
    :cond_7
    :goto_7
    return-void

    .line 204
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_7

    .line 208
    :pswitch_10
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButtonPressed:Z

    if-nez v0, :cond_7

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButtonPressed:Z

    .line 212
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onNext()V

    goto :goto_7

    .line 202
    nop

    :pswitch_data_1c
    .packed-switch 0x7f0e0001
        :pswitch_8
        :pswitch_10
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    .line 142
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 143
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AccountServerBaseFragment.settings"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    .line 145
    :cond_18
    return-void
.end method

.method protected onCreateViewSettingsMode(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mSettingsMode:Z

    if-eqz v0, :cond_24

    .line 152
    const v0, 0x7f0e0001

    invoke-static {p1, v0}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const v0, 0x7f0e0002

    invoke-static {p1, v0}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButton:Landroid/widget/Button;

    .line 154
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 157
    :cond_24
    return-void
.end method

.method public onDetach()V
    .registers 2

    .prologue
    .line 182
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 185
    sget-object v0, Lcom/android/email/activity/setup/AccountServerBaseFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCallback:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    .line 186
    return-void
.end method

.method public abstract onNext()V
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 193
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 194
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 195
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 171
    const-string v1, "AccountServerBaseFragment.title"

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public abstract saveSettingsAfterEdit()V
.end method

.method public abstract saveSettingsAfterSetup()V
.end method

.method public setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 221
    if-nez p1, :cond_4

    sget-object p1, Lcom/android/email/activity/setup/AccountServerBaseFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    .end local p1
    :cond_4
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCallback:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    .line 222
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mContext:Landroid/content/Context;

    .line 223
    return-void
.end method

.method protected startDuplicateTaskCheck(JLjava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .parameter "accountId"
    .parameter "checkHost"
    .parameter "checkLogin"
    .parameter "checkSettingsMode"

    .prologue
    .line 248
    new-instance v0, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;-><init>(Lcom/android/email/activity/setup/AccountServerBaseFragment;JLjava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountServerBaseFragment$DuplicateCheckTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 250
    return-void
.end method
