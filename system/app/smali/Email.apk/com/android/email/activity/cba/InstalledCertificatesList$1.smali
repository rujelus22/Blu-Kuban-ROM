.class Lcom/android/email/activity/cba/InstalledCertificatesList$1;
.super Ljava/lang/Object;
.source "InstalledCertificatesList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/cba/InstalledCertificatesList;->deleteCertificates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/cba/InstalledCertificatesList;)V
    .registers 2
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 329
    :try_start_0
    iget-object v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    #getter for: Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/activity/cba/InstalledCertificatesList;->access$000(Lcom/android/email/activity/cba/InstalledCertificatesList;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 332
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;>;"
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 333
    iget-object v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    #getter for: Lcom/android/email/activity/cba/InstalledCertificatesList;->mCertificateManager:Lcom/android/email/cba/CertificateMgr;
    invoke-static {v2}, Lcom/android/email/activity/cba/InstalledCertificatesList;->access$100(Lcom/android/email/activity/cba/InstalledCertificatesList;)Lcom/android/email/cba/CertificateMgr;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;

    invoke-virtual {v2}, Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/email/cba/CertificateMgr;->removeCertificate(Ljava/lang/String;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_a

    .line 337
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;>;"
    :catch_24
    move-exception v0

    .line 339
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    new-instance v3, Lcom/android/email/activity/cba/InstalledCertificatesList$1$1;

    invoke-direct {v3, p0}, Lcom/android/email/activity/cba/InstalledCertificatesList$1$1;-><init>(Lcom/android/email/activity/cba/InstalledCertificatesList$1;)V

    invoke-virtual {v2, v3}, Lcom/android/email/activity/cba/InstalledCertificatesList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 357
    .end local v0           #e:Ljava/lang/Exception;
    :goto_2f
    iget-object v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    new-instance v3, Lcom/android/email/activity/cba/InstalledCertificatesList$1$2;

    invoke-direct {v3, p0}, Lcom/android/email/activity/cba/InstalledCertificatesList$1$2;-><init>(Lcom/android/email/activity/cba/InstalledCertificatesList$1;)V

    invoke-virtual {v2, v3}, Lcom/android/email/activity/cba/InstalledCertificatesList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 368
    iget-object v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/email/activity/cba/InstalledCertificatesList;->removeDialog(I)V

    .line 370
    return-void

    .line 335
    .restart local v1       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/email/activity/cba/InstalledCertificatesList$InstalledCertificateInformation;>;"
    :cond_40
    :try_start_40
    iget-object v2, p0, Lcom/android/email/activity/cba/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/cba/InstalledCertificatesList;

    #getter for: Lcom/android/email/activity/cba/InstalledCertificatesList;->mDeleteItems:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/email/activity/cba/InstalledCertificatesList;->access$000(Lcom/android/email/activity/cba/InstalledCertificatesList;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_49} :catch_24

    goto :goto_2f
.end method
