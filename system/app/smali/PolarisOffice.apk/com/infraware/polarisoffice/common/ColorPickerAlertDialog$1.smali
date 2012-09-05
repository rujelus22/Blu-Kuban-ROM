.class Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog$1;
.super Ljava/lang/Object;
.source "ColorPickerAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog$1;->this$0:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog$1;->this$0:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    #getter for: Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->mListener:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog$OnColorPickerListener;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->access$0(Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;)Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog$OnColorPickerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog$1;->this$0:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    #getter for: Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->mColor:I
    invoke-static {v1}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->access$1(Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog$OnColorPickerListener;->OnClickMoreColors(I)V

    .line 35
    return-void
.end method
