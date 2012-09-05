.class Lcom/sprint/smps/activities/ViewMyTransactions$3$1;
.super Ljava/lang/Object;
.source "ViewMyTransactions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/ViewMyTransactions$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/smps/activities/ViewMyTransactions$3;

.field private final synthetic val$range:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/ViewMyTransactions$3;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/ViewMyTransactions$3$1;->this$1:Lcom/sprint/smps/activities/ViewMyTransactions$3;

    iput-object p2, p0, Lcom/sprint/smps/activities/ViewMyTransactions$3$1;->val$range:Ljava/lang/String;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const v3, 0x7f08001f

    .line 139
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewMyTransactions$3$1;->this$1:Lcom/sprint/smps/activities/ViewMyTransactions$3;

    #getter for: Lcom/sprint/smps/activities/ViewMyTransactions$3;->this$0:Lcom/sprint/smps/activities/ViewMyTransactions;
    invoke-static {v0}, Lcom/sprint/smps/activities/ViewMyTransactions$3;->access$0(Lcom/sprint/smps/activities/ViewMyTransactions$3;)Lcom/sprint/smps/activities/ViewMyTransactions;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/ViewMyTransactions;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewMyTransactions$3$1;->this$1:Lcom/sprint/smps/activities/ViewMyTransactions$3;

    #getter for: Lcom/sprint/smps/activities/ViewMyTransactions$3;->this$0:Lcom/sprint/smps/activities/ViewMyTransactions;
    invoke-static {v0}, Lcom/sprint/smps/activities/ViewMyTransactions$3;->access$0(Lcom/sprint/smps/activities/ViewMyTransactions$3;)Lcom/sprint/smps/activities/ViewMyTransactions;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sprint/smps/activities/ViewMyTransactions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No transactions found for the last "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sprint/smps/activities/ViewMyTransactions$3$1;->val$range:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " days."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewMyTransactions$3$1;->this$1:Lcom/sprint/smps/activities/ViewMyTransactions$3;

    #getter for: Lcom/sprint/smps/activities/ViewMyTransactions$3;->this$0:Lcom/sprint/smps/activities/ViewMyTransactions;
    invoke-static {v0}, Lcom/sprint/smps/activities/ViewMyTransactions$3;->access$0(Lcom/sprint/smps/activities/ViewMyTransactions$3;)Lcom/sprint/smps/activities/ViewMyTransactions;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sprint/smps/activities/ViewMyTransactions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    return-void
.end method
