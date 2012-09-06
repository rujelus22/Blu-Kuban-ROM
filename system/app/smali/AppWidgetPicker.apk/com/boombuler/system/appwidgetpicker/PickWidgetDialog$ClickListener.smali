.class Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog$ClickListener;
.super Ljava/lang/Object;
.source "PickWidgetDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;


# direct methods
.method public constructor <init>(Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog$ClickListener;->this$0:Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;

    .line 29
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
    iget-object v1, p0, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog$ClickListener;->this$0:Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;

    iget-object v1, v1, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;->fItemAdapter:Lcom/boombuler/system/appwidgetpicker/ItemAdapter;

    invoke-virtual {v1, p2}, Lcom/boombuler/system/appwidgetpicker/ItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boombuler/system/appwidgetpicker/SubItem;

    .line 35
    .local v0, subItem:Lcom/boombuler/system/appwidgetpicker/SubItem;
    iget-object v1, p0, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog$ClickListener;->this$0:Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;

    iget-object v1, v1, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;->fDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 37
    iget-object v1, p0, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog$ClickListener;->this$0:Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;

    invoke-virtual {v1, v0}, Lcom/boombuler/system/appwidgetpicker/PickWidgetDialog;->showDialog(Lcom/boombuler/system/appwidgetpicker/SubItem;)V

    .line 38
    return-void
.end method
