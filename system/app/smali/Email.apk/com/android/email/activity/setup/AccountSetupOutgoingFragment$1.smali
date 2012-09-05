.class Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$1;
.super Ljava/lang/Object;
.source "AccountSetupOutgoingFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
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
    .line 186
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->bFirstSelected:Z
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->access$000(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 187
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->bFirstSelected:Z
    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->access$002(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;Z)Z

    .line 191
    :goto_f
    return-void

    .line 190
    :cond_10
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;

    #calls: Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->updatePortFromSecurityType()V
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->access$100(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)V

    goto :goto_f
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
