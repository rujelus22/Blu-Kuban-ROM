.class Lcom/vlingo/client/ui/VProgressDialog$1;
.super Ljava/lang/Object;
.source "VProgressDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/ui/VProgressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/ui/VProgressDialog;


# direct methods
.method constructor <init>(Lcom/vlingo/client/ui/VProgressDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/vlingo/client/ui/VProgressDialog$1;->this$0:Lcom/vlingo/client/ui/VProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vlingo/client/ui/VProgressDialog$1;->this$0:Lcom/vlingo/client/ui/VProgressDialog;

    invoke-virtual {v0}, Lcom/vlingo/client/ui/VProgressDialog;->cancel()V

    .line 44
    return-void
.end method
