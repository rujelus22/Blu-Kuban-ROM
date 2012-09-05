.class Lcom/sprint/w/installer/delivery/SearchActivity$8;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/delivery/SearchActivity;->setupAuthUI()V
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
    .line 802
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/SearchActivity$8;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 805
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity$8;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    const v2, 0x7f0c0018

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/delivery/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 806
    .local v0, et:Landroid/widget/EditText;
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity$8;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #getter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;
    invoke-static {v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$200(Lcom/sprint/w/installer/delivery/SearchActivity;)Lcom/sprint/w/installer/delivery/DeliveryRequest;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsUser:Ljava/lang/String;

    .line 807
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity$8;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    const v2, 0x7f0c0019

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/delivery/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #et:Landroid/widget/EditText;
    check-cast v0, Landroid/widget/EditText;

    .line 808
    .restart local v0       #et:Landroid/widget/EditText;
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity$8;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #getter for: Lcom/sprint/w/installer/delivery/SearchActivity;->mDeliveryReq:Lcom/sprint/w/installer/delivery/DeliveryRequest;
    invoke-static {v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$200(Lcom/sprint/w/installer/delivery/SearchActivity;)Lcom/sprint/w/installer/delivery/DeliveryRequest;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sprint/w/installer/delivery/DeliveryRequest;->authenticationCredentialsPassword:Ljava/lang/String;

    .line 810
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/SearchActivity$8;->this$0:Lcom/sprint/w/installer/delivery/SearchActivity;

    #calls: Lcom/sprint/w/installer/delivery/SearchActivity;->startProcessing()V
    invoke-static {v1}, Lcom/sprint/w/installer/delivery/SearchActivity;->access$1000(Lcom/sprint/w/installer/delivery/SearchActivity;)V

    .line 811
    return-void
.end method
