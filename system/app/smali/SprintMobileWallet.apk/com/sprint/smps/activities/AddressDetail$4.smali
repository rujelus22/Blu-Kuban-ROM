.class Lcom/sprint/smps/activities/AddressDetail$4;
.super Ljava/lang/Object;
.source "AddressDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/AddressDetail;->showOkCancelAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/AddressDetail;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/AddressDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/AddressDetail$4;->this$0:Lcom/sprint/smps/activities/AddressDetail;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 174
    invoke-static {}, Lcom/sprint/smps/activities/AddressDetail;->access$0()Lcom/sprint/smps/activities/AddressDetail;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/AddressDetail;->showDialog(I)V

    .line 175
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sprint/smps/activities/AddressDetail$4;->this$0:Lcom/sprint/smps/activities/AddressDetail;

    #getter for: Lcom/sprint/smps/activities/AddressDetail;->deleteAddress:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sprint/smps/activities/AddressDetail;->access$4(Lcom/sprint/smps/activities/AddressDetail;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 176
    return-void
.end method
