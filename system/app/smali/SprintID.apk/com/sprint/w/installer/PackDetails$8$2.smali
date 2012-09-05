.class Lcom/sprint/w/installer/PackDetails$8$2;
.super Ljava/lang/Object;
.source "PackDetails.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/PackDetails$8;->downloadFailed()V
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
    .line 529
    iput-object p1, p0, Lcom/sprint/w/installer/PackDetails$8$2;->this$1:Lcom/sprint/w/installer/PackDetails$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 531
    iget-object v0, p0, Lcom/sprint/w/installer/PackDetails$8$2;->this$1:Lcom/sprint/w/installer/PackDetails$8;

    iget-object v0, v0, Lcom/sprint/w/installer/PackDetails$8;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/PackDetails;->mReinstallButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 532
    iget-object v0, p0, Lcom/sprint/w/installer/PackDetails$8$2;->this$1:Lcom/sprint/w/installer/PackDetails$8;

    iget-object v0, v0, Lcom/sprint/w/installer/PackDetails$8;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/PackDetails;->mReinstallButton:Landroid/widget/Button;

    const v1, 0x7f060035

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 533
    iget-object v0, p0, Lcom/sprint/w/installer/PackDetails$8$2;->this$1:Lcom/sprint/w/installer/PackDetails$8;

    iget-object v0, v0, Lcom/sprint/w/installer/PackDetails$8;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/PackDetails;->mReinstallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sprint/w/installer/PackDetails$8$2;->this$1:Lcom/sprint/w/installer/PackDetails$8;

    iget-object v1, v1, Lcom/sprint/w/installer/PackDetails$8;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-object v1, v1, Lcom/sprint/w/installer/PackDetails;->mReinstall:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    return-void
.end method
