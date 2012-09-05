.class Lcom/sprint/w/installer/PackInstaller$15;
.super Ljava/lang/Object;
.source "PackInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/PackInstaller;->disableCancelButton()V
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
    .line 1577
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller$15;->this$0:Lcom/sprint/w/installer/PackInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$15;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mCancelButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1581
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$15;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v1, v0, Lcom/sprint/w/installer/PackInstaller;->mCancelButton:Landroid/widget/Button;

    monitor-enter v1

    .line 1582
    :try_start_d
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$15;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1583
    monitor-exit v1

    .line 1584
    return-void

    .line 1583
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_16

    throw v0
.end method
