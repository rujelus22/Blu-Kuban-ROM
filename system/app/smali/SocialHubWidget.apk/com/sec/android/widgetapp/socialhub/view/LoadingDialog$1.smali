.class Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog$1;
.super Ljava/lang/Object;
.source "LoadingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog$1;->this$0:Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog$1;->this$0:Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/socialhub/view/LoadingDialog;->startProgressDialog()V

    .line 69
    return-void
.end method
