.class Lcom/infraware/polarisoffice/common/FillBordersActivity$1;
.super Ljava/lang/Object;
.source "FillBordersActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/common/FillBordersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/FillBordersActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$1;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 58
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$1;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mColorAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$0(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$1;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mColorAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$0(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 59
    :cond_14
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$1;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBtnBorderStyle:Landroid/widget/Button;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$1(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 63
    :goto_1e
    return-void

    .line 62
    :cond_1f
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$1;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FillBordersActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$2(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$1;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    iget-object v1, v1, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mUpdateTime:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1e
.end method
