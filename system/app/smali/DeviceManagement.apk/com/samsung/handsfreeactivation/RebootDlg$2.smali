.class Lcom/samsung/handsfreeactivation/RebootDlg$2;
.super Ljava/lang/Object;
.source "RebootDlg.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/handsfreeactivation/RebootDlg;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/handsfreeactivation/RebootDlg;


# direct methods
.method constructor <init>(Lcom/samsung/handsfreeactivation/RebootDlg;)V
    .registers 2
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/samsung/handsfreeactivation/RebootDlg$2;->this$0:Lcom/samsung/handsfreeactivation/RebootDlg;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 38
    const-string v0, "RebootDlg"

    const-string v1, "rebootAlert onDismiss..... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/RebootDlg$2;->this$0:Lcom/samsung/handsfreeactivation/RebootDlg;

    #getter for: Lcom/samsung/handsfreeactivation/RebootDlg;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/samsung/handsfreeactivation/RebootDlg;->access$000(Lcom/samsung/handsfreeactivation/RebootDlg;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 41
    iget-object v0, p0, Lcom/samsung/handsfreeactivation/RebootDlg$2;->this$0:Lcom/samsung/handsfreeactivation/RebootDlg;

    #getter for: Lcom/samsung/handsfreeactivation/RebootDlg;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v0}, Lcom/samsung/handsfreeactivation/RebootDlg;->access$100(Lcom/samsung/handsfreeactivation/RebootDlg;)Lcom/samsung/client/DMApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/client/DMApp;->rebootDevice()V

    .line 42
    return-void
.end method
