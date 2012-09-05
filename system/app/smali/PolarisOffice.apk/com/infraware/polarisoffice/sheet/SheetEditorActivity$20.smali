.class Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$20;
.super Ljava/lang/Object;
.source "SheetEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onCreateListPopup(I)Landroid/app/AlertDialog;
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$20;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    .line 3016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 3019
    sparse-switch p2, :sswitch_data_a

    .line 3024
    :goto_4
    return v1

    .line 3022
    :sswitch_5
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$20;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iput v1, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nDialogType:I

    goto :goto_4

    .line 3019
    :sswitch_data_a
    .sparse-switch
        0x4 -> :sswitch_5
        0x54 -> :sswitch_5
    .end sparse-switch
.end method
