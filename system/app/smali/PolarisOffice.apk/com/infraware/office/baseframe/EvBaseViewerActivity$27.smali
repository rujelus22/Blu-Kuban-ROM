.class Lcom/infraware/office/baseframe/EvBaseViewerActivity$27;
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
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$27;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    .line 1968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1972
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$27;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$27;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoPageNum:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$7(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/office/util/EvUtil;->hideIme(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 1974
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$27;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mGotoPagePopup:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$8(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1975
    return-void
.end method
