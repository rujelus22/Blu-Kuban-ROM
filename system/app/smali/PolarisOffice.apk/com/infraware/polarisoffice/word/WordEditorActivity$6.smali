.class Lcom/infraware/polarisoffice/word/WordEditorActivity$6;
.super Ljava/lang/Object;
.source "WordEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/word/WordEditorActivity;->OnInsertHyperlink()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/word/WordEditorActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/word/WordEditorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity$6;->this$0:Lcom/infraware/polarisoffice/word/WordEditorActivity;

    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 610
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity$6;->this$0:Lcom/infraware/polarisoffice/word/WordEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/word/WordEditorActivity;->mInsertHyperlink:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->access$0(Lcom/infraware/polarisoffice/word/WordEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    const v3, 0x7f0c0008

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, textString:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity$6;->this$0:Lcom/infraware/polarisoffice/word/WordEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/word/WordEditorActivity;->mInsertHyperlink:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->access$0(Lcom/infraware/polarisoffice/word/WordEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    const v3, 0x7f0c000a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 612
    .local v1, urlString:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity$6;->this$0:Lcom/infraware/polarisoffice/word/WordEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/word/WordEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v2}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->access$4(Lcom/infraware/polarisoffice/word/WordEditorActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/infraware/office/evengine/EvInterface;->IHyperlinkEditor(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    return-void
.end method
