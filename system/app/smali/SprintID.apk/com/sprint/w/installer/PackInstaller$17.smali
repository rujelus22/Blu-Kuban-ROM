.class Lcom/sprint/w/installer/PackInstaller$17;
.super Ljava/lang/Object;
.source "PackInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/PackInstaller;->configureHomeScreenAndFinish(Ljava/util/jar/JarFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/PackInstaller;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackInstaller;)V
    .registers 2
    .parameter

    .prologue
    .line 1664
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller$17;->this$0:Lcom/sprint/w/installer/PackInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/16 v2, 0x8

    .line 1666
    invoke-static {}, Lcom/sprint/w/installer/PackInstaller;->access$000()Lcom/sprint/id/logger/Logger;

    move-result-object v0

    const-string v1, "Install completed!"

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 1668
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$17;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mProgress:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1669
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$17;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mAllDoneButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1670
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$17;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1671
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$17;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mCenter:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller$17;->this$0:Lcom/sprint/w/installer/PackInstaller;

    const v2, 0x7f060021

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/PackInstaller;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1672
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$17;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller$17;->this$0:Lcom/sprint/w/installer/PackInstaller;

    const v2, 0x7f060022

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/PackInstaller;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1673
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$17;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller$17;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v1, v1, Lcom/sprint/w/installer/PackInstaller;->mClickAllDoneButton:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1674
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$17;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-boolean v0, v0, Lcom/sprint/w/installer/PackInstaller;->mFromPsi:Z

    if-eqz v0, :cond_65

    .line 1675
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$17;->this$0:Lcom/sprint/w/installer/PackInstaller;

    invoke-virtual {v0}, Lcom/sprint/w/installer/PackInstaller;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller$17;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v1, v1, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v1}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sprint/w/installer/DownloadService;->clearReadyToInstallDownload(Landroid/content/Context;Ljava/lang/String;)V

    .line 1677
    :cond_65
    return-void
.end method
