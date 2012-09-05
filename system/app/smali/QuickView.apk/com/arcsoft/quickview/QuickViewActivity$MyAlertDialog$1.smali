.class Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$1;
.super Ljava/lang/Object;
.source "QuickViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;-><init>(Lcom/arcsoft/quickview/QuickViewActivity;Landroid/content/Context;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

.field final synthetic val$this$0:Lcom/arcsoft/quickview/QuickViewActivity;


# direct methods
.method constructor <init>(Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;Lcom/arcsoft/quickview/QuickViewActivity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1488
    iput-object p1, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$1;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;

    iput-object p2, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$1;->val$this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1494
    return-void
.end method
