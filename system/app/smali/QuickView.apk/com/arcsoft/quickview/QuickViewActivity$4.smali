.class Lcom/arcsoft/quickview/QuickViewActivity$4;
.super Ljava/lang/Object;
.source "QuickViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arcsoft/quickview/QuickViewActivity;->onRemoveDesti()V
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
    .line 249
    iput-object p1, p0, Lcom/arcsoft/quickview/QuickViewActivity$4;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$4;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity$4;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v1}, Lcom/arcsoft/quickview/QuickViewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/arcsoft/quickview/QuickViewActivity;->resetSetDefaultDestSharedPrefs(Landroid/content/Context;)V

    .line 254
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$4;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity$4;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v1}, Lcom/arcsoft/quickview/QuickViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 255
    return-void
.end method
