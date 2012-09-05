.class Lcom/sec/android/app/mobileprint/MPrintProgressActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "MPrintProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/mobileprint/MPrintProgressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintProgressActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintProgressActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity$2;->this$0:Lcom/sec/android/app/mobileprint/MPrintProgressActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 63
    if-eqz p2, :cond_39

    .line 64
    const-string v3, "Transaction"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 65
    .local v1, targetId:I
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity$2;->this$0:Lcom/sec/android/app/mobileprint/MPrintProgressActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mTransactionID:I
    invoke-static {v3}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->access$100(Lcom/sec/android/app/mobileprint/MPrintProgressActivity;)I

    move-result v3

    if-eqz v3, :cond_1c

    if-eqz v1, :cond_1c

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity$2;->this$0:Lcom/sec/android/app/mobileprint/MPrintProgressActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mTransactionID:I
    invoke-static {v3}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->access$100(Lcom/sec/android/app/mobileprint/MPrintProgressActivity;)I

    move-result v3

    if-ne v3, v1, :cond_39

    .line 66
    :cond_1c
    const-string v3, "mobileprint.event.print_progress"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 67
    const-string v3, "Page"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 68
    .local v0, page:I
    const-string v3, "Value"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 69
    .local v2, value:I
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity$2;->this$0:Lcom/sec/android/app/mobileprint/MPrintProgressActivity;

    #calls: Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->updateProgressDialog(II)V
    invoke-static {v3, v0, v2}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->access$200(Lcom/sec/android/app/mobileprint/MPrintProgressActivity;II)V

    .line 85
    .end local v0           #page:I
    .end local v1           #targetId:I
    .end local v2           #value:I
    :cond_39
    :goto_39
    return-void

    .line 71
    .restart local v1       #targetId:I
    :cond_3a
    const-string v3, "mobileprint.event.print_completed"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 72
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity$2;->this$0:Lcom/sec/android/app/mobileprint/MPrintProgressActivity;

    #calls: Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->dismissProgressDialog()V
    invoke-static {v3}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->access$300(Lcom/sec/android/app/mobileprint/MPrintProgressActivity;)V

    goto :goto_39

    .line 74
    :cond_4c
    const-string v3, "mobileprint.event.print_canceled"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 75
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity$2;->this$0:Lcom/sec/android/app/mobileprint/MPrintProgressActivity;

    #calls: Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->dismissProgressDialog()V
    invoke-static {v3}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->access$300(Lcom/sec/android/app/mobileprint/MPrintProgressActivity;)V

    goto :goto_39

    .line 77
    :cond_5e
    const-string v3, "mobileprint.event.print_error"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 78
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity$2;->this$0:Lcom/sec/android/app/mobileprint/MPrintProgressActivity;

    #calls: Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->dismissProgressDialog()V
    invoke-static {v3}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->access$300(Lcom/sec/android/app/mobileprint/MPrintProgressActivity;)V

    goto :goto_39

    .line 81
    :cond_70
    const-string v3, "MobilePrint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MPrintProgressActivity : BroadcastReceiver - wrong action ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method
