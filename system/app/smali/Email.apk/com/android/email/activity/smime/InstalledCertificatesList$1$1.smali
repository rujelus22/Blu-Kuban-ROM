.class Lcom/android/email/activity/smime/InstalledCertificatesList$1$1;
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
    .line 315
    iput-object p1, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$1$1;->this$1:Lcom/android/email/activity/smime/InstalledCertificatesList$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/email/activity/smime/InstalledCertificatesList$1$1;->this$1:Lcom/android/email/activity/smime/InstalledCertificatesList$1;

    iget-object v0, v0, Lcom/android/email/activity/smime/InstalledCertificatesList$1;->this$0:Lcom/android/email/activity/smime/InstalledCertificatesList;

    invoke-virtual {v0}, Lcom/android/email/activity/smime/InstalledCertificatesList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0804ee

    const/16 v2, 0xbb8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 321
    return-void
.end method
