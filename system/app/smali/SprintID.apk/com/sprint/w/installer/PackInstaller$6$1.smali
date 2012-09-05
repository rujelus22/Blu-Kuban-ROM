.class Lcom/sprint/w/installer/PackInstaller$6$1;
.super Ljava/lang/Object;
.source "PackInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/PackInstaller$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/w/installer/PackInstaller$6;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackInstaller$6;)V
    .registers 2
    .parameter

    .prologue
    .line 679
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller$6$1;->this$1:Lcom/sprint/w/installer/PackInstaller$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 682
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$6$1;->this$1:Lcom/sprint/w/installer/PackInstaller$6;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$6;->val$sp:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v0}, Lcom/sprint/w/installer/psi/ServicePack;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 683
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$6$1;->this$1:Lcom/sprint/w/installer/PackInstaller$6;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$6;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller$6$1;->this$1:Lcom/sprint/w/installer/PackInstaller$6;

    iget-object v1, v1, Lcom/sprint/w/installer/PackInstaller$6;->val$sp:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v1}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/w/installer/PackInstaller$6$1;->this$1:Lcom/sprint/w/installer/PackInstaller$6;

    iget-object v2, v2, Lcom/sprint/w/installer/PackInstaller$6;->val$sp:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v2}, Lcom/sprint/w/installer/psi/ServicePack;->getTitle()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/sprint/w/installer/PackInstaller;->downloadPsiPack(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/sprint/w/installer/PackInstaller;->access$400(Lcom/sprint/w/installer/PackInstaller;Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :goto_21
    return-void

    .line 685
    :cond_22
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$6$1;->this$1:Lcom/sprint/w/installer/PackInstaller$6;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$6;->this$0:Lcom/sprint/w/installer/PackInstaller;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sprint/w/installer/PackInstaller;->mBlockBackKey:Z

    .line 686
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$6$1;->this$1:Lcom/sprint/w/installer/PackInstaller$6;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$6;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mProgress:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 687
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$6$1;->this$1:Lcom/sprint/w/installer/PackInstaller$6;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller$6;->this$0:Lcom/sprint/w/installer/PackInstaller;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/PackInstaller;->showDialog(I)V

    goto :goto_21
.end method
