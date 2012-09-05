.class Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons$1;
.super Ljava/lang/Object;
.source "InstalledCertificatesList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;


# direct methods
.method constructor <init>(Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;)V
    .registers 2
    .parameter

    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons$1;->this$1:Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12
    .parameter "view"

    .prologue
    const v5, 0x7f1000ea

    const/4 v9, 0x0

    .line 490
    iget-object v4, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons$1;->this$1:Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;

    iget-object v4, v4, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    #getter for: Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteMode:Z
    invoke-static {v4}, Lcom/android/email/activity/cba/InstalledCertificatesList;->access$300(Lcom/android/email/activity/cba/InstalledCertificatesList;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 491
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;

    .line 493
    .local v3, installedCerInfoObject:Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;
    iget-object v4, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons$1;->this$1:Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;

    iget-object v4, v4, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    #getter for: Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/email/activity/cba/InstalledCertificatesList;->access$000(Lcom/android/email/activity/cba/InstalledCertificatesList;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 494
    iget-object v4, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons$1;->this$1:Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;

    iget-object v4, v4, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    #getter for: Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/email/activity/cba/InstalledCertificatesList;->access$000(Lcom/android/email/activity/cba/InstalledCertificatesList;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 498
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {v4, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 506
    :goto_36
    iget-object v4, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons$1;->this$1:Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;

    iget-object v4, v4, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    invoke-virtual {v4}, Lcom/android/email/activity/cba/InstalledCertificatesList;->invalidateOptionsMenu()V

    .line 537
    .end local v3           #installedCerInfoObject:Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;
    :cond_3d
    :goto_3d
    return-void

    .line 500
    .restart local v3       #installedCerInfoObject:Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;
    :cond_3e
    iget-object v4, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons$1;->this$1:Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;

    iget-object v4, v4, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    #getter for: Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/email/activity/cba/InstalledCertificatesList;->access$000(Lcom/android/email/activity/cba/InstalledCertificatesList;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 504
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_36

    .line 508
    .end local v3           #installedCerInfoObject:Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;
    :cond_54
    const v4, 0x7f1000e9

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 509
    .local v1, aliasTextView:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 510
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, alias:Ljava/lang/String;
    :try_start_6f
    iget-object v4, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons$1;->this$1:Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;

    iget-object v4, v4, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    #getter for: Lcom/android/email/activity/cba/InstalledCertificatesList;->mCertificateManager:Lcom/android/email/cba/CertificateMgr;
    invoke-static {v4}, Lcom/android/email/activity/cba/InstalledCertificatesList;->access$100(Lcom/android/email/activity/cba/InstalledCertificatesList;)Lcom/android/email/cba/CertificateMgr;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/email/cba/CertificateMgr;->getSubject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons$1;->this$1:Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;

    iget-object v5, v5, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    #getter for: Lcom/android/email/activity/cba/InstalledCertificatesList;->mEmailAddress:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/email/activity/cba/InstalledCertificatesList;->access$400(Lcom/android/email/activity/cba/InstalledCertificatesList;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d1

    .line 513
    iget-object v4, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons$1;->this$1:Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;

    iget-object v4, v4, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    invoke-virtual {v4}, Lcom/android/email/activity/cba/InstalledCertificatesList;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0804f2

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 517
    iget-object v4, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons$1;->this$1:Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;

    iget-object v4, v4, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    const/4 v5, -0x1

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "CERTIFICATE_ALIAS"

    const-string v8, "None"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/email/activity/cba/InstalledCertificatesList;->setResult(ILandroid/content/Intent;)V

    .line 521
    iget-object v4, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons$1;->this$1:Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;

    iget-object v4, v4, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    invoke-virtual {v4}, Lcom/android/email/activity/cba/InstalledCertificatesList;->finish()V
    :try_end_b8
    .catch Lcom/android/emailcommon/cba/CertificateManagerException; {:try_start_6f .. :try_end_b8} :catch_b9

    goto :goto_3d

    .line 529
    :catch_b9
    move-exception v2

    .line 530
    .local v2, ex:Lcom/android/emailcommon/cba/CertificateManagerException;
    invoke-virtual {v2}, Lcom/android/emailcommon/cba/CertificateManagerException;->printStackTrace()V

    .line 531
    iget-object v4, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons$1;->this$1:Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;

    iget-object v4, v4, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    invoke-virtual {v4}, Lcom/android/email/activity/cba/InstalledCertificatesList;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0804eb

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3d

    .line 523
    .end local v2           #ex:Lcom/android/emailcommon/cba/CertificateManagerException;
    :cond_d1
    :try_start_d1
    iget-object v4, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons$1;->this$1:Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;

    iget-object v4, v4, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    const/4 v5, -0x1

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "CERTIFICATE_ALIAS"

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/email/activity/cba/InstalledCertificatesList;->setResult(ILandroid/content/Intent;)V

    .line 527
    iget-object v4, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons$1;->this$1:Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;

    iget-object v4, v4, Lcom/android/email/activity/cba/InstalledCertificatesList$ArrayAdapterWithButtons;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    invoke-virtual {v4}, Lcom/android/email/activity/cba/InstalledCertificatesList;->finish()V
    :try_end_ef
    .catch Lcom/android/emailcommon/cba/CertificateManagerException; {:try_start_d1 .. :try_end_ef} :catch_b9

    goto/16 :goto_3d
.end method
