.class Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter$1$1$1;
.super Ljava/lang/Object;
.source "ViewPaymentOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter$1$1;

.field private final synthetic val$item:I

.field private final synthetic val$row:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter$1$1;ILandroid/view/View;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter$1$1$1;->this$3:Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter$1$1;

    iput p2, p0, Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter$1$1$1;->val$item:I

    iput-object p3, p0, Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter$1$1$1;->val$row:Landroid/view/View;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 97
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 98
    iget v1, p0, Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter$1$1$1;->val$item:I

    sput v1, Lcom/sprint/smps/activities/ViewPaymentOptions;->listPos:I

    .line 99
    invoke-static {}, Lcom/sprint/smps/activities/ViewPaymentOptions;->access$0()Lcom/sprint/smps/activities/ViewPaymentOptions;

    move-result-object v1

    iget v2, p0, Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter$1$1$1;->val$item:I

    const-class v3, Lcom/sprint/smps/activities/PaymentAccountDetail;

    invoke-static {v1, v2, v3}, Lcom/sprint/smps/activities/ActivityHelper;->getIntent(Landroid/app/Activity;ILjava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 100
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/sprint/smps/activities/ViewPaymentOptions;->access$0()Lcom/sprint/smps/activities/ViewPaymentOptions;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sprint/smps/activities/ViewPaymentOptions;->startActivity(Landroid/content/Intent;)V

    .line 102
    :cond_1c
    iget-object v1, p0, Lcom/sprint/smps/activities/ViewPaymentOptions$CardListAdapter$1$1$1;->val$row:Landroid/view/View;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 103
    return-void
.end method
