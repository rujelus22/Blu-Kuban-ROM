.class Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$50;
.super Ljava/lang/Object;
.source "SetupHandler.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getAccountsClickListener()Landroid/widget/AdapterView$OnItemClickListener;
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
    .line 3132
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$50;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "itemId"
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
    .line 3135
    .local p1, listView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$50;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$50;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v1, v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->accountsAdapter:Lcom/google/android/apps/googlevoice/AccountsAdapter;

    invoke-virtual {v1, p3}, Lcom/google/android/apps/googlevoice/AccountsAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->account:Ljava/lang/String;

    .line 3136
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$50;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v1, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPageActivity:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$50;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->account:Ljava/lang/String;

    if-eqz v0, :cond_2d

    const/4 v0, 0x1

    :goto_17
    invoke-virtual {v1, v0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->setRightButtonEnabled(Z)V

    .line 3137
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$50;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->accountsAdapter:Lcom/google/android/apps/googlevoice/AccountsAdapter;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$50;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v1, v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/AccountsAdapter;->setSelectedAccount(Ljava/lang/String;)V

    .line 3138
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$50;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->accountsAdapter:Lcom/google/android/apps/googlevoice/AccountsAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/AccountsAdapter;->notifyDataSetChanged()V

    .line 3139
    return-void

    .line 3136
    :cond_2d
    const/4 v0, 0x0

    goto :goto_17
.end method
