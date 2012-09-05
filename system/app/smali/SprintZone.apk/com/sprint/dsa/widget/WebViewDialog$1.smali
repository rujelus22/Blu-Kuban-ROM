.class Lcom/sprint/dsa/widget/WebViewDialog$1;
.super Ljava/lang/Object;
.source "WebViewDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/widget/WebViewDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/widget/WebViewDialog;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/widget/WebViewDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/widget/WebViewDialog$1;->this$0:Lcom/sprint/dsa/widget/WebViewDialog;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sprint/dsa/widget/WebViewDialog$1;->this$0:Lcom/sprint/dsa/widget/WebViewDialog;

    #getter for: Lcom/sprint/dsa/widget/WebViewDialog;->okBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/sprint/dsa/widget/WebViewDialog;->access$0(Lcom/sprint/dsa/widget/WebViewDialog;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_d

    .line 28
    iget-object v0, p0, Lcom/sprint/dsa/widget/WebViewDialog$1;->this$0:Lcom/sprint/dsa/widget/WebViewDialog;

    invoke-virtual {v0}, Lcom/sprint/dsa/widget/WebViewDialog;->dismiss()V

    .line 29
    :cond_d
    return-void
.end method
