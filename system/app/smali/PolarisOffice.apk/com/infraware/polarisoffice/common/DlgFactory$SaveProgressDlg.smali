.class public Lcom/infraware/polarisoffice/common/DlgFactory$SaveProgressDlg;
.super Landroid/app/ProgressDialog;
.source "DlgFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/common/DlgFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SaveProgressDlg"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/DlgFactory;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/DlgFactory;Landroid/app/Activity;)V
    .registers 7
    .parameter
    .parameter "activity"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 159
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/DlgFactory$SaveProgressDlg;->this$0:Lcom/infraware/polarisoffice/common/DlgFactory;

    .line 128
    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 130
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/DlgFactory$SaveProgressDlg;->setMessage(Ljava/lang/CharSequence;)V

    .line 133
    const v0, 0x7f08030e

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FV14"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 135
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080292

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 139
    :cond_36
    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/DlgFactory$SaveProgressDlg;->setIndeterminate(Z)V

    .line 140
    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/DlgFactory$SaveProgressDlg;->setCancelable(Z)V

    .line 141
    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/common/DlgFactory$SaveProgressDlg;->setCanceledOnTouchOutside(Z)V

    .line 143
    new-instance v0, Lcom/infraware/polarisoffice/common/DlgFactory$SaveProgressDlg$1;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/common/DlgFactory$SaveProgressDlg$1;-><init>(Lcom/infraware/polarisoffice/common/DlgFactory$SaveProgressDlg;)V

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/DlgFactory$SaveProgressDlg;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 150
    new-instance v0, Lcom/infraware/polarisoffice/common/DlgFactory$SaveProgressDlg$2;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/common/DlgFactory$SaveProgressDlg$2;-><init>(Lcom/infraware/polarisoffice/common/DlgFactory$SaveProgressDlg;)V

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/DlgFactory$SaveProgressDlg;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method
