.class Lcom/google/android/music/activitymanagement/TopLevelActivity$7;
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
    .line 969
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$7;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 972
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$7;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    #getter for: Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;
    invoke-static {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$200(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;->ALBUMS:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->switchRootViewState(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V

    .line 973
    return-void
.end method
