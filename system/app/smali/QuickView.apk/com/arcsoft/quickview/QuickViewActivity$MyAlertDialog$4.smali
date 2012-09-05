.class Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$4;
.super Ljava/lang/Object;
.source "QuickViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;


# direct methods
.method constructor <init>(Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 1584
    iput-object p1, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$4;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$4;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    invoke-virtual {v0}, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->dismiss()V

    .line 1588
    return-void
.end method
