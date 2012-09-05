.class Lcom/infraware/polarisoffice/common/DlgFactory$OpenProgressDlg$1;
.super Ljava/lang/Object;
.source "DlgFactory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/common/DlgFactory$OpenProgressDlg;-><init>(Lcom/infraware/polarisoffice/common/DlgFactory;Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/infraware/polarisoffice/common/DlgFactory$OpenProgressDlg;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/DlgFactory$OpenProgressDlg;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/DlgFactory$OpenProgressDlg$1;->this$1:Lcom/infraware/polarisoffice/common/DlgFactory$OpenProgressDlg;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/DlgFactory$OpenProgressDlg$1;->this$1:Lcom/infraware/polarisoffice/common/DlgFactory$OpenProgressDlg;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/DlgFactory$OpenProgressDlg;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 100
    return-void
.end method
