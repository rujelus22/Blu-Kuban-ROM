.class public Lcom/google/android/apps/plus/phone/SignOnManager;
.super Ljava/lang/Object;
.source "SignOnManager.java"

# interfaces
.implements Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mActivity:Landroid/support/v4/app/FragmentActivity;

.field private final mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mIntent:Landroid/content/Intent;

.field private mIsResumed:Z

.field private mOobAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mResultAccount:Lcom/google/android/apps/plus/content/EsAccount;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/phone/SignOnManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/SignOnManager;->getPendingInstantUploadCount()I

    move-result v0

    return v0
.end method

.method private doSignOut()V
    .registers 4

    .prologue
    .line 288
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->SETTINGS_SIGNOUT:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/SignOnManager;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 289
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/service/EsService;->removeAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)I

    .line 290
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v1, :cond_17

    .line 291
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->allowDisconnect(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 294
    :cond_17
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 295
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mIntent:Landroid/content/Intent;

    const-string v2, "intent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 296
    .local v0, startIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v2, v0}, Lcom/google/android/apps/plus/phone/Intents;->getAccountsActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 297
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 298
    return-void
.end method

.method private getPendingInstantUploadCount()I
    .registers 16

    .prologue
    const/4 v2, 0x0

    .line 304
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 307
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->instantUploadUri:Landroid/net/Uri;

    .local v1, iuQueryUri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 310
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 312
    .local v14, iuCursor:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 314
    .local v13, instantUploadCount:I
    if-eqz v14, :cond_1e

    :try_start_13
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 315
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_5e

    move-result v13

    .line 318
    :cond_1e
    if-eqz v14, :cond_23

    .line 319
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 324
    :cond_23
    sget-object v3, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->uploadAllUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 325
    .local v9, builder:Landroid/net/Uri$Builder;
    const-string v3, "account"

    iget-object v5, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 326
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .local v4, duQueryUri:Landroid/net/Uri;
    move-object v3, v0

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    .line 328
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 330
    .local v12, duCursor:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 331
    .local v11, demandUploadProgress:I
    const/4 v10, 0x0

    .line 333
    .local v10, demandUploadCount:I
    if-eqz v12, :cond_55

    :try_start_45
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 334
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 335
    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_54
    .catchall {:try_start_45 .. :try_end_54} :catchall_65

    move-result v10

    .line 338
    :cond_55
    if-eqz v12, :cond_5a

    .line 339
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 343
    :cond_5a
    sub-int v2, v10, v11

    add-int/2addr v2, v13

    return v2

    .line 318
    .end local v4           #duQueryUri:Landroid/net/Uri;
    .end local v9           #builder:Landroid/net/Uri$Builder;
    .end local v10           #demandUploadCount:I
    .end local v11           #demandUploadProgress:I
    .end local v12           #duCursor:Landroid/database/Cursor;
    :catchall_5e
    move-exception v2

    if-eqz v14, :cond_64

    .line 319
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_64
    throw v2

    .line 338
    .restart local v4       #duQueryUri:Landroid/net/Uri;
    .restart local v9       #builder:Landroid/net/Uri$Builder;
    .restart local v10       #demandUploadCount:I
    .restart local v11       #demandUploadProgress:I
    .restart local v12       #duCursor:Landroid/database/Cursor;
    :catchall_65
    move-exception v2

    if-eqz v12, :cond_6b

    .line 339
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_6b
    throw v2
.end method

.method private setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter "account"

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mIsResumed:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eq v0, p1, :cond_13

    .line 207
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->allowDisconnect(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 210
    :cond_13
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 211
    return-void
.end method

.method private switchAccounts()V
    .registers 4

    .prologue
    .line 189
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v1, :cond_15

    .line 190
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->allowDisconnect(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 191
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/service/EsService;->removeAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)I

    .line 192
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 195
    :cond_15
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mIntent:Landroid/content/Intent;

    const-string v2, "intent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 196
    .local v0, startIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v2, v0}, Lcom/google/android/apps/plus/phone/Intents;->getAccountsActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 197
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 198
    return-void
.end method


