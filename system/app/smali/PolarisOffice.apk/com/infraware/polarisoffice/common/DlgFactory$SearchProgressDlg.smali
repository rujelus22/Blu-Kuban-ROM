.class public Lcom/infraware/polarisoffice/common/DlgFactory$SearchProgressDlg;
.super Landroid/app/ProgressDialog;
.source "DlgFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/common/DlgFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchProgressDlg"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/DlgFactory;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/DlgFactory;Landroid/app/Activity;)V
    .registers 6
    .parameter
    .parameter "activity"

    .prologue
    const/4 v2, 0x1

    .line 122
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/DlgFactory$SearchProgressDlg;->this$0:Lcom/infraware/polarisoffice/common/DlgFactory;

    .line 108
    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 110
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08015e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/DlgFactory$SearchProgressDlg;->setMessage(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/common/DlgFactory$SearchProgressDlg;->setIndeterminate(Z)V

    .line 113
    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/common/DlgFactory$SearchProgressDlg;->setCancelable(Z)V

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/DlgFactory$SearchProgressDlg;->setCanceledOnTouchOutside(Z)V

    .line 116
    new-instance v0, Lcom/infraware/polarisoffice/common/DlgFactory$SearchProgressDlg$1;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/common/DlgFactory$SearchProgressDlg$1;-><init>(Lcom/infraware/polarisoffice/common/DlgFactory$SearchProgressDlg;)V

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/DlgFactory$SearchProgressDlg;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method
