.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$11;
.super Landroid/view/WindowOrientationListener;
.source "ProjectEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ProjectEditActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$11;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    .line 952
    invoke-direct {p0, p2}, Landroid/view/WindowOrientationListener;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private onDirectionChanged(I)V
    .registers 6
    .parameter "orientation"

    .prologue
    const/16 v3, 0x5e

    .line 965
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDirectionChanged and degree round-->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 967
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2a

    .line 969
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$11;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mThumbHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 970
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$11;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->mThumbHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 972
    :cond_2a
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 2
    .parameter "orientation"

    .prologue
    .line 955
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$11;->onDirectionChanged(I)V

    .line 956
    return-void
.end method

.method public onProposedRotationChanged(I)V
    .registers 2
    .parameter "orientation"

    .prologue
    .line 959
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/activity/ProjectEditActivity$11;->onDirectionChanged(I)V

    .line 960
    return-void
.end method
