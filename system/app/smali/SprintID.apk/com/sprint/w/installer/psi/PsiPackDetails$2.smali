.class Lcom/sprint/w/installer/psi/PsiPackDetails$2;
.super Ljava/lang/Object;
.source "PsiPackDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/psi/PsiPackDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/psi/PsiPackDetails;)V
    .registers 2
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$2;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 273
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 275
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$2;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/psi/PsiPackDetails;->showDialog(I)V

    .line 284
    :goto_13
    return-void

    .line 278
    :cond_14
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$2;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$2;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    iget-object v1, v1, Lcom/sprint/w/installer/psi/PsiPackDetails;->mServicePack:Lcom/sprint/w/installer/psi/ServicePack;

    invoke-virtual {v1}, Lcom/sprint/w/installer/psi/ServicePack;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sprint/w/installer/util/Util;->isPsiPackInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 280
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$2;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/psi/PsiPackDetails;->showDialog(I)V

    goto :goto_13

    .line 283
    :cond_2c
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackDetails$2;->this$0:Lcom/sprint/w/installer/psi/PsiPackDetails;

    #calls: Lcom/sprint/w/installer/psi/PsiPackDetails;->installPack()V
    invoke-static {v0}, Lcom/sprint/w/installer/psi/PsiPackDetails;->access$300(Lcom/sprint/w/installer/psi/PsiPackDetails;)V

    goto :goto_13
.end method
