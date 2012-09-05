.class Lcom/android/email/activity/smime/InstalledCertificatesList$1$2;
.super Ljava/lang/Object;
.source "InstalledCertificatesList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/smime/InstalledCertificatesList$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/smime/InstalledCertificatesList$1;


# direct methods
.method constructor <init>(Lcom/android/email/activity/smime/InstalledCertificatesList$1;)V
    .registers 2
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$1$2;->this$1:Lcom/android/email/activity/smime/InstalledCertificatesList$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$1$2;->this$1:Lcom/android/email/activity/smime/InstalledCertificatesList$1;

    iget-object v0, v0, Lcom/android/email/activity/smime/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    #calls: Lcom/android/email/activity/smime/InstalledCertificatesList;->fillCertificateList()V
    invoke-static {v0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->access$200(Lcom/android/email/activity/smime/InstalledCertificatesList;)V

    .line 329
    iget-object v0, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$1$2;->this$1:Lcom/android/email/activity/smime/InstalledCertificatesList$1;

    iget-object v0, v0, Lcom/android/email/activity/smime/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    invoke-virtual {v0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 330
    return-void
.end method
