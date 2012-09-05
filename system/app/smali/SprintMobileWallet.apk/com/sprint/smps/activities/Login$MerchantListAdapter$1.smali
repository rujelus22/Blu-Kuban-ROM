.class Lcom/sprint/smps/activities/Login$MerchantListAdapter$1;
.super Ljava/lang/Object;
.source "Login.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/Login$MerchantListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/smps/activities/Login$MerchantListAdapter;

.field private final synthetic val$parentView:Landroid/view/View;

.field private final synthetic val$transaction:Lcom/sprint/smps/pojo/Merchant;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/Login$MerchantListAdapter;Landroid/view/View;Lcom/sprint/smps/pojo/Merchant;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/Login$MerchantListAdapter$1;->this$1:Lcom/sprint/smps/activities/Login$MerchantListAdapter;

    iput-object p2, p0, Lcom/sprint/smps/activities/Login$MerchantListAdapter$1;->val$parentView:Landroid/view/View;

    iput-object p3, p0, Lcom/sprint/smps/activities/Login$MerchantListAdapter$1;->val$transaction:Lcom/sprint/smps/pojo/Merchant;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sprint/smps/activities/Login$MerchantListAdapter$1;)Lcom/sprint/smps/activities/Login$MerchantListAdapter;
    .registers 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sprint/smps/activities/Login$MerchantListAdapter$1;->this$1:Lcom/sprint/smps/activities/Login$MerchantListAdapter;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sprint/smps/activities/Login$MerchantListAdapter$1;->val$parentView:Landroid/view/View;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 77
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sprint/smps/activities/Login$MerchantListAdapter$1$1;

    iget-object v2, p0, Lcom/sprint/smps/activities/Login$MerchantListAdapter$1;->val$transaction:Lcom/sprint/smps/pojo/Merchant;

    iget-object v3, p0, Lcom/sprint/smps/activities/Login$MerchantListAdapter$1;->val$parentView:Landroid/view/View;

    invoke-direct {v1, p0, v2, v3}, Lcom/sprint/smps/activities/Login$MerchantListAdapter$1$1;-><init>(Lcom/sprint/smps/activities/Login$MerchantListAdapter$1;Lcom/sprint/smps/pojo/Merchant;Landroid/view/View;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 106
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 107
    return-void
.end method
