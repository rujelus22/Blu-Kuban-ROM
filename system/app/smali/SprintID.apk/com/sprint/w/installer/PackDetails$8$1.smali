.class Lcom/sprint/w/installer/PackDetails$8$1;
.super Ljava/lang/Object;
.source "PackDetails.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/PackDetails$8;->progressChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/w/installer/PackDetails$8;

.field final synthetic val$percentComplete:I


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackDetails$8;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/sprint/w/installer/PackDetails$8$1;->this$1:Lcom/sprint/w/installer/PackDetails$8;

    iput p2, p0, Lcom/sprint/w/installer/PackDetails$8$1;->val$percentComplete:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 519
    iget-object v0, p0, Lcom/sprint/w/installer/PackDetails$8$1;->this$1:Lcom/sprint/w/installer/PackDetails$8;

    iget-object v0, v0, Lcom/sprint/w/installer/PackDetails$8;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/PackDetails;->mReinstallButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 520
    iget-object v0, p0, Lcom/sprint/w/installer/PackDetails$8$1;->this$1:Lcom/sprint/w/installer/PackDetails$8;

    iget-object v0, v0, Lcom/sprint/w/installer/PackDetails$8;->this$0:Lcom/sprint/w/installer/PackDetails;

    iget-object v0, v0, Lcom/sprint/w/installer/PackDetails;->mReinstallButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sprint/w/installer/PackDetails$8$1;->this$1:Lcom/sprint/w/installer/PackDetails$8;

    iget-object v2, v2, Lcom/sprint/w/installer/PackDetails$8;->this$0:Lcom/sprint/w/installer/PackDetails;

    const v3, 0x7f060053

    invoke-virtual {v2, v3}, Lcom/sprint/w/installer/PackDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sprint/w/installer/PackDetails$8$1;->val$percentComplete:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 521
    return-void
.end method
