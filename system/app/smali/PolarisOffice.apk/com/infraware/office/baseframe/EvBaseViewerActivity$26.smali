.class Lcom/infraware/office/baseframe/EvBaseViewerActivity$26;
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
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$26;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    .line 1953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1958
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$26;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoPageNum:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$7(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1959
    .local v0, nPageNum:I
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$26;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iget-object v1, v1, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v1

    iget v1, v1, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nTotalPages:I

    if-le v0, v1, :cond_1f

    .line 1966
    :goto_1e
    return-void

    .line 1962
    :cond_1f
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$26;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$26;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoPageNum:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$7(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/infraware/office/util/EvUtil;->hideIme(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 1964
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$26;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iget-object v1, v1, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/infraware/office/evengine/EvInterface;->IMovePage(II)V

    .line 1965
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$26;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoPagePopup:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$8(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_1e
.end method
