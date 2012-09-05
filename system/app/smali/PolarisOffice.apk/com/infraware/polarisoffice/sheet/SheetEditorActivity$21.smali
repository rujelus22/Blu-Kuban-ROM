.class Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$21;
.super Ljava/lang/Object;
.source "SheetEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onCreateMsgPopup(I)Landroid/app/AlertDialog;
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$21;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    .line 3298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 3300
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$21;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nPopupType:I
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$26(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 3305
    :goto_9
    return-void

    .line 3302
    :pswitch_a
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$21;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$2(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->ISheetMerge()V

    goto :goto_9

    .line 3300
    :pswitch_data_14
    .packed-switch 0x1f
        :pswitch_a
    .end packed-switch
.end method
