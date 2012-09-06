.class Lcom/google/android/music/activitymanagement/MusicStateController$4;
.super Ljava/lang/Object;
.source "MusicStateController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/activitymanagement/MusicStateController;->saveCurrentTopLevelDisplayMode(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/activitymanagement/MusicStateController;

.field final synthetic val$rootState:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;


# direct methods
.method constructor <init>(Lcom/google/android/music/activitymanagement/MusicStateController;Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 820
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicStateController$4;->this$0:Lcom/google/android/music/activitymanagement/MusicStateController;

    iput-object p2, p0, Lcom/google/android/music/activitymanagement/MusicStateController$4;->val$rootState:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 822
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController$4;->this$0:Lcom/google/android/music/activitymanagement/MusicStateController;

    #getter for: Lcom/google/android/music/activitymanagement/MusicStateController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->access$600(Lcom/google/android/music/activitymanagement/MusicStateController;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController$4;->val$rootState:Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;

    invoke-virtual {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setTopLevelDisplayMode(Lcom/google/android/music/activitymanagement/TopLevelActivity$RootViewState;)V

    .line 823
    return-void
.end method
