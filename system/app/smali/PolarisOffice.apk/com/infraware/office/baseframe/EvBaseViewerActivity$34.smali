.class Lcom/infraware/office/baseframe/EvBaseViewerActivity$34;
.super Ljava/lang/Object;
.source "EvBaseViewerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$34;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    .line 2116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2118
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$34;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iget-object v6, v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->messageHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$34;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const/16 v1, 0xc

    move-object v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->fillMsg(ILjava/lang/String;ILjava/lang/String;I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2119
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2120
    return-void
.end method
