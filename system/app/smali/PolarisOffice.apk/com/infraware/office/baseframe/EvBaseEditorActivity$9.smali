.class Lcom/infraware/office/baseframe/EvBaseEditorActivity$9;
.super Ljava/lang/Object;
.source "EvBaseEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnRisizeObj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

.field private final synthetic val$height:I

.field private final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$9;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iput p2, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$9;->val$width:I

    iput p3, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$9;->val$height:I

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 16
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 497
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$9;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$0(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    const v2, 0x7f0c0012

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    .line 498
    .local v12, widthString:Ljava/lang/String;
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$9;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$0(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    const v2, 0x7f0c0014

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v11

    .line 499
    .local v11, heightString:Ljava/lang/String;
    iget v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$9;->val$width:I

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_3f

    iget v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$9;->val$height:I

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eq v0, v2, :cond_68

    .line 500
    :cond_3f
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$9;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getDocExtensionType()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_52

    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$9;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getDocExtensionType()I

    move-result v0

    const/16 v2, 0x14

    if-ne v0, v2, :cond_69

    .line 501
    :cond_52
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$9;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v0, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v9, v1

    move v10, v1

    invoke-virtual/range {v0 .. v10}, Lcom/infraware/office/evengine/EvInterface;->ISetObjectAttribute(IIIIIIIIII)V

    .line 505
    :cond_68
    :goto_68
    return-void

    .line 503
    :cond_69
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$9;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    iget-object v0, v0, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/infraware/office/evengine/EvInterface;->ISetObjResize(II)V

    goto :goto_68
.end method
