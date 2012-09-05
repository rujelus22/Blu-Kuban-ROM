.class Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter$2$1$1;
.super Ljava/lang/Object;
.source "ViewFAQs.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter$2$1;

.field private final synthetic val$parentView:Landroid/view/View;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter$2$1;Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter$2$1$1;->this$3:Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter$2$1;

    iput-object p2, p0, Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter$2$1$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter$2$1$1;->val$parentView:Landroid/view/View;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const v3, 0x7f080020

    .line 205
    iget-object v1, p0, Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter$2$1$1;->val$view:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/sprint/smps/activities/ViewFAQs;->listPos:I

    .line 206
    invoke-static {}, Lcom/sprint/smps/activities/ViewFAQs;->access$0()Lcom/sprint/smps/activities/ViewFAQs;

    move-result-object v1

    const-class v2, Lcom/sprint/smps/activities/FaqDetail;

    invoke-static {v1, v3, v2}, Lcom/sprint/smps/activities/ActivityHelper;->getIntent(Landroid/app/Activity;ILjava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 207
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_30

    invoke-static {}, Lcom/sprint/smps/activities/ViewFAQs;->access$0()Lcom/sprint/smps/activities/ViewFAQs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sprint/smps/activities/ViewFAQs;->startActivity(Landroid/content/Intent;)V

    .line 209
    :cond_30
    iget-object v1, p0, Lcom/sprint/smps/activities/ViewFAQs$FaqListAdapter$2$1$1;->val$parentView:Landroid/view/View;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 210
    return-void
.end method
