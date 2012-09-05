.class Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$16;
.super Ljava/lang/Object;
.source "SheetEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onCreateNumbersPopup(I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$16;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    .line 2725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2727
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$16;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$16;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$2(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IGetFormatInfo()Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v1

    iput-object v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    .line 2728
    return-void
.end method
