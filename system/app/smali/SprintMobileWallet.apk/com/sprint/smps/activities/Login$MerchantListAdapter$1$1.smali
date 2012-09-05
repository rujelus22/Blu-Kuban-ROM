.class Lcom/sprint/smps/activities/Login$MerchantListAdapter$1$1;
.super Ljava/lang/Object;
.source "Login.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/Login$MerchantListAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final merchant:Lcom/sprint/smps/pojo/Merchant;

.field final synthetic this$2:Lcom/sprint/smps/activities/Login$MerchantListAdapter$1;

.field private final synthetic val$parentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/Login$MerchantListAdapter$1;Lcom/sprint/smps/pojo/Merchant;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/Login$MerchantListAdapter$1$1;->this$2:Lcom/sprint/smps/activities/Login$MerchantListAdapter$1;

    iput-object p3, p0, Lcom/sprint/smps/activities/Login$MerchantListAdapter$1$1;->val$parentView:Landroid/view/View;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p2, p0, Lcom/sprint/smps/activities/Login$MerchantListAdapter$1$1;->merchant:Lcom/sprint/smps/pojo/Merchant;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sprint/smps/activities/Login$MerchantListAdapter$1$1;->this$2:Lcom/sprint/smps/activities/Login$MerchantListAdapter$1;

    #getter for: Lcom/sprint/smps/activities/Login$MerchantListAdapter$1;->this$1:Lcom/sprint/smps/activities/Login$MerchantListAdapter;
    invoke-static {v0}, Lcom/sprint/smps/activities/Login$MerchantListAdapter$1;->access$0(Lcom/sprint/smps/activities/Login$MerchantListAdapter$1;)Lcom/sprint/smps/activities/Login$MerchantListAdapter;

    move-result-object v0

    #getter for: Lcom/sprint/smps/activities/Login$MerchantListAdapter;->this$0:Lcom/sprint/smps/activities/Login;
    invoke-static {v0}, Lcom/sprint/smps/activities/Login$MerchantListAdapter;->access$0(Lcom/sprint/smps/activities/Login$MerchantListAdapter;)Lcom/sprint/smps/activities/Login;

    move-result-object v0

    new-instance v1, Lcom/sprint/smps/activities/Login$MerchantListAdapter$1$1$1;

    iget-object v2, p0, Lcom/sprint/smps/activities/Login$MerchantListAdapter$1$1;->val$parentView:Landroid/view/View;

    invoke-direct {v1, p0, v2}, Lcom/sprint/smps/activities/Login$MerchantListAdapter$1$1$1;-><init>(Lcom/sprint/smps/activities/Login$MerchantListAdapter$1$1;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/Login;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method
