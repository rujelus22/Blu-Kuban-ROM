.class Lcom/samsung/dmp/layout/DMPAudioActivity$6;
.super Ljava/lang/Object;
.source "DMPAudioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmp/layout/DMPAudioActivity;->initializeUIForPortrait()V
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
    .line 800
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$6;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 802
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$6;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlViewDMP;
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$300(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/app/dlna/view/MediaControlViewDMP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->toggleShuffle()V

    .line 803
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity$6;->this$0:Lcom/samsung/dmp/layout/DMPAudioActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPAudioActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlViewDMP;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->access$300(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/app/dlna/view/MediaControlViewDMP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->isShuffled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->setShuffle(Z)V

    .line 804
    return-void
.end method
