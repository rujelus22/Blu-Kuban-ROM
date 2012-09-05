.class Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons$1;
.super Ljava/lang/Object;
.source "InstalledCertificatesList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;


# direct methods
.method constructor <init>(Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;)V
    .registers 2
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons$1;->this$1:Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter "view"

    .prologue
    const v6, 0x7f1000ea

    const/4 v8, 0x0

    .line 439
    iget-object v5, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons$1;->this$1:Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;

    iget-object v5, v5, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    #getter for: Lcom/android/email/activity/smime/InstalledCertificatesList;->mDeleteMode:Z
    invoke-static {v5}, Lcom/android/email/activity/smime/InstalledCertificatesList;->access$300(Lcom/android/email/activity/smime/InstalledCertificatesList;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 440
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;

    .line 442
    .local v3, installedCerInfoObject:Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;
    iget-object v5, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons$1;->this$1:Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;

    iget-object v5, v5, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    #getter for: Lcom/android/email/activity/smime/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;
    invoke-static {v5}, Lcom/android/email/activity/smime/InstalledCertificatesList;->access$000(Lcom/android/email/activity/smime/InstalledCertificatesList;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 443
    iget-object v5, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons$1;->this$1:Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;

    iget-object v5, v5, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    #getter for: Lcom/android/email/activity/smime/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;
    invoke-static {v5}, Lcom/android/email/activity/smime/InstalledCertificatesList;->access$000(Lcom/android/email/activity/smime/InstalledCertificatesList;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 447
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 455
    :goto_36
    iget-object v5, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons$1;->this$1:Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;

    iget-object v5, v5, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    invoke-virtual {v5}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 496
    .end local v3           #installedCerInfoObject:Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;
    :cond_41
    :goto_41
    return-void

    .line 449
    .restart local v3       #installedCerInfoObject:Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;
    :cond_42
    iget-object v5, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons$1;->this$1:Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;

    iget-object v5, v5, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    #getter for: Lcom/android/email/activity/smime/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;
    invoke-static {v5}, Lcom/android/email/activity/smime/InstalledCertificatesList;->access$000(Lcom/android/email/activity/smime/InstalledCertificatesList;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 453
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_36

    .line 457
    .end local v3           #installedCerInfoObject:Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;
    :cond_58
    const v5, 0x7f1000e9

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 458
    .local v1, aliasTextView:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_41

    .line 459
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, alias:Ljava/lang/String;
    :try_start_73
    iget-object v5, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons$1;->this$1:Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;

    iget-object v5, v5, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    invoke-virtual {v5}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons$1;->this$1:Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;

    iget-object v7, v7, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    #getter for: Lcom/android/email/activity/smime/InstalledCertificatesList;->mCertificateManager:Lcom/android/emailcommon/smime/CertificateMgr;
    invoke-static {v7}, Lcom/android/email/activity/smime/InstalledCertificatesList;->access$100(Lcom/android/email/activity/smime/InstalledCertificatesList;)Lcom/android/emailcommon/smime/CertificateMgr;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/smime/CertificateMgr;->getSubject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "::"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons$1;->this$1:Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;

    iget-object v7, v7, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    #getter for: Lcom/android/email/activity/smime/InstalledCertificatesList;->mEmailAddress:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/email/activity/smime/InstalledCertificatesList;->access$400(Lcom/android/email/activity/smime/InstalledCertificatesList;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 483
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 484
    .local v4, intent:Landroid/content/Intent;
    const-string v5, "CERTIFICATE_ALIAS"

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 485
    iget-object v5, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons$1;->this$1:Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;

    iget-object v5, v5, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    #getter for: Lcom/android/email/activity/smime/InstalledCertificatesList;->pa:Landroid/preference/PreferenceActivity;
    invoke-static {v5}, Lcom/android/email/activity/smime/InstalledCertificatesList;->access$500(Lcom/android/email/activity/smime/InstalledCertificatesList;)Landroid/preference/PreferenceActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons$1;->this$1:Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;

    iget-object v6, v6, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7, v4}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    :try_end_cc
    .catch Lcom/android/emailcommon/smime/CertificateManagerException; {:try_start_73 .. :try_end_cc} :catch_ce

    goto/16 :goto_41

    .line 488
    .end local v4           #intent:Landroid/content/Intent;
    :catch_ce
    move-exception v2

    .line 489
    .local v2, ex:Lcom/android/emailcommon/smime/CertificateManagerException;
    invoke-virtual {v2}, Lcom/android/emailcommon/smime/CertificateManagerException;->printStackTrace()V

    .line 490
    iget-object v5, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons$1;->this$1:Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;

    iget-object v5, v5, Lcom/android/email/activity/smime/InstalledCertificatesList$ArrayAdapterWithButtons;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    invoke-virtual {v5}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0804eb

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_41
.end method
