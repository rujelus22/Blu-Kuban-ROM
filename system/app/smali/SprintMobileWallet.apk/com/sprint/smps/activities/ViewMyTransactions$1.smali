.class Lcom/sprint/smps/activities/ViewMyTransactions$1;
.super Ljava/lang/Object;
.source "ViewMyTransactions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/smps/activities/ViewMyTransactions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/ViewMyTransactions;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/ViewMyTransactions;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/ViewMyTransactions$1;->this$0:Lcom/sprint/smps/activities/ViewMyTransactions;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewMyTransactions$1;->this$0:Lcom/sprint/smps/activities/ViewMyTransactions;

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/ViewMyTransactions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewMyTransactions$1;->this$0:Lcom/sprint/smps/activities/ViewMyTransactions;

    new-instance v1, Lcom/sprint/smps/activities/ViewMyTransactions$TransactionListAdapter;

    iget-object v2, p0, Lcom/sprint/smps/activities/ViewMyTransactions$1;->this$0:Lcom/sprint/smps/activities/ViewMyTransactions;

    invoke-static {}, Lcom/sprint/smps/activities/ViewMyTransactions;->access$0()Lcom/sprint/smps/activities/ViewMyTransactions;

    move-result-object v3

    invoke-static {}, Lcom/sprint/smps/activities/ViewMyTransactions;->access$1()Lcom/sprint/smps/service/ClientResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sprint/smps/service/ClientResponse;->getLstTransactions()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sprint/smps/activities/ViewMyTransactions$TransactionListAdapter;-><init>(Lcom/sprint/smps/activities/ViewMyTransactions;Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/ViewMyTransactions;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewMyTransactions$1;->this$0:Lcom/sprint/smps/activities/ViewMyTransactions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/ViewMyTransactions;->removeDialog(I)V

    .line 47
    return-void
.end method
