.class Lcom/sprint/w/installer/PackInstaller$9;
.super Ljava/lang/Thread;
.source "PackInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/PackInstaller;->notifyUserCanceled()V
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
    .line 817
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller$9;->this$0:Lcom/sprint/w/installer/PackInstaller;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 819
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$9;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mDeliveryId:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 820
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$9;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller$9;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v1, v1, Lcom/sprint/w/installer/PackInstaller;->mDeliveryId:Ljava/lang/String;

    sget-object v2, Lcom/sprint/w/installer/DeliveryState;->CANCEL_INSTALL:Lcom/sprint/w/installer/DeliveryState;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sprint/w/installer/delivery/DeliveryStatus;->updateRecord(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/w/installer/DeliveryState;Ljava/lang/String;Z)V

    .line 824
    :goto_13
    return-void

    .line 822
    :cond_14
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$9;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v0, v0, Lcom/sprint/w/installer/PackInstaller;->mPack:Lcom/sprint/w/installer/psi/ServicePack;

    sget-object v1, Lcom/sprint/w/installer/PsiCode;->USER_CANCELLED:Lcom/sprint/w/installer/PsiCode;

    invoke-static {v0, v1}, Lcom/sprint/w/installer/psi/PsiContentManager;->notify90X(Lcom/sprint/w/installer/psi/ServicePack;Lcom/sprint/w/installer/PsiCode;)V

    goto :goto_13
.end method
