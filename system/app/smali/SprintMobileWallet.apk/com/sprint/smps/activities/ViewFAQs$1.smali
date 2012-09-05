.class Lcom/sprint/smps/activities/ViewFAQs$1;
.super Ljava/lang/Object;
.source "ViewFAQs.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/smps/activities/ViewFAQs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/ViewFAQs;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/ViewFAQs;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/ViewFAQs$1;->this$0:Lcom/sprint/smps/activities/ViewFAQs;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 43
    sget-object v0, Lcom/sprint/smps/activities/ViewFAQs;->response:Lcom/sprint/smps/service/ClientResponse;

    if-eqz v0, :cond_2b

    .line 45
    invoke-static {}, Lcom/sprint/smps/activities/ViewFAQs;->access$0()Lcom/sprint/smps/activities/ViewFAQs;

    move-result-object v0

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/ViewFAQs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewFAQs$1;->this$0:Lcom/sprint/smps/activities/ViewFAQs;

    new-instance v1, Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter;

    iget-object v2, p0, Lcom/sprint/smps/activities/ViewFAQs$1;->this$0:Lcom/sprint/smps/activities/ViewFAQs;

    invoke-static {}, Lcom/sprint/smps/activities/ViewFAQs;->access$0()Lcom/sprint/smps/activities/ViewFAQs;

    move-result-object v3

    sget-object v4, Lcom/sprint/smps/activities/ViewFAQs;->response:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v4}, Lcom/sprint/smps/service/ClientResponse;->getFAQQuestions()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter;-><init>(Lcom/sprint/smps/activities/ViewFAQs;Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/ViewFAQs;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 49
    :cond_2b
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewFAQs$1;->this$0:Lcom/sprint/smps/activities/ViewFAQs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/ViewFAQs;->removeDialog(I)V

    .line 50
    return-void
.end method
