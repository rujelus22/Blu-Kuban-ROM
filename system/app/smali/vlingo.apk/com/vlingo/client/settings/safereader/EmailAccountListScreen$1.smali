.class Lcom/vlingo/client/settings/safereader/EmailAccountListScreen$1;
.super Ljava/lang/Object;
.source "EmailAccountListScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;


# direct methods
.method constructor <init>(Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen$1;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "id"
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
    .line 53
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen$1;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;

    const-class v2, Lcom/vlingo/client/settings/safereader/EmailAccountEditScreen;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "account_id"

    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen$1;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;

    iget-object v1, v1, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;->m_emailAccounts:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/safereader/email/EmailAccount;

    iget v1, v1, Lcom/vlingo/client/safereader/email/EmailAccount;->id:I

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    iget-object v1, p0, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen$1;->this$0:Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;

    invoke-virtual {v1, v0}, Lcom/vlingo/client/settings/safereader/EmailAccountListScreen;->startActivity(Landroid/content/Intent;)V

    .line 56
    return-void
.end method
