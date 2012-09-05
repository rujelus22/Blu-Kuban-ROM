.class Lcom/google/android/music/activitymanagement/TopLevelActivity$5;
.super Ljava/lang/Object;
.source "TopLevelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/activitymanagement/TopLevelActivity;->setUIVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 614
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$5;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    iput-boolean p2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$5;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 617
    :try_start_0
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    iget-boolean v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$5;->val$visible:Z

    invoke-interface {v1, v2}, Lcom/google/android/music/IMusicPlaybackService;->setUIVisible(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 621
    :goto_7
    return-void

    .line 618
    :catch_8
    move-exception v0

    .line 619
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "TopLevelActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method
