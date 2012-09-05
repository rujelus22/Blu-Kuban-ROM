.class Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$14;
.super Ljava/lang/Object;
.source "SheetEditorActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$14;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    .line 2670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 2673
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$14;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/infraware/common/util/Utils;->playKeyClickSoundEffect(Landroid/content/Context;)V

    .line 2674
    return-void
.end method
