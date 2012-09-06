.class public Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareConfirmationDialog;
.super Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
.source "HostedEventFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedEventFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstantShareConfirmationDialog"
.end annotation


# instance fields
.field private mCheckinButton:Landroid/widget/CheckBox;

.field private mDialogType:Lcom/google/android/apps/plus/fragments/HostedEventFragment$DialogType;

.field private mFirstTime:Z

.field private mHasCheckedIn:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1342
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;-><init>()V

    .line 1340
    sget-object v0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$DialogType;->PRIVATE:Lcom/google/android/apps/plus/fragments/HostedEventFragment$DialogType;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareConfirmationDialog;->mDialogType:Lcom/google/android/apps/plus/fragments/HostedEventFragment$DialogType;

    .line 1343
    return-void
.end method

.method public constructor <init>(ZLcom/google/android/apps/plus/fragments/HostedEventFragment;Lcom/google/android/apps/plus/fragments/HostedEventFragment$DialogType;)V
    .registers 5
    .parameter "hasCheckedIn"
    .parameter "parent"
    .parameter "dialogType"

    .prologue
    .line 1346
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;-><init>()V

    .line 1340
    sget-object v0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$DialogType;->PRIVATE:Lcom/google/android/apps/plus/fragments/HostedEventFragment$DialogType;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareConfirmationDialog;->mDialogType:Lcom/google/android/apps/plus/fragments/HostedEventFragment$DialogType;

    .line 1347
    iput-boolean p1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareConfirmationDialog;->mHasCheckedIn:Z

    .line 1348
    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareConfirmationDialog;->mDialogType:Lcom/google/android/apps/plus/fragments/HostedEventFragment$DialogType;

    .line 1349
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1416
    packed-switch p2, :pswitch_data_1e

    .line 1429
    :cond_3
    :goto_3
    return-void

    .line 1418
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareConfirmationDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1419
    .local v0, fragment:Landroid/support/v4/app/Fragment;
    instance-of v1, v0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    if-eqz v1, :cond_3

    .line 1420
    check-cast v0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    .end local v0           #fragment:Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareConfirmationDialog;->mCheckinButton:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareConfirmationDialog;->mFirstTime:Z

    #calls: Lcom/google/android/apps/plus/fragments/HostedEventFragment;->turnOnInstantShare(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->access$1700(Lcom/google/android/apps/plus/fragments/HostedEventFragment;ZZ)V

    goto :goto_3

    .line 1426
    :pswitch_1a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareConfirmationDialog;->dismiss()V

    goto :goto_3

    .line 1416
    :pswitch_data_1e
    .packed-switch -0x2
        :pswitch_1a
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 16
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1361
    if-eqz p1, :cond_20

    .line 1362
    const-string v10, "has_checked_in_id"

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareConfirmationDialog;->mHasCheckedIn:Z

    .line 1363
    const-string v10, "first_time_id"

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareConfirmationDialog;->mFirstTime:Z

    .line 1364
    const-string v10, "dialog_type"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$DialogType;->valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/HostedEventFragment$DialogType;

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareConfirmationDialog;->mDialogType:Lcom/google/android/apps/plus/fragments/HostedEventFragment$DialogType;

    .line 1367
    :cond_20
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareConfirmationDialog;->getDialogContext()Landroid/content/Context;

    move-result-object v2

    .line 1368
    .local v2, context:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 1370
    .local v8, resources:Landroid/content/res/Resources;
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 1371
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v10, 0x7f030035

    const/4 v13, 0x0

    invoke-virtual {v4, v10, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1372
    .local v6, mView:Landroid/view/View;
    const v10, 0x7f0900c9

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    iput-object v10, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareConfirmationDialog;->mCheckinButton:Landroid/widget/CheckBox;

    .line 1373
    iget-object v13, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareConfirmationDialog;->mCheckinButton:Landroid/widget/CheckBox;

    iget-boolean v10, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareConfirmationDialog;->mHasCheckedIn:Z

    if-eqz v10, :cond_ca

    move v10, v11

    :goto_46
    invoke-virtual {v13, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1375
    const v10, 0x7f0900c7

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1377
    .local v3, dialogContent:Landroid/widget/TextView;
    sget-object v10, Lcom/google/android/apps/plus/fragments/HostedEventFragment$10;->$SwitchMap$com$google$android$apps$plus$fragments$HostedEventFragment$DialogType:[I

    iget-object v13, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareConfirmationDialog;->mDialogType:Lcom/google/android/apps/plus/fragments/HostedEventFragment$DialogType;

    invoke-virtual {v13}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$DialogType;->ordinal()I

    move-result v13

    aget v10, v10, v13

    packed-switch v10, :pswitch_data_d6

    .line 1386
    const v1, 0x7f0803ea

    .line 1389
    .local v1, contentId:I
    :goto_62
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1391
    const v10, 0x7f0900c8

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1392
    .local v5, learnMoreLink:Landroid/widget/TextView;
    const v10, 0x7f0803ed

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1394
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1396
    const v7, 0x7f0803f0

    .line 1397
    .local v7, positiveButtonId:I
    const-string v10, "event"

    invoke-virtual {v2, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 1399
    .local v9, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v10, "hasUsedInstantShare"

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_95

    move v11, v12

    :cond_95
    iput-boolean v11, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareConfirmationDialog;->mFirstTime:Z

    .line 1400
    iget-boolean v10, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareConfirmationDialog;->mFirstTime:Z

    if-eqz v10, :cond_ab

    .line 1401
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "hasUsedInstantShare"

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1402
    const v7, 0x7f0803ef

    .line 1405
    :cond_ab
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1406
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0803e9

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f08020a

    invoke-virtual {v10, v11, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1411
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    return-object v10

    .line 1373
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #contentId:I
    .end local v3           #dialogContent:Landroid/widget/TextView;
    .end local v5           #learnMoreLink:Landroid/widget/TextView;
    .end local v7           #positiveButtonId:I
    .end local v9           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_ca
    const/16 v10, 0x8

    goto/16 :goto_46

    .line 1379
    .restart local v3       #dialogContent:Landroid/widget/TextView;
    :pswitch_ce
    const v1, 0x7f0803eb

    .line 1380
    .restart local v1       #contentId:I
    goto :goto_62

    .line 1382
    .end local v1           #contentId:I
    :pswitch_d2
    const v1, 0x7f0803ec

    .line 1383
    .restart local v1       #contentId:I
    goto :goto_62

    .line 1377
    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_ce
        :pswitch_d2
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 1353
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1354
    const-string v0, "has_checked_in_id"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareConfirmationDialog;->mHasCheckedIn:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1355
    const-string v0, "first_time_id"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareConfirmationDialog;->mFirstTime:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1356
    const-string v0, "dialog_type"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$InstantShareConfirmationDialog;->mDialogType:Lcom/google/android/apps/plus/fragments/HostedEventFragment$DialogType;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$DialogType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    return-void
.end method
