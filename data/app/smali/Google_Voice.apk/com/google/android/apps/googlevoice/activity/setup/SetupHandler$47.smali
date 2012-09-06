.class Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$47;
.super Ljava/lang/Object;
.source "SetupHandler.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getPhonesClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 3000
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$47;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "i"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 3003
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$47;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getPhonesAdapter()Lcom/google/android/apps/googlevoice/PhonesAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/android/apps/googlevoice/PhonesAdapter;->getItem(I)Lcom/google/android/apps/googlevoice/core/Phone;

    move-result-object v0

    .line 3004
    .local v0, phone:Lcom/google/android/apps/googlevoice/core/Phone;
    if-eqz v0, :cond_42

    .line 3005
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$47;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iput p3, v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->selectedForwardingPhoneIndex:I

    .line 3006
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$47;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Phone;->getNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->forwardingNumber:Ljava/lang/String;

    .line 3007
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$47;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Phone;->getFormattedNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->formattedForwardingNumber:Ljava/lang/String;

    .line 3008
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$47;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v1, v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phonesAdapter:Lcom/google/android/apps/googlevoice/PhonesAdapter;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$47;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v2, v2, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->forwardingNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/PhonesAdapter;->setSelectedPhoneNumber(Ljava/lang/String;)V

    .line 3009
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$47;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v1, v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phonesAdapter:Lcom/google/android/apps/googlevoice/PhonesAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/PhonesAdapter;->notifyDataSetChanged()V

    .line 3010
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$47;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    const/16 v2, 0x44d

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setNextAction(I)V

    .line 3011
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$47;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v1, v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPageActivity:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->setRightButtonEnabled(Z)V

    .line 3018
    :goto_41
    return-void

    .line 3013
    :cond_42
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$47;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    const/4 v2, -0x1

    iput v2, v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->selectedForwardingPhoneIndex:I

    .line 3014
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$47;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v1, v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phonesAdapter:Lcom/google/android/apps/googlevoice/PhonesAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/PhonesAdapter;->setSelectedPhoneNumber(Ljava/lang/String;)V

    .line 3015
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$47;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v1, v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->phonesAdapter:Lcom/google/android/apps/googlevoice/PhonesAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/PhonesAdapter;->notifyDataSetChanged()V

    .line 3016
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$47;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    const/16 v2, 0x44e

    invoke-virtual {v1, v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    goto :goto_41
.end method
