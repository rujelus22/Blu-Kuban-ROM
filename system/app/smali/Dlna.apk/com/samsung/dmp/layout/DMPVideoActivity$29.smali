.class Lcom/samsung/dmp/layout/DMPVideoActivity$29;
.super Ljava/lang/Object;
.source "DMPVideoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmp/layout/DMPVideoActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 2238
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$29;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

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

    .line 2240
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$29;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    const/16 v1, 0x5dd

    invoke-virtual {v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->dismissDialog(I)V

    .line 2241
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$29;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->showThePopup:Z
    invoke-static {v0, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$3302(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z

    .line 2242
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$29;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->toggleButtonState(Z)V
    invoke-static {v0, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2100(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)V

    .line 2243
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$29;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #calls: Lcom/samsung/dmp/layout/DMPVideoActivity;->toggleSeekBarState(Z)V
    invoke-static {v0, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$2200(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)V

    .line 2244
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$29;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x76f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2245
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity$29;->this$0:Lcom/samsung/dmp/layout/DMPVideoActivity;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->handleNext()V

    .line 2246
    return-void
.end method
