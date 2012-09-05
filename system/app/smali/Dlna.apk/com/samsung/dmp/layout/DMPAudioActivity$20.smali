.class Lcom/samsung/dmp/layout/DMPAudioActivity$20;
.super Ljava/lang/Object;
.source "DMPAudioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmp/layout/DMPAudioActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1618
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$20;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 1620
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$20;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    const/16 v1, 0x5dc

    invoke-virtual {v0, v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->dismissDialog(I)V

    .line 1621
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$20;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #calls: Lcom/samsung/dmp/layout/DMPAudioActivity;->toggleButtonState(Z)V
    invoke-static {v0, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1300(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)V

    .line 1622
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$20;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$900(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x76f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1623
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$20;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->showThePopup:Z
    invoke-static {v0, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$1402(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z

    .line 1624
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$20;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mNotSupported:Z
    invoke-static {v0, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$2502(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z

    .line 1625
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$20;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->handleNext()V

    .line 1626
    return-void
.end method
