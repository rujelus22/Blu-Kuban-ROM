.class Lcom/infraware/office/baseframe/EvBaseEditorActivity$20;
.super Ljava/lang/Object;
.source "EvBaseEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$20;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    .line 2686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2688
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$20;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeImageDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$5(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2689
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2691
    :cond_f
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$20;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v1, v1, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mbDeleteResizeFile:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2692
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$20;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v1, v1, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2693
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2695
    .end local v0           #file:Ljava/io/File;
    :cond_25
    return-void
.end method
