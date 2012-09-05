.class Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$12;
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$12;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$12;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->decideInputState(I)V

    .line 493
    return-void
.end method
