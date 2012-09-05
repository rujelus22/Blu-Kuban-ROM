.class Lcom/sprint/w/installer/delivery/SearchActivity$9;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/delivery/SearchActivity;->setupPinUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/delivery/SearchActivity;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/delivery/SearchActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 838
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/SearchActivity$9;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 841
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity$9;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    const v2, 0x7f0c0019

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/delivery/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 842
    .local v0, et:Landroid/widget/EditText;
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity$9;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #getter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;
    invoke-static {v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$200(Lcom/sprint/w/installer/delivery/SearchActivity;)Lcom/sprint/w/installer/delivery/DeliveryRequest;

    move-result-object v1

    iget-object v1, v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsPin:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2b

    .line 843
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity$9;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    const/4 v2, 0x1

    #setter for: Lcom/sprint/w/installer/delivery/SearchActivity;->sPinCleared:Z
    invoke-static {v1, v2}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$1102(Lcom/sprint/w/installer/delivery/SearchActivity;Z)Z

    .line 845
    :cond_2b
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity$9;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #calls: Lcom/sprint/w/installer/delivery/SearchActivity;->startProcessing()V
    invoke-static {v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$1000(Lcom/sprint/w/installer/delivery/SearchActivity;)V

    .line 846
    return-void
.end method
