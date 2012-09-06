.class public Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;
.super Landroid/support/v4/app/Fragment;
.source "OutOfBoxFragment.java"

# interfaces
.implements Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;
.implements Lcom/google/android/apps/plus/oob/ActionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/OutOfBoxFragment$1;,
        Lcom/google/android/apps/plus/fragments/OutOfBoxFragment$OobEsServiceListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DIALOG_IDS:[Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mBottomActionBar:Lcom/google/android/apps/plus/views/BottomActionBar;

.field private final mEsServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

.field private mLastRequest:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

.field private mOobFields:Landroid/view/ViewGroup;

.field private mOutOfBoxDialogInflater:Lcom/google/android/apps/plus/oob/OutOfBoxDialogInflater;

.field private mOutOfBoxInflater:Lcom/google/android/apps/plus/oob/OutOfBoxInflater;

.field private mOutOfBoxResponse:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

.field private mPendingRequestId:Ljava/lang/Integer;

.field private mSignUpLayout:Landroid/view/ViewGroup;

.field private mViewSwitcher:Landroid/widget/ViewSwitcher;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    const-class v0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_20

    move v0, v1

    :goto_b
    sput-boolean v0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->$assertionsDisabled:Z

    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "sending"

    aput-object v3, v0, v2

    const-string v2, "net_failure"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "event"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->DIALOG_IDS:[Ljava/lang/String;

    return-void

    :cond_20
    move v0, v2

    .line 48
    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 77
    new-instance v0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment$OobEsServiceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment$OobEsServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;Lcom/google/android/apps/plus/fragments/OutOfBoxFragment$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mEsServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 97
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    return-void
.end method

.method private back()Z
    .registers 2

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    return v0
.end method

.method private buildOutOfBoxRequest(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;
    .registers 7
    .parameter "action"

    .prologue
    .line 416
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    move-result-object v0

    .line 419
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mOobFields:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 420
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mOobFields:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/oob/BaseFieldLayout;

    .line 421
    .local v1, field:Lcom/google/android/apps/plus/oob/BaseFieldLayout;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->getField()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasInput()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 422
    invoke-virtual {v1}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->newFieldFromInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->addInput(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    .line 419
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 427
    .end local v1           #field:Lcom/google/android/apps/plus/oob/BaseFieldLayout;
    :cond_29
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->setAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    .line 429
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v3

    return-object v3
.end method

.method private close()V
    .registers 3

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 483
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 484
    return-void
.end method

.method private closeOpenDialogs()V
    .registers 6

    .prologue
    .line 347
    sget-object v0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->DIALOG_IDS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_14

    aget-object v4, v0, v2

    .line 348
    .local v4, tag:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->findDialogFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/DialogFragment;

    move-result-object v1

    .line 349
    .local v1, dialog:Landroid/support/v4/app/DialogFragment;
    if-eqz v1, :cond_11

    .line 350
    invoke-virtual {v1}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 347
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 353
    .end local v1           #dialog:Landroid/support/v4/app/DialogFragment;
    .end local v4           #tag:Ljava/lang/String;
    :cond_14
    return-void
.end method

.method public static createInitialTag()Ljava/lang/String;
    .registers 1

    .prologue
    .line 524
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->createTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createNextTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 531
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->createTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createOutOfBoxAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    .registers 2
    .parameter "type"

    .prologue
    .line 499
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v0

    return-object v0
.end method

.method private static createOutOfBoxRequest(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;
    .registers 3
    .parameter "type"

    .prologue
    .line 503
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->createOutOfBoxAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->setAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v0

    return-object v0
.end method

.method private static createTag(I)Ljava/lang/String;
    .registers 2
    .parameter "position"

    .prologue
    .line 510
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private findDialogFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/DialogFragment;
    .registers 3
    .parameter "tag"

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    return-object v0
.end method

.method private getPosition()I
    .registers 2

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private handleServerResponse(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;)V
    .registers 9
    .parameter "oobResponse"

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->closeOpenDialogs()V

    .line 257
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 258
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getSignupComplete()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 259
    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 260
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v5, :cond_28

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lcom/google/android/apps/plus/phone/Intents;->getNextOobIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    .line 262
    .local v2, nextIntent:Landroid/content/Intent;
    :goto_21
    if-eqz v2, :cond_2a

    .line 263
    const/4 v5, 0x1

    invoke-virtual {p0, v2, v5}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 294
    .end local v2           #nextIntent:Landroid/content/Intent;
    :goto_27
    return-void

    .line 260
    :cond_28
    const/4 v2, 0x0

    goto :goto_21

    .line 265
    .restart local v2       #nextIntent:Landroid/content/Intent;
    :cond_2a
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/app/Activity;->setResult(I)V

    .line 266
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_27

    .line 269
    .end local v2           #nextIntent:Landroid/content/Intent;
    :cond_32
    const/4 v1, 0x1

    .line 271
    .local v1, addNewFragmentToBackStack:Z
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->isDialog()Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 275
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v5

    if-lez v5, :cond_6b

    .line 278
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 286
    :cond_4a
    :goto_4a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 287
    .local v3, t:Landroid/support/v4/app/FragmentTransaction;
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->createNextTag()Ljava/lang/String;

    move-result-object v4

    .line 288
    .local v4, tag:Ljava/lang/String;
    const v5, 0x7f09017b

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v6, p1}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->newInstance(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;)Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 289
    if-eqz v1, :cond_67

    .line 290
    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 292
    :cond_67
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_27

    .line 282
    .end local v3           #t:Landroid/support/v4/app/FragmentTransaction;
    .end local v4           #tag:Ljava/lang/String;
    :cond_6b
    const/4 v1, 0x0

    goto :goto_4a
.end method

.method private handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 190
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p1, :cond_d

    .line 209
    :cond_c
    :goto_c
    return-void

    .line 194
    :cond_d
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 196
    invoke-static {p1}, Lcom/google/android/apps/plus/service/EsService;->removeOutOfBoxResponse(I)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v1

    .line 198
    .local v1, oob:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 199
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/content/EsAccount;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 200
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->close()V

    goto :goto_c

    .line 203
    :cond_28
    if-eqz v1, :cond_30

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 204
    :cond_30
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->onNetworkFailure(Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_c

    .line 208
    :cond_34
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->handleServerResponse(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;)V

    goto :goto_c
.end method

.method private hasMissingField()Z
    .registers 4

    .prologue
    .line 380
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mOobFields:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 381
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mOobFields:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/oob/BaseFieldLayout;

    .line 382
    .local v0, field:Lcom/google/android/apps/plus/oob/BaseFieldLayout;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->shouldPreventCompletionAction()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v0}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 383
    const/4 v2, 0x1

    .line 386
    .end local v0           #field:Lcom/google/android/apps/plus/oob/BaseFieldLayout;
    :goto_1e
    return v2

    .line 380
    .restart local v0       #field:Lcom/google/android/apps/plus/oob/BaseFieldLayout;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 386
    .end local v0           #field:Lcom/google/android/apps/plus/oob/BaseFieldLayout;
    :cond_22
    const/4 v2, 0x0

    goto :goto_1e
.end method

.method private inflateDialog()V
    .registers 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mOutOfBoxDialogInflater:Lcom/google/android/apps/plus/oob/OutOfBoxDialogInflater;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/oob/OutOfBoxDialogInflater;->inflate()V

    .line 333
    return-void
.end method

.method private inflateView()V
    .registers 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mOutOfBoxInflater:Lcom/google/android/apps/plus/oob/OutOfBoxInflater;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mOutOfBoxResponse:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getView()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->inflateFromResponse(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;Lcom/google/android/apps/plus/oob/ActionCallback;)V

    .line 325
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->updateActionButtons()V

    .line 326
    return-void
.end method

.method private isDialog()Z
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mOutOfBoxResponse:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getView()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->hasDialog()Z

    move-result v0

    return v0
.end method

.method public static newInstance(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;)Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;
    .registers 5
    .parameter "account"
    .parameter "response"

    .prologue
    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 110
    const-string v2, "oob_resp"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 111
    new-instance v1, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;

    invoke-direct {v1}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;-><init>()V

    .line 112
    .local v1, frag:Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->setArguments(Landroid/os/Bundle;)V

    .line 113
    return-object v1
.end method

.method private onNetworkFailure(Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 8
    .parameter "result"

    .prologue
    const/4 v5, 0x0

    .line 217
    const v1, 0x7f080059

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080055

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08005c

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08020a

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 221
    .local v0, dialog:Landroid/support/v4/app/DialogFragment;
    invoke-virtual {v0, v5}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 222
    invoke-virtual {v0, p0, v5}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 223
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "net_failure"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method private static parseOutOfBoxActionType(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;
    .registers 2
    .parameter "actionId"

    .prologue
    .line 495
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    move-result-object v0

    return-object v0
.end method

.method private showDialog()V
    .registers 5

    .prologue
    .line 339
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    const v3, 0x7f090180

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewSwitcher;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 340
    .local v0, index:I
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1, v0}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 341
    return-void
.end method

.method private showProgressDialog()V
    .registers 5

    .prologue
    .line 410
    const/4 v1, 0x0

    const v2, 0x7f08004f

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    move-result-object v0

    .line 412
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "sending"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method private updateActionButtons()V
    .registers 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 360
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->hasMissingField()Z

    move-result v3

    .line 361
    .local v3, hasMissingField:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_7
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mOobFields:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_2a

    .line 362
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mOobFields:Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/oob/BaseFieldLayout;

    .line 363
    .local v2, field:Lcom/google/android/apps/plus/oob/BaseFieldLayout;
    sget-object v6, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->CONTINUE:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->getActionType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    move-result-object v9

    if-ne v6, v9, :cond_25

    .line 364
    if-nez v3, :cond_28

    move v6, v7

    :goto_22
    invoke-virtual {v2, v6}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->setActionEnabled(Z)V

    .line 361
    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_28
    move v6, v8

    .line 364
    goto :goto_22

    .line 368
    .end local v2           #field:Lcom/google/android/apps/plus/oob/BaseFieldLayout;
    :cond_2a
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mBottomActionBar:Lcom/google/android/apps/plus/views/BottomActionBar;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/views/BottomActionBar;->getButtons()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_34
    :goto_34
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/ActionButton;

    .line 369
    .local v1, button:Lcom/google/android/apps/plus/views/ActionButton;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ActionButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    .line 370
    .local v0, action:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    sget-object v6, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->CONTINUE:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    move-result-object v9

    if-ne v6, v9, :cond_34

    .line 371
    if-nez v3, :cond_55

    move v6, v7

    :goto_51
    invoke-virtual {v1, v6}, Lcom/google/android/apps/plus/views/ActionButton;->setEnabled(Z)V

    goto :goto_34

    :cond_55
    move v6, v8

    goto :goto_51

    .line 374
    .end local v0           #action:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;
    .end local v1           #button:Lcom/google/android/apps/plus/views/ActionButton;
    :cond_57
    return-void
.end method


# virtual methods
.method public onAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)V
    .registers 4
    .parameter "action"

    .prologue
    .line 391
    sget-object v0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$OutOfBoxAction$Type:[I

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    .line 404
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->buildOutOfBoxRequest(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->sendOutOfBoxRequest(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;)V

    .line 407
    :cond_16
    :goto_16
    return-void

    .line 393
    :pswitch_17
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/Intents;->viewUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_16

    .line 396
    :pswitch_23
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->back()Z

    move-result v0

    if-nez v0, :cond_16

    .line 401
    :pswitch_29
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->close()V

    goto :goto_16

    .line 391
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_17
        :pswitch_23
        :pswitch_29
    .end packed-switch
.end method

.method public onActionId(Ljava/lang/String;)V
    .registers 7
    .parameter "actionId"

    .prologue
    .line 449
    :try_start_0
    invoke-static {p1}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->parseOutOfBoxActionType(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    move-result-object v0

    .line 450
    .local v0, actionType:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;
    sget-object v2, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$OutOfBoxAction$Type:[I

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_48

    .line 461
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->createOutOfBoxRequest(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->sendOutOfBoxRequest(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;)V

    .line 469
    .end local v0           #actionType:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;
    :cond_16
    :goto_16
    return-void

    .line 452
    .restart local v0       #actionType:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;
    :pswitch_17
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->back()Z

    move-result v2

    if-nez v2, :cond_16

    .line 457
    :pswitch_1d
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->close()V
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_16

    .line 465
    .end local v0           #actionType:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;
    :catch_21
    move-exception v1

    .line 466
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v2, "OutOfBoxFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse actionId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "not calling action on this event."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 450
    nop

    :pswitch_data_48
    .packed-switch 0x2
        :pswitch_17
        :pswitch_1d
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 301
    packed-switch p1, :pswitch_data_16

    .line 307
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 310
    :goto_6
    return-void

    .line 303
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 304
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_6

    .line 301
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 123
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "oob_resp"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mOutOfBoxResponse:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    .line 124
    const v1, 0x7f03007c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 125
    .local v0, view:Landroid/view/View;
    const v1, 0x7f09017c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewSwitcher;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 126
    const v1, 0x7f09017e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mSignUpLayout:Landroid/view/ViewGroup;

    .line 127
    const v1, 0x7f09017f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mOobFields:Landroid/view/ViewGroup;

    .line 128
    const v1, 0x7f090148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/BottomActionBar;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mBottomActionBar:Lcom/google/android/apps/plus/views/BottomActionBar;

    .line 129
    new-instance v1, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mSignUpLayout:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mOobFields:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mBottomActionBar:Lcom/google/android/apps/plus/views/BottomActionBar;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/google/android/apps/plus/views/BottomActionBar;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mOutOfBoxInflater:Lcom/google/android/apps/plus/oob/OutOfBoxInflater;

    .line 130
    new-instance v2, Lcom/google/android/apps/plus/oob/OutOfBoxDialogInflater;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v1, 0x7f0900c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mOutOfBoxResponse:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getView()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4, p0}, Lcom/google/android/apps/plus/oob/OutOfBoxDialogInflater;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/view/ViewGroup;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;Lcom/google/android/apps/plus/oob/ActionCallback;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mOutOfBoxDialogInflater:Lcom/google/android/apps/plus/oob/OutOfBoxDialogInflater;

    .line 134
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->isDialog()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 135
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->inflateDialog()V

    .line 136
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->showDialog()V

    .line 141
    :goto_83
    if-eqz p3, :cond_a3

    .line 142
    const-string v1, "last_request"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mLastRequest:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    .line 143
    const-string v1, "reqid"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 144
    const-string v1, "reqid"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 147
    :cond_a3
    return-object v0

    .line 138
    :cond_a4
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->inflateView()V

    goto :goto_83
.end method

.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 5
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 242
    sget-boolean v0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_12

    const-string v0, "net_failure"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 243
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "net_failure not cancelable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDialogListClick(ILandroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "which"
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 248
    return-void
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 236
    sget-boolean v0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_12

    const-string v0, "net_failure"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 237
    :cond_12
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->close()V

    .line 238
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 228
    sget-boolean v0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_12

    const-string v0, "net_failure"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 229
    :cond_12
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mLastRequest:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    if-eqz v0, :cond_1b

    .line 230
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mLastRequest:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->sendOutOfBoxRequest(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;)V

    .line 232
    :cond_1b
    return-void
.end method

.method public onInputChanged(Lcom/google/android/apps/plus/oob/BaseFieldLayout;)V
    .registers 2
    .parameter "field"

    .prologue
    .line 491
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->updateActionButtons()V

    .line 492
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 185
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 186
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mEsServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 187
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 167
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 168
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mEsServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 170
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_2d

    .line 171
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 172
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 173
    .local v0, result:Lcom/google/android/apps/plus/service/ServiceResult;
    if-eqz v0, :cond_2d

    .line 174
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 178
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_2d
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 156
    const-string v0, "last_request"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mLastRequest:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 157
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_19

    .line 158
    const-string v0, "reqid"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    :cond_19
    return-void
.end method

.method public sendOutOfBoxRequest(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->showProgressDialog()V

    .line 438
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mLastRequest:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    .line 439
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/service/EsService;->sendOutOfBoxRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 440
    return-void
.end method
