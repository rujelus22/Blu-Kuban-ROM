.class Lcom/google/android/music/activitymanagement/MusicStateController$1;
.super Ljava/lang/Object;
.source "MusicStateController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/activitymanagement/MusicStateController;->initialize(Landroid/content/Intent;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/activitymanagement/MusicStateController;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/music/activitymanagement/MusicStateController;Landroid/content/Intent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicStateController$1;->this$0:Lcom/google/android/music/activitymanagement/MusicStateController;

    iput-object p2, p0, Lcom/google/android/music/activitymanagement/MusicStateController$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateController$1;->this$0:Lcom/google/android/music/activitymanagement/MusicStateController;

    #getter for: Lcom/google/android/music/activitymanagement/MusicStateController;->mTopLevelActivity:Lcom/google/android/music/activitymanagement/TopLevelActivity;
    invoke-static {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->access$500(Lcom/google/android/music/activitymanagement/MusicStateController;)Lcom/google/android/music/activitymanagement/TopLevelActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateController$1;->this$0:Lcom/google/android/music/activitymanagement/MusicStateController;

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateController$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/google/android/music/QueryBrowserActivity;->handleSearchResult(Landroid/content/Context;Lcom/google/android/music/activitymanagement/MusicStateController;Landroid/content/Intent;)Z

    .line 379
    return-void
.end method
