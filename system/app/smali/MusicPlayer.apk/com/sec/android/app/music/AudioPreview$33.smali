.class Lcom/sec/android/app/music/AudioPreview$33;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/AudioPreview;)V
    .registers 2
    .parameter

    .prologue
    .line 4744
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$33;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 4748
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$33;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mDrmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$33;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mDrmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4752
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$33;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mDrmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4753
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$33;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/music/AudioPreview;->bDrmPopupShown:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/music/AudioPreview;->access$4902(Lcom/sec/android/app/music/AudioPreview;Z)Z

    .line 4755
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$33;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/music/AudioPreview;->bPlay:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/music/AudioPreview;->access$5002(Lcom/sec/android/app/music/AudioPreview;Z)Z

    .line 4756
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$33;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$33;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->bPlay:Z
    invoke-static {v1}, Lcom/sec/android/app/music/AudioPreview;->access$5000(Lcom/sec/android/app/music/AudioPreview;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/AudioPreview;->doPrepare(Z)V

    .line 4757
    return-void
.end method
