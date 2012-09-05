.class final Lcom/sprint/w/installer/DialogFactory$3;
.super Ljava/lang/Object;
.source "DialogFactory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/DialogFactory;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$d:Landroid/app/AlertDialog;

.field final synthetic val$t:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;Landroid/widget/TextView;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sprint/w/installer/DialogFactory$3;->val$d:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/sprint/w/installer/DialogFactory$3;->val$t:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/sprint/w/installer/DialogFactory$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/sprint/w/installer/DialogFactory$3;->val$d:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 79
    .local v0, b:Landroid/widget/Button;
    new-instance v1, Lcom/sprint/w/installer/DialogFactory$3$1;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/DialogFactory$3$1;-><init>(Lcom/sprint/w/installer/DialogFactory$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void
.end method
