.class final Lcom/infraware/polarisoffice/common/DlgFactory$1MyRunnable;
.super Ljava/lang/Object;
.source "DlgFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/common/DlgFactory;->AlertConfirm(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyRunnable"
.end annotation


# instance fields
.field mContent:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/infraware/polarisoffice/common/DlgFactory;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/DlgFactory;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "context"
    .parameter "content"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/DlgFactory$1MyRunnable;->this$0:Lcom/infraware/polarisoffice/common/DlgFactory;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p2, p0, Lcom/infraware/polarisoffice/common/DlgFactory$1MyRunnable;->mContext:Landroid/content/Context;

    .line 63
    iput-object p3, p0, Lcom/infraware/polarisoffice/common/DlgFactory$1MyRunnable;->mContent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 68
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/DlgFactory$1MyRunnable;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/DlgFactory$1MyRunnable;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 70
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/DlgFactory$1MyRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 71
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 72
    .local v1, dlg:Landroid/app/AlertDialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 73
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 74
    return-void
.end method
