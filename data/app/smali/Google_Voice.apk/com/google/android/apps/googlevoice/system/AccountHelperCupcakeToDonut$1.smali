.class Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut$1;
.super Ljava/lang/Thread;
.source "AccountHelperCupcakeToDonut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;->getDevicePrimaryAccount(Landroid/os/Message;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;

.field final synthetic val$failure:Landroid/os/Message;

.field final synthetic val$success:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;Landroid/os/Message;Landroid/os/Message;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut$1;->this$0:Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;

    iput-object p2, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut$1;->val$success:Landroid/os/Message;

    iput-object p3, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut$1;->val$failure:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut$1;->this$0:Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut$1;->this$0:Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;

    #calls: Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;->getDevicePrimaryAccountBlocking()Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;->access$100(Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;->devicePrimaryAccount:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;->access$002(Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut$1;->this$0:Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;

    #getter for: Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;->devicePrimaryAccount:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;->access$000(Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 48
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut$1;->val$success:Landroid/os/Message;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut$1;->this$0:Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;

    #getter for: Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;->devicePrimaryAccount:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;->access$000(Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut$1;->val$success:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 55
    :goto_22
    return-void

    .line 53
    :cond_23
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AccountHelperCupcakeToDonut$1;->val$failure:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_22
.end method
