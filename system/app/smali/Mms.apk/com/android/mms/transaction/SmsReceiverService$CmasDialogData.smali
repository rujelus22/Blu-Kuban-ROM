.class Lcom/android/mms/transaction/SmsReceiverService$CmasDialogData;
.super Ljava/lang/Object;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/SmsReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CmasDialogData"
.end annotation


# instance fields
.field intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/mms/transaction/SmsReceiverService;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .registers 3
    .parameter
    .parameter "intent"

    .prologue
    .line 2002
    iput-object p1, p0, Lcom/android/mms/transaction/SmsReceiverService$CmasDialogData;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2003
    iput-object p2, p0, Lcom/android/mms/transaction/SmsReceiverService$CmasDialogData;->intent:Landroid/content/Intent;

    .line 2004
    return-void
.end method
