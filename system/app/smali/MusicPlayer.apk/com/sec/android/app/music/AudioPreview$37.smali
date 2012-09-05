.class Lcom/sec/android/app/music/AudioPreview$37;
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
    .line 4812
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$37;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 4815
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$37;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "mDrmPopupCancelListener called!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4816
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$37;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mDrmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$37;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mDrmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4819
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$37;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v0, v0, Lcom/sec/android/app/music/AudioPreview;->mDrmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4821
    :cond_20
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview$37;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->finishMusicPlayer()V
    invoke-static {v0}, Lcom/sec/android/app/music/AudioPreview;->access$2300(Lcom/sec/android/app/music/AudioPreview;)V

    .line 4822
    return-void
.end method
