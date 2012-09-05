.class Lcom/infraware/polarisoffice/common/DlgFactory$SaveProgressDlg$1;
.super Ljava/lang/Object;
.source "DlgFactory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/common/DlgFactory$SaveProgressDlg;-><init>(Lcom/infraware/polarisoffice/common/DlgFactory;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/infraware/polarisoffice/common/DlgFactory$SaveProgressDlg;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/DlgFactory$SaveProgressDlg;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/DlgFactory$SaveProgressDlg$1;->this$1:Lcom/infraware/polarisoffice/common/DlgFactory$SaveProgressDlg;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 146
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->ICancel()V

    .line 147
    return-void
.end method
