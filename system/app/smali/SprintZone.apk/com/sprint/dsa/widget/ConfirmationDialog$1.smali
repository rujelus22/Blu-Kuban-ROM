.class Lcom/sprint/dsa/widget/ConfirmationDialog$1;
.super Ljava/lang/Object;
.source "ConfirmationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/widget/ConfirmationDialog;->open(Landroid/content/Context;Lcom/sprint/dsa/widget/ConfirmationDialog$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/dsa/widget/ConfirmationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$dialog:Lcom/sprint/dsa/widget/ConfirmationDialog;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/widget/ConfirmationDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/widget/ConfirmationDialog$1;->val$dialog:Lcom/sprint/dsa/widget/ConfirmationDialog;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sprint/dsa/widget/ConfirmationDialog$1;->val$dialog:Lcom/sprint/dsa/widget/ConfirmationDialog;

    invoke-virtual {v0}, Lcom/sprint/dsa/widget/ConfirmationDialog;->onOk()V

    .line 58
    return-void
.end method
