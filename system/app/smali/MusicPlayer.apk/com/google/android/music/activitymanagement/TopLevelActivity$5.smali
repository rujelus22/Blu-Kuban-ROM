.class Lcom/google/android/music/activitymanagement/TopLevelActivity$5;
.super Ljava/lang/Object;
.source "TopLevelActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/activitymanagement/TopLevelActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 939
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$5;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 942
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$5;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    #getter for: Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;
    invoke-static {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$200(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->isInManageMusicMode()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 943
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$5;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    #getter for: Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;
    invoke-static {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$200(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    iget-object v0, v1, Lcom/google/android/music/activitymanagement/MusicStateController;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 945
    .local v0, manager:Lcom/google/android/music/OfflineMusicManager;
    if-eqz v0, :cond_19

    .line 946
    invoke-virtual {v0}, Lcom/google/android/music/OfflineMusicManager;->commitChanges()V

    .line 949
    .end local v0           #manager:Lcom/google/android/music/OfflineMusicManager;
    :cond_19
    return-void
.end method
