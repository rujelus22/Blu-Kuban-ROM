.class Lcom/syncmldstmo/smlCheckRoaming$3;
.super Ljava/lang/Object;
.source "smlCheckRoaming.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syncmldstmo/smlCheckRoaming;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syncmldstmo/smlCheckRoaming;


# direct methods
.method constructor <init>(Lcom/syncmldstmo/smlCheckRoaming;)V
    .registers 2
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/syncmldstmo/smlCheckRoaming$3;->this$0:Lcom/syncmldstmo/smlCheckRoaming;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-static {}, Lcom/syncmldstmo/DSService;->getGetFriendSyncing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 70
    invoke-static {v1}, Lcom/syncmldstmo/DSService;->setGetFriendSyncing(Z)V

    .line 71
    invoke-static {v1, v1}, Lcom/syncmldstmo/DSService;->smlSetPreSync(ZI)V

    .line 74
    :cond_d
    invoke-static {v1}, Lcom/syncmldstmo/cust/smlPhoneStatus;->smlSetRoamingUI(Z)V

    .line 75
    iget-object v0, p0, Lcom/syncmldstmo/smlCheckRoaming$3;->this$0:Lcom/syncmldstmo/smlCheckRoaming;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/smlCheckRoaming;->removeDialog(I)V

    .line 76
    iget-object v0, p0, Lcom/syncmldstmo/smlCheckRoaming$3;->this$0:Lcom/syncmldstmo/smlCheckRoaming;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/syncmldstmo/smlCheckRoaming;->showDialog(I)V

    .line 77
    return-void
.end method
