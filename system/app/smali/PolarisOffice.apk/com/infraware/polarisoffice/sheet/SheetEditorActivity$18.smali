.class Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$18;
.super Ljava/lang/Object;
.source "SheetEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onCreateInputValuePopup(I)Landroid/app/AlertDialog;
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$18;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    .line 2826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/16 v5, 0x302

    const/4 v4, 0x0

    .line 2828
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$18;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEtInputValue:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$28(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2829
    .local v1, value:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2830
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1b

    .line 2851
    :goto_1a
    return-void

    .line 2832
    :cond_1b
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2833
    .local v0, nValue:I
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$18;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nPopupType:I
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$26(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)I

    move-result v2

    packed-switch v2, :pswitch_data_60

    goto :goto_1a

    .line 2835
    :pswitch_29
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$18;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v2, v2, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    const/4 v3, 0x5

    iput v3, v2, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    .line 2836
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$18;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v2, v2, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iput v0, v2, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    .line 2837
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$18;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    invoke-virtual {v2, v5, v4, v4}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnEVSheetFuction(III)V

    goto :goto_1a

    .line 2840
    :pswitch_3c
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$18;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v2, v2, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    const/4 v3, 0x7

    iput v3, v2, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wFormat:I

    .line 2841
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$18;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v2, v2, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_sFormatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    iput v0, v2, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->wDecimalPlaces:I

    .line 2842
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$18;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    invoke-virtual {v2, v5, v4, v4}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnEVSheetFuction(III)V

    goto :goto_1a

    .line 2845
    :pswitch_4f
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$18;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    const/16 v3, 0x30e

    invoke-virtual {v2, v3, v0, v4}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnEVSheetFuction(III)V

    goto :goto_1a

    .line 2848
    :pswitch_57
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$18;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    const/16 v3, 0x30f

    invoke-virtual {v2, v3, v0, v4}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->OnEVSheetFuction(III)V

    goto :goto_1a

    .line 2833
    nop

    :pswitch_data_60
    .packed-switch 0x3
        :pswitch_29
        :pswitch_3c
        :pswitch_4f
        :pswitch_57
    .end packed-switch
.end method
