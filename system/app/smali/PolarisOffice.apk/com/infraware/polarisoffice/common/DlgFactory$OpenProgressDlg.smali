.class public Lcom/infraware/polarisoffice/common/DlgFactory$OpenProgressDlg;
.super Landroid/app/ProgressDialog;
.source "DlgFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/common/DlgFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenProgressDlg"
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/infraware/polarisoffice/common/DlgFactory;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/DlgFactory;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter "activity"
    .parameter "title"

    .prologue
    const/4 v2, 0x1

    .line 102
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/DlgFactory$OpenProgressDlg;->this$0:Lcom/infraware/polarisoffice/common/DlgFactory;

    .line 85
    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 87
    iput-object p2, p0, Lcom/infraware/polarisoffice/common/DlgFactory$OpenProgressDlg;->mActivity:Landroid/app/Activity;

    .line 89
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08015d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/DlgFactory$OpenProgressDlg;->setMessage(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {p0, p3}, Lcom/infraware/polarisoffice/common/DlgFactory$OpenProgressDlg;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/common/DlgFactory$OpenProgressDlg;->setIndeterminate(Z)V

    .line 93
    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/common/DlgFactory$OpenProgressDlg;->setCancelable(Z)V

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/DlgFactory$OpenProgressDlg;->setCanceledOnTouchOutside(Z)V

    .line 96
    new-instance v0, Lcom/infraware/polarisoffice/common/DlgFactory$OpenProgressDlg$1;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/common/DlgFactory$OpenProgressDlg$1;-><init>(Lcom/infraware/polarisoffice/common/DlgFactory$OpenProgressDlg;)V

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/DlgFactory$OpenProgressDlg;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method
