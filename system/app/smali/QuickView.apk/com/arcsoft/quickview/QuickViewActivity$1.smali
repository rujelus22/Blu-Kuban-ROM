.class Lcom/arcsoft/quickview/QuickViewActivity$1;
.super Ljava/lang/Object;
.source "QuickViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arcsoft/quickview/QuickViewActivity;->onDefaultDesti()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/quickview/QuickViewActivity;


# direct methods
.method constructor <init>(Lcom/arcsoft/quickview/QuickViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/arcsoft/quickview/QuickViewActivity$1;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 204
    if-nez p2, :cond_8

    .line 206
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity$1;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v1}, Lcom/arcsoft/quickview/QuickViewActivity;->onRemoveDesti()V

    .line 219
    :goto_7
    return-void

    .line 212
    :cond_8
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity$1;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v1}, Lcom/arcsoft/quickview/QuickViewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/arcsoft/quickview/SetDefaultDestinationListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "title"

    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity$1;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v2}, Lcom/arcsoft/quickview/QuickViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v1, "isReplace"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 216
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity$1;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v1, v0}, Lcom/arcsoft/quickview/QuickViewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_7
.end method
