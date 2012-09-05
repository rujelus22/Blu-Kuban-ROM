.class public Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;
.super Landroid/app/AlertDialog;
.source "QuickViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/quickview/QuickViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAlertDialog"
.end annotation


# instance fields
.field private linear:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/arcsoft/quickview/QuickViewActivity;


# direct methods
.method public constructor <init>(Lcom/arcsoft/quickview/QuickViewActivity;Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 7
    .parameter
    .parameter "context"
    .parameter "linear"

    .prologue
    .line 1483
    iput-object p1, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    .line 1484
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 1485
    iput-object p3, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->linear:Landroid/widget/LinearLayout;

    .line 1486
    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->setTitle(I)V

    .line 1487
    invoke-virtual {p0, p3}, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->setView(Landroid/view/View;)V

    .line 1488
    const/4 v0, -0x1

    const v1, 0x7f040006

    invoke-virtual {p1, v1}, Lcom/arcsoft/quickview/QuickViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$1;

    invoke-direct {v2, p0, p1}, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$1;-><init>(Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;Lcom/arcsoft/quickview/QuickViewActivity;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1497
    const/4 v0, -0x2

    const v1, 0x7f040007

    invoke-virtual {p1, v1}, Lcom/arcsoft/quickview/QuickViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$2;

    invoke-direct {v2, p0, p1}, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$2;-><init>(Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;Lcom/arcsoft/quickview/QuickViewActivity;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1505
    return-void
.end method

.method static synthetic access$2100(Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->linear:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 1509
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 1511
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;

    invoke-direct {v1, p0}, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$3;-><init>(Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1584
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$4;

    invoke-direct {v1, p0}, Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog$4;-><init>(Lcom/arcsoft/quickview/QuickViewActivity$MyAlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1590
    return-void
.end method
