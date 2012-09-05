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

    .line 46
    const-class v0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_20

    move v0, v1

    :goto_b
    sput-boolean v0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->$assertionsDisabled:Z

    .line 68
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

    .line 46
    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 75
    new-instance v0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment$OobEsServiceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment$OobEsServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;Lcom/google/android/apps/plus/fragments/OutOfBoxFragment$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mEsServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 95
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    return-void
.end method

.method private back()Z
    .registers 2

    .prologue
    .line 462
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
    .line 403
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    move-result-object v0

    .line 406
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mOobFields:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 407
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mOobFields:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/oob/BaseFieldLayout;

    .line 408
    .local v1, field:Lcom/google/android/apps/plus/oob/BaseFieldLayout;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->getField()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->hasInput()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 409
    invoke-virtual {v1}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->newFieldFromInput()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->addInput(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;

    .line 406
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 414
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

    .line 416
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v3

    return-object v3
.end method

.method private close()V
    .registers 3

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 470
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 471
    return-void
.end method

.method private closeOpenDialogs()V
    .registers 6

    .prologue
    .line 341
    sget-object v0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->DIALOG_IDS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_14

    aget-object v4, v0, v2

    .line 342
    .local v4, tag:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->findDialogFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/DialogFragment;

    move-result-object v1

    .line 343
    .local v1, dialog:Landroid/support/v4/app/DialogFragment;
    if-eqz v1, :cond_11

    .line 344
    invoke-virtual {v1}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 341
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 347
    .end local v1           #dialog:Landroid/support/v4/app/DialogFragment;
    .end local v4           #tag:Ljava/lang/String;
    :cond_14
    return-void
.end method

.method public static createInitialTag()Ljava/lang/String;
    .registers 1

    .prologue
    .line 511
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->createTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createNextTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 518
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
    .line 486
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
    .line 490
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
    .line 497
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private findDialogFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/DialogFragment;
    .registers 3
    .parameter "tag"

    .prologue
    .line 350
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
    .line 504
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private handleServerResponse(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;)V
    .registers 10
    .parameter "oobResponse"

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->closeOpenDialogs()V

    .line 250
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 251
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getSignupComplete()Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 252
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "intent"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 254
    .local v3, startIntent:Landroid/content/Intent;
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v6, v7, v3}, Lcom/google/android/apps/plus/oob/OobUtils;->getNextIntent(Landroid/content/Context;ILcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    .line 256
    .local v2, nextIntent:Landroid/content/Intent;
    if-eqz v2, :cond_27

    .line 257
    const/4 v6, 0x1

    invoke-virtual {p0, v2, v6}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 288
    .end local v2           #nextIntent:Landroid/content/Intent;
    .end local v3           #startIntent:Landroid/content/Intent;
    :goto_26
    return-void

    .line 259
    .restart local v2       #nextIntent:Landroid/content/Intent;
    .restart local v3       #startIntent:Landroid/content/Intent;
    :cond_27
    const/4 v6, -0x1

    invoke-virtual {v0, v6, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 260
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_26

    .line 263
    .end local v2           #nextIntent:Landroid/content/Intent;
    .end local v3           #startIntent:Landroid/content/Intent;
    :cond_2f
    const/4 v1, 0x1

    .line 265
    .local v1, addNewFragmentToBackStack:Z
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->isDialog()Z

    move-result v6

    if-eqz v6, :cond_47

    .line 269
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v6

    if-lez v6, :cond_68

    .line 272
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 280
    :cond_47
    :goto_47
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 281
    .local v4, t:Landroid/support/v4/app/FragmentTransaction;
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->createNextTag()Ljava/lang/String;

    move-result-object v5

    .line 282
    .local v5, tag:Ljava/lang/String;
    const v6, 0x7f0d00fd

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v7, p1}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->newInstance(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;)Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;

    move-result-object v7

    invoke-virtual {v4, v6, v7, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 283
    if-eqz v1, :cond_64

    .line 284
    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 286
    :cond_64
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_26

    .line 276
    .end local v4           #t:Landroid/support/v4/app/FragmentTransaction;
    .end local v5           #tag:Ljava/lang/String;
    :cond_68
    const/4 v1, 0x0

    goto :goto_47
.end method

.method private handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 187
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p1, :cond_d

    .line 206
    :cond_c
    :goto_c
    return-void

    .line 191
    :cond_d
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 193
    invoke-static {p1}, Lcom/google/android/apps/plus/service/EsService;->removeOutOfBoxResponse(I)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v1

    .line 195
    .local v1, oob:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 196
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/content/EsAccount;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 197
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->close()V

    goto :goto_c

    .line 200
    :cond_28
    if-eqz v1, :cond_30

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 201
    :cond_30
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->onNetworkFailure(Lcom/google/android/apps/plus/service/ServiceResult;)V

    goto :goto_c

    .line 205
    :cond_34
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->handleServerResponse(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;)V

    goto :goto_c
.end method

.method private hasMissingField()Z
    .registers 4

    .prologue
    .line 367
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mOobFields:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 368
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mOobFields:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/oob/BaseFieldLayout;

    .line 369
    .local v0, field:Lcom/google/android/apps/plus/oob/BaseFieldLayout;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->shouldPreventCompletionAction()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v0}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 370
    const/4 v2, 0x1

    .line 373
    .end local v0           #field:Lcom/google/android/apps/plus/oob/BaseFieldLayout;
    :goto_1e
    return v2

    .line 367
    .restart local v0       #field:Lcom/google/android/apps/plus/oob/BaseFieldLayout;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 373
    .end local v0           #field:Lcom/google/android/apps/plus/oob/BaseFieldLayout;
    :cond_22
    const/4 v2, 0x0

    goto :goto_1e
.end method

.method private inflateDialog()V
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mOutOfBoxDialogInflater:Lcom/google/android/apps/plus/oob/OutOfBoxDialogInflater;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/oob/OutOfBoxDialogInflater;->inflate()V

    .line 327
    return-void
.end method

.method private inflateView()V
    .registers 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mOutOfBoxInflater:Lcom/google/android/apps/plus/oob/OutOfBoxInflater;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mOutOfBoxResponse:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getView()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;->inflateFromResponse(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;Lcom/google/android/apps/plus/oob/ActionCallback;)V

    .line 319
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->updateActionButtons()V

    .line 320
    return-void
.end method

.method private isDialog()Z
    .registers 2

    .prologue
    .line 311
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
    .line 106
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 107
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "account"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 108
    const-string v2, "oob_resp"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 109
    new-instance v1, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;

    invoke-direct {v1}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;-><init>()V

    .line 110
    .local v1, frag:Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->setArguments(Landroid/os/Bundle;)V

    .line 111
    return-object v1
.end method

.method private onNetworkFailure(Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 8
    .parameter "result"

    .prologue
    const/4 v5, 0x0

    .line 214
    const v1, 0x7f070047

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070043

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f070048

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f070169

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v0

    .line 218
    .local v0, dialog:Landroid/support/v4/app/DialogFragment;
    invoke-virtual {v0, v5}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 219
    invoke-virtual {v0, p0, v5}, Landroid/support/v4/app/DialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 220
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "net_failure"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method private static parseOutOfBoxActionType(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;
    .registers 2
    .parameter "actionId"

    .prologue
    .line 482
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    move-result-object v0

    return-object v0
.end method

.method private showDialog()V
    .registers 5

    .prologue
    .line 333
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    const v3, 0x7f0d0102

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ViewSwitcher;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 334
    .local v0, index:I
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1, v0}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 335
    return-void
.end method

.method private showProgressDialog()V
    .registers 5

    .prologue
    .line 397
    const/4 v1, 0x0

    const v2, 0x7f07003d

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;

    move-result-object v0

    .line 399
    .local v0, dialog:Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "sending"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/ProgressFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method private updateActionButtons()V
    .registers 6

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->hasMissingField()Z

    move-result v1

    .line 355
    .local v1, hasMissingField:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mOobFields:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_28

    .line 356
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mOobFields:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/oob/BaseFieldLayout;

    .line 357
    .local v0, field:Lcom/google/android/apps/plus/oob/BaseFieldLayout;
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->CONTINUE:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->getActionType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    move-result-object v4

    if-ne v3, v4, :cond_23

    .line 358
    if-nez v1, :cond_26

    const/4 v3, 0x1

    :goto_20
    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/oob/BaseFieldLayout;->setActionEnabled(Z)V

    .line 355
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 358
    :cond_26
    const/4 v3, 0x0

    goto :goto_20

    .line 361
    .end local v0           #field:Lcom/google/android/apps/plus/oob/BaseFieldLayout;
    :cond_28
    return-void
.end method


# virtual methods
.method public onAction(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)V
    .registers 4
    .parameter "action"

    .prologue
    .line 378
    sget-object v0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$OutOfBoxAction$Type:[I

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    .line 391
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->buildOutOfBoxRequest(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->sendOutOfBoxRequest(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;)V

    .line 394
    :cond_16
    :goto_16
    return-void

    .line 380
    :pswitch_17
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/Intents;->viewUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_16

    .line 383
    :pswitch_23
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->back()Z

    move-result v0

    if-nez v0, :cond_16

    .line 388
    :pswitch_29
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->close()V

    goto :goto_16

    .line 378
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
    .line 436
    :try_start_0
    invoke-static {p1}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->parseOutOfBoxActionType(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    move-result-object v0

    .line 437
    .local v0, actionType:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;
    sget-object v2, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$OutOfBoxAction$Type:[I

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_48

    .line 448
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->createOutOfBoxRequest(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->sendOutOfBoxRequest(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;)V

    .line 456
    .end local v0           #actionType:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;
    :cond_16
    :goto_16
    return-void

    .line 439
    .restart local v0       #actionType:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;
    :pswitch_17
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->back()Z

    move-result v2

    if-nez v2, :cond_16

    .line 444
    :pswitch_1d
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->close()V
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_16

    .line 452
    .end local v0           #actionType:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;
    :catch_21
    move-exception v1

    .line 453
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

    .line 437
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
    .line 295
    packed-switch p1, :pswitch_data_16

    .line 301
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 304
    :goto_6
    return-void

    .line 297
    :pswitch_7
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 298
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_6

    .line 295
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
    .line 120
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 121
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "oob_resp"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mOutOfBoxResponse:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    .line 122
    const v1, 0x7f030054

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0d00fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewSwitcher;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 124
    const v1, 0x7f0d0100

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mSignUpLayout:Landroid/view/ViewGroup;

    .line 125
    const v1, 0x7f0d0101

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mOobFields:Landroid/view/ViewGroup;

    .line 126
    new-instance v1, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mSignUpLayout:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mOobFields:Landroid/view/ViewGroup;

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/plus/oob/OutOfBoxInflater;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mOutOfBoxInflater:Lcom/google/android/apps/plus/oob/OutOfBoxInflater;

    .line 127
    new-instance v2, Lcom/google/android/apps/plus/oob/OutOfBoxDialogInflater;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v1, 0x7f0d0103

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mOutOfBoxResponse:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getView()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4, p0}, Lcom/google/android/apps/plus/oob/OutOfBoxDialogInflater;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/view/ViewGroup;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;Lcom/google/android/apps/plus/oob/ActionCallback;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mOutOfBoxDialogInflater:Lcom/google/android/apps/plus/oob/OutOfBoxDialogInflater;

    .line 131
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->isDialog()Z

    move-result v1

    if-eqz v1, :cond_97

    .line 132
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->inflateDialog()V

    .line 133
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->showDialog()V

    .line 138
    :goto_76
    if-eqz p3, :cond_96

    .line 139
    const-string v1, "last_request"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mLastRequest:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    .line 140
    const-string v1, "reqid"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 141
    const-string v1, "reqid"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 144
    :cond_96
    return-object v0

    .line 135
    :cond_97
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->inflateView()V

    goto :goto_76
.end method

.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 5
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 239
    sget-boolean v0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_12

    const-string v0, "net_failure"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 240
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "net_failure not cancelable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 233
    sget-boolean v0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_12

    const-string v0, "net_failure"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 234
    :cond_12
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->close()V

    .line 235
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 225
    sget-boolean v0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_12

    const-string v0, "net_failure"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 226
    :cond_12
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mLastRequest:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    if-eqz v0, :cond_1b

    .line 227
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mLastRequest:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->sendOutOfBoxRequest(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;)V

    .line 229
    :cond_1b
    return-void
.end method

.method public onInputChanged(Lcom/google/android/apps/plus/oob/BaseFieldLayout;)V
    .registers 2
    .parameter "field"

    .prologue
    .line 478
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->updateActionButtons()V

    .line 479
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 182
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 183
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mEsServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 184
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 164
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 165
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mEsServiceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 167
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v1, :cond_2d

    .line 168
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->isRequestPending(I)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 169
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->removeResult(I)Lcom/google/android/apps/plus/service/ServiceResult;

    move-result-object v0

    .line 170
    .local v0, result:Lcom/google/android/apps/plus/service/ServiceResult;
    if-eqz v0, :cond_2d

    .line 171
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 175
    .end local v0           #result:Lcom/google/android/apps/plus/service/ServiceResult;
    :cond_2d
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 153
    const-string v0, "last_request"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mLastRequest:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mPendingRequestId:Ljava/lang/Integer;

    if-eqz v0, :cond_19

    .line 155
    const-string v0, "reqid"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mPendingRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 157
    :cond_19
    return-void
.end method

.method public sendOutOfBoxRequest(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->showProgressDialog()V

    .line 425
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mLastRequest:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;

    .line 426
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/service/EsService;->sendOutOfBoxRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/OutOfBoxFragment;->mPendingRequestId:Ljava/lang/Integer;

    .line 427
    return-void
.end method
