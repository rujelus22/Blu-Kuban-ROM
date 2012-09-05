.class Lcom/vlingo/client/car/voicedial/AutoDialContact$2;
.super Ljava/lang/Object;
.source "AutoDialContact.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/voicedial/AutoDialContact;->onDelegateAttached()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/voicedial/AutoDialContact;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/voicedial/AutoDialContact;)V
    .registers 2
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact$2;->this$0:Lcom/vlingo/client/car/voicedial/AutoDialContact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact$2;->this$0:Lcom/vlingo/client/car/voicedial/AutoDialContact;

    const/4 v1, 0x1

    #setter for: Lcom/vlingo/client/car/voicedial/AutoDialContact;->cancelled:Z
    invoke-static {v0, v1}, Lcom/vlingo/client/car/voicedial/AutoDialContact;->access$002(Lcom/vlingo/client/car/voicedial/AutoDialContact;Z)Z

    .line 89
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact$2;->this$0:Lcom/vlingo/client/car/voicedial/AutoDialContact;

    #getter for: Lcom/vlingo/client/car/voicedial/AutoDialContact;->autoDialView:Lcom/vlingo/client/contacts/AutoDialCountDownView;
    invoke-static {v0}, Lcom/vlingo/client/car/voicedial/AutoDialContact;->access$100(Lcom/vlingo/client/car/voicedial/AutoDialContact;)Lcom/vlingo/client/contacts/AutoDialCountDownView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/contacts/AutoDialCountDownView;->cancel()V

    .line 90
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact$2;->this$0:Lcom/vlingo/client/car/voicedial/AutoDialContact;

    const/4 v1, 0x0

    #setter for: Lcom/vlingo/client/car/voicedial/AutoDialContact;->overloadingBottomContainer:Z
    invoke-static {v0, v1}, Lcom/vlingo/client/car/voicedial/AutoDialContact;->access$202(Lcom/vlingo/client/car/voicedial/AutoDialContact;Z)Z

    .line 92
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact$2;->this$0:Lcom/vlingo/client/car/voicedial/AutoDialContact;

    #getter for: Lcom/vlingo/client/car/voicedial/AutoDialContact;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;
    invoke-static {v0}, Lcom/vlingo/client/car/voicedial/AutoDialContact;->access$300(Lcom/vlingo/client/car/voicedial/AutoDialContact;)Lcom/vlingo/client/car/CarActivityDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->scrollHome()V

    .line 94
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact$2;->this$0:Lcom/vlingo/client/car/voicedial/AutoDialContact;

    const/4 v1, 0x0

    #setter for: Lcom/vlingo/client/car/voicedial/AutoDialContact;->cancelButton:Landroid/widget/Button;
    invoke-static {v0, v1}, Lcom/vlingo/client/car/voicedial/AutoDialContact;->access$402(Lcom/vlingo/client/car/voicedial/AutoDialContact;Landroid/widget/Button;)Landroid/widget/Button;

    .line 95
    return-void
.end method
