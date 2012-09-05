.class Lcom/android/email/activity/smime/InstalledCertificatesList$1;
.super Ljava/lang/Object;
.source "InstalledCertificatesList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/smime/InstalledCertificatesList;->deleteCertificates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/smime/InstalledCertificatesList;)V
    .registers 2
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 308
    iget-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    #getter for: Lcom/android/email/activity/smime/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/activity/smime/InstalledCertificatesList;->access$000(Lcom/android/email/activity/smime/InstalledCertificatesList;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 310
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;>;"
    :goto_a
    :try_start_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 311
    iget-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    #getter for: Lcom/android/email/activity/smime/InstalledCertificatesList;->mCertificateManager:Lcom/android/emailcommon/smime/CertificateMgr;
    invoke-static {v2}, Lcom/android/email/activity/smime/InstalledCertificatesList;->access$100(Lcom/android/email/activity/smime/InstalledCertificatesList;)Lcom/android/emailcommon/smime/CertificateMgr;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;

    invoke-virtual {v2}, Lcom/android/email/activity/smime/InstalledCertificatesList$InstalledCertificateInformation;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/emailcommon/smime/CertificateMgr;->removeCertificate(Ljava/lang/String;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_23} :catch_24

    goto :goto_a

    .line 314
    :catch_24
    move-exception v0

    .line 315
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    invoke-virtual {v2}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/smime/InstalledCertificatesList$1$1;

    invoke-direct {v3, p0}, Lcom/android/email/activity/smime/InstalledCertificatesList$1$1;-><init>(Lcom/android/email/activity/smime/InstalledCertificatesList$1;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 326
    .end local v0           #e:Ljava/lang/Exception;
    :goto_33
    iget-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    invoke-virtual {v2}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/smime/InstalledCertificatesList$1$2;

    invoke-direct {v3, p0}, Lcom/android/email/activity/smime/InstalledCertificatesList$1$2;-><init>(Lcom/android/email/activity/smime/InstalledCertificatesList$1;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 332
    iget-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    invoke-virtual {v2}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->removeDialog(I)V

    .line 333
    return-void

    .line 313
    :cond_4c
    :try_start_4c
    iget-object v2, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    #getter for: Lcom/android/email/activity/smime/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/activity/smime/InstalledCertificatesList;->access$000(Lcom/android/email/activity/smime/InstalledCertificatesList;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_55} :catch_24

    goto :goto_33
.end method
