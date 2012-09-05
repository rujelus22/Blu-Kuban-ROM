.class Lcom/infraware/office/baseframe/EvBaseEditorActivity$13;
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
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$13;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    .line 2509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2511
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$13;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mSplitCellsDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$3(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    const v3, 0x7f0c0040

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2512
    .local v0, colString:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$13;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mSplitCellsDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$3(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    const v3, 0x7f0c0042

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2513
    .local v1, rowString:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$13;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v2, v2, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/infraware/office/evengine/EvInterface;->ICellMergeSeparate(III)V

    .line 2514
    return-void
.end method
