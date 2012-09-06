.class Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$48;
.super Ljava/lang/Object;
.source "SetupHandler.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getCarrierProvisionClickListener()Landroid/widget/AdapterView$OnItemClickListener;
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
    .line 3081
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$48;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
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
    .line 3084
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$48;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$48;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v1, v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionAdapter:Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;

    invoke-virtual {v1, p3}, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;->getItem(I)Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->selectedCarrierProvisionOption:Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;

    .line 3085
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$48;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionAdapter:Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$48;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v1, v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->selectedCarrierProvisionOption:Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;->setSelectedOption(Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter$Choice;)V

    .line 3086
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$48;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->carrierProvisionAdapter:Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;->notifyDataSetChanged()V

    .line 3087
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$48;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPageActivity:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->setRightButtonEnabled(Z)V

    .line 3088
    return-void
.end method
