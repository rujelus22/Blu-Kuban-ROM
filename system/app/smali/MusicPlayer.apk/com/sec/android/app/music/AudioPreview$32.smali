.class Lcom/sec/android/app/music/AudioPreview$32;
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
    .line 4723
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$32;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 4734
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$32;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mMusicDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;
    invoke-static {v1}, Lcom/sec/android/app/music/AudioPreview;->access$4800(Lcom/sec/android/app/music/AudioPreview;)Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$32;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v2, v2, Lcom/sec/android/app/music/AudioPreview;->mCurrentFilePth:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->getUrlInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4735
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$32;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/music/AudioPreview;->launchBrowser(Ljava/lang/String;)Z

    .line 4737
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$32;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->mDrmDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$32;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->mDrmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 4738
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$32;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v1, v1, Lcom/sec/android/app/music/AudioPreview;->mDrmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 4739
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview$32;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/music/AudioPreview;->bDrmPopupShown:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/music/AudioPreview;->access$4902(Lcom/sec/android/app/music/AudioPreview;Z)Z

    .line 4741
    :cond_30
    return-void
.end method
