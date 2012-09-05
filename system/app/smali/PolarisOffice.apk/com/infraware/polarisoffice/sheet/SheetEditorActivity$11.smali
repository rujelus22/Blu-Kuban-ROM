.class Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$11;
.super Ljava/lang/Object;
.source "SheetEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$11;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$11;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->showDialog(I)V

    .line 488
    return-void
.end method
