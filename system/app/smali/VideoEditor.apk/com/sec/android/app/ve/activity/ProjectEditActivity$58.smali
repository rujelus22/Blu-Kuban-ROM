.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$58;
.super Ljava/lang/Object;
.source "ProjectEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ProjectEditActivity;->launchApplyingThemeDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

.field private final synthetic val$aIsBasicTheme:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$58;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iput-boolean p2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$58;->val$aIsBasicTheme:Z

    .line 3122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 3126
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v2

    .line 3125
    if-nez v2, :cond_10

    .line 3128
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 3129
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dismissWaitProgress()V

    .line 3144
    :cond_f
    :goto_f
    return-void

    .line 3134
    :cond_10
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildCount()I

    move-result v2

    .line 3133
    add-int/lit8 v1, v2, -0x1

    .line 3134
    .local v1, i:I
    :goto_1a
    if-gez v1, :cond_27

    .line 3142
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dismissWaitProgress()V

    .line 3143
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$58;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iget-boolean v3, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$58;->val$aIsBasicTheme:Z

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->launchAddMediaAfterTheme(Z)V

    goto :goto_f

    .line 3135
    :cond_27
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3136
    .local v0, child:Landroid/view/View;
    instance-of v2, v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v2, :cond_38

    .line 3138
    check-cast v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->refreshThumbnail()V

    .line 3134
    :cond_38
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a
.end method