# virtual methods
.method protected continueSignOut(I)V
    .registers 10
    .parameter "pendingInstantUploadCount"

    .prologue
    .line 245
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    const-string v4, "SignOnManager.progress_dialog"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/DialogFragment;

    .line 247
    .local v2, progressDialog:Landroid/support/v4/app/DialogFragment;
    if-eqz v2, :cond_f

    .line 248
    invoke-virtual {v2}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 251
    :cond_f
    if-lez p1, :cond_52

    .line 252
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e000b

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, p1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, message:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const v4, 0x7f08017e

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const v5, 0x7f080209

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const v6, 0x7f08020a

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v1, v4, v5}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 262
    .local v0, alertDialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setListener(Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;)V

    .line 263
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    const-string v4, "SignOnManager.confirm_signoff"

    invoke-virtual {v0, v3, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 268
    .end local v0           #alertDialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    .end local v1           #message:Ljava/lang/String;
    :goto_51
    return-void

    .line 266
    :cond_52
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/SignOnManager;->doSignOut()V

    goto :goto_51
.end method

.method public getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method public isSignedIn()Z
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 161
    packed-switch p1, :pswitch_data_30

    .line 180
    const/4 v1, 0x0

    :goto_4
    return v1

    .line 163
    :pswitch_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mOobAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 164
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2c

    .line 165
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mIntent:Landroid/content/Intent;

    const-string v2, "intent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 167
    .local v0, startIntent:Landroid/content/Intent;
    if-eqz v0, :cond_23

    .line 168
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 169
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 176
    .end local v0           #startIntent:Landroid/content/Intent;
    :goto_21
    const/4 v1, 0x1

    goto :goto_4

    .line 171
    .restart local v0       #startIntent:Landroid/content/Intent;
    :cond_23
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mResultAccount:Lcom/google/android/apps/plus/content/EsAccount;

    goto :goto_21

    .line 174
    .end local v0           #startIntent:Landroid/content/Intent;
    :cond_2c
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/SignOnManager;->switchAccounts()V

    goto :goto_21

    .line 161
    :pswitch_data_30
    .packed-switch 0x3ff
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V
    .registers 10
    .parameter "savedInstanceState"
    .parameter "intent"

    .prologue
    .line 80
    iput-object p2, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mIntent:Landroid/content/Intent;

    .line 83
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v4}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 85
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-nez v0, :cond_e

    .line 86
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/SignOnManager;->switchAccounts()V

    .line 107
    :cond_d
    :goto_d
    return-void

    .line 87
    :cond_e
    if-nez p1, :cond_4e

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mIntent:Landroid/content/Intent;

    const-string v5, "run_oob"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 89
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mIntent:Landroid/content/Intent;

    const-string v5, "intent"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 91
    .local v3, startIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mIntent:Landroid/content/Intent;

    const-string v5, "network_oob"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    .line 93
    .local v2, oob:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v4, v0, v2}, Lcom/google/android/apps/plus/phone/Intents;->getOobIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;)Landroid/content/Intent;

    move-result-object v1

    .line 95
    .local v1, nextIntent:Landroid/content/Intent;
    if-eqz v1, :cond_41

    .line 96
    iput-object v0, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mOobAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 97
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const/16 v5, 0x3ff

    invoke-virtual {v4, v1, v5}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_d

    .line 98
    :cond_41
    if-eqz v3, :cond_d

    .line 99
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 100
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_d

    .line 102
    .end local v1           #nextIntent:Landroid/content/Intent;
    .end local v2           #oob:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    .end local v3           #startIntent:Landroid/content/Intent;
    :cond_4e
    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->hasGaiaId()Z

    move-result v4

    if-nez v4, :cond_58

    .line 103
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/SignOnManager;->switchAccounts()V

    goto :goto_d

    .line 105
    :cond_58
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/phone/SignOnManager;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_d
.end method

.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 281
    return-void
.end method

.method public onDialogListClick(ILandroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "which"
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 285
    return-void
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 277
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/SignOnManager;->doSignOut()V

    .line 273
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mIsResumed:Z

    .line 155
    return-void
.end method

.method public onResume()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 115
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    const-string v3, "SignOnManager.confirm_signoff"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    .line 118
    .local v0, alertDialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    if-eqz v0, :cond_10

    .line 119
    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setListener(Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;)V

    .line 123
    :cond_10
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mResultAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v2, :cond_28

    .line 124
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mResultAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/phone/SignOnManager;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 125
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mResultAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 127
    const/4 v1, 0x1

    .line 132
    .local v1, signInJustCompleted:Z
    :goto_1d
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-nez v2, :cond_2e

    .line 134
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mOobAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v2, :cond_2a

    .line 135
    iput-boolean v4, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mIsResumed:Z

    .line 147
    :goto_27
    return v1

    .line 129
    .end local v1           #signInJustCompleted:Z
    :cond_28
    const/4 v1, 0x0

    .restart local v1       #signInJustCompleted:Z
    goto :goto_1d

    .line 137
    :cond_2a
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/SignOnManager;->switchAccounts()V

    goto :goto_27

    .line 139
    :cond_2e
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v3}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/content/EsAccount;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 141
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/SignOnManager;->switchAccounts()V

    goto :goto_27

    .line 143
    :cond_40
    iput-boolean v4, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mIsResumed:Z

    .line 144
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->initiateConnection(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    goto :goto_27
.end method

.method protected final recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 4
    .parameter "action"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v0, :cond_b

    .line 353
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 355
    :cond_b
    return-void
.end method

.method public signOut()V
    .registers 5

    .prologue
    .line 217
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const v3, 0x7f08017d

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    move-result-object v0

    .line 219
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnManager;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    const-string v2, "SignOnManager.progress_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 221
    new-instance v1, Lcom/google/android/apps/plus/phone/SignOnManager$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/phone/SignOnManager$1;-><init>(Lcom/google/android/apps/plus/phone/SignOnManager;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/SignOnManager$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 239
    return-void
.end method
