.class Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog$CancelListener;
.super Ljava/lang/Object;
.source "PickWidgetDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field private final fCancelOwner:Z

.field final synthetic this$0:Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;


# direct methods
.method public constructor <init>(Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;Z)V
    .registers 3
    .parameter
    .parameter "cancelOwner"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog$CancelListener;->this$0:Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean p2, p0, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog$CancelListener;->fCancelOwner:Z

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog$CancelListener;->fCancelOwner:Z

    if-eqz v0, :cond_18

    .line 52
    iget-object v0, p0, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog$CancelListener;->this$0:Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;

    #getter for: Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;->fOwner:Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;
    invoke-static {v0}, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;->access$0(Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;)Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->setResult(I)V

    .line 53
    iget-object v0, p0, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog$CancelListener;->this$0:Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;

    #getter for: Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;->fOwner:Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;
    invoke-static {v0}, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;->access$0(Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;)Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->finish()V

    .line 57
    :goto_17
    return-void

    .line 55
    :cond_18
    iget-object v0, p0, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog$CancelListener;->this$0:Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;->showDialog(Lcom/boombuler/system/appwidgetpicker/SubItem;)V

    goto :goto_17
.end method
