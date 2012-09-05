.class Lcom/sprint/w/installer/delivery/DeliveryHub$1;
.super Ljava/lang/Object;
.source "DeliveryHub.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/delivery/DeliveryHub;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/delivery/DeliveryHub;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$1;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 91
    if-eqz p2, :cond_c

    .line 92
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$1;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mPwd:Landroid/widget/EditText;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 96
    :goto_b
    return-void

    .line 94
    :cond_c
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/DeliveryHub$1;->this$0:Lcom/sprint/w/installer/delivery/DeliveryHub;

    iget-object v0, v0, Lcom/sprint/w/installer/delivery/DeliveryHub;->mPwd:Landroid/widget/EditText;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_b
.end method
