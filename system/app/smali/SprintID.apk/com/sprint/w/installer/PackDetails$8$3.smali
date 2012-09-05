.class Lcom/sprint/w/installer/PackDetails$8$3;
.super Ljava/lang/Object;
.source "PackDetails.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/PackDetails$8;->downloadCompleted(Lcom/sprint/w/installer/psi/ServicePack;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/w/installer/PackDetails$8;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackDetails$8;)V
    .registers 2
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/sprint/w/installer/PackDetails$8$3;->this$1:Lcom/sprint/w/installer/PackDetails$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 544
    iget-object v0, p0, Lcom/sprint/w/installer/PackDetails$8$3;->this$1:Lcom/sprint/w/installer/PackDetails$8;

    iget-object v0, v0, Lcom/sprint/w/installer/PackDetails$8;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/PackDetails;->mManageButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 545
    iget-object v0, p0, Lcom/sprint/w/installer/PackDetails$8$3;->this$1:Lcom/sprint/w/installer/PackDetails$8;

    iget-object v0, v0, Lcom/sprint/w/installer/PackDetails$8;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/PackDetails;->mRemoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 546
    iget-object v0, p0, Lcom/sprint/w/installer/PackDetails$8$3;->this$1:Lcom/sprint/w/installer/PackDetails$8;

    iget-object v0, v0, Lcom/sprint/w/installer/PackDetails$8;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/PackDetails;->mReinstallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 547
    iget-object v0, p0, Lcom/sprint/w/installer/PackDetails$8$3;->this$1:Lcom/sprint/w/installer/PackDetails$8;

    iget-object v0, v0, Lcom/sprint/w/installer/PackDetails$8;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/PackDetails;->mReinstallButton:Landroid/widget/Button;

    const v1, 0x7f0600a9

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 548
    iget-object v0, p0, Lcom/sprint/w/installer/PackDetails$8$3;->this$1:Lcom/sprint/w/installer/PackDetails$8;

    iget-object v0, v0, Lcom/sprint/w/installer/PackDetails$8;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/PackDetails;->mReinstallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sprint/w/installer/PackDetails$8$3;->this$1:Lcom/sprint/w/installer/PackDetails$8;

    iget-object v1, v1, Lcom/sprint/w/installer/PackDetails$8;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-object v1, v1, Lcom/sprint/w/installer/PackDetails;->mCompleteInstall:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 549
    return-void
.end method
