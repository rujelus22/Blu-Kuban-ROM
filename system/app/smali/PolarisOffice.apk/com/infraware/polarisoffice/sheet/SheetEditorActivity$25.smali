.class Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$25;
.super Ljava/lang/Object;
.source "SheetEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onCreateInputListPopup(I)Landroid/app/AlertDialog;
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$25;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    .line 3371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3374
    packed-switch p2, :pswitch_data_e

    .line 3378
    :goto_3
    const/4 v0, 0x0

    return v0

    .line 3376
    :pswitch_5
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$25;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v0, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->removeAllViewsInLayout()V

    goto :goto_3

    .line 3374
    nop

    :pswitch_data_e
    .packed-switch 0x4
        :pswitch_5
    .end packed-switch
.end method
