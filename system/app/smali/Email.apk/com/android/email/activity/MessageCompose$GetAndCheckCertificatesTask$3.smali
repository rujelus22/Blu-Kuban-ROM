.class Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask$3;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;->onPostExecute([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;)V
    .registers 2
    .parameter

    .prologue
    .line 5599
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask$3;->this$1:Lcom/android/email/activity/MessageCompose$GetAndCheckCertificatesTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 5605
    return-void
.end method
