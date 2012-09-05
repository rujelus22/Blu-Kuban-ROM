.class Lcom/sprint/smps/activities/ViewFAQs$2$1;
.super Ljava/lang/Object;
.source "ViewFAQs.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/ViewFAQs$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/smps/activities/ViewFAQs$2;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/ViewFAQs$2;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/ViewFAQs$2$1;->this$1:Lcom/sprint/smps/activities/ViewFAQs$2;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewFAQs$2$1;->this$1:Lcom/sprint/smps/activities/ViewFAQs$2;

    #getter for: Lcom/sprint/smps/activities/ViewFAQs$2;->this$0:Lcom/sprint/smps/activities/ViewFAQs;
    invoke-static {v0}, Lcom/sprint/smps/activities/ViewFAQs$2;->access$0(Lcom/sprint/smps/activities/ViewFAQs$2;)Lcom/sprint/smps/activities/ViewFAQs;

    move-result-object v0

    new-instance v1, Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter;

    iget-object v2, p0, Lcom/sprint/smps/activities/ViewFAQs$2$1;->this$1:Lcom/sprint/smps/activities/ViewFAQs$2;

    #getter for: Lcom/sprint/smps/activities/ViewFAQs$2;->this$0:Lcom/sprint/smps/activities/ViewFAQs;
    invoke-static {v2}, Lcom/sprint/smps/activities/ViewFAQs$2;->access$0(Lcom/sprint/smps/activities/ViewFAQs$2;)Lcom/sprint/smps/activities/ViewFAQs;

    move-result-object v2

    invoke-static {}, Lcom/sprint/smps/activities/ViewFAQs;->access$0()Lcom/sprint/smps/activities/ViewFAQs;

    move-result-object v3

    sget-object v4, Lcom/sprint/smps/activities/ViewFAQs;->response:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v4}, Lcom/sprint/smps/service/ClientResponse;->getFAQQuestions()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter;-><init>(Lcom/sprint/smps/activities/ViewFAQs;Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/ViewFAQs;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    invoke-static {}, Lcom/sprint/smps/activities/ViewFAQs;->access$0()Lcom/sprint/smps/activities/ViewFAQs;

    move-result-object v0

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/ViewFAQs;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    return-void
.end method
