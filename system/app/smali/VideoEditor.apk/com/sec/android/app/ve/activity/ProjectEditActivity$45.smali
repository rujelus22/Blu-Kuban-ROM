.class Lcom/sec/android/app/ve/activity/ProjectEditActivity$45;
.super Ljava/lang/Object;
.source "ProjectEditActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ProjectEditActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

.field private final synthetic val$activities:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$45;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    iput-object p2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$45;->val$activities:Ljava/util/List;

    .line 2440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2442
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$45;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$45;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->intent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$28(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #setter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->resolvedIntent:Landroid/content/Intent;
    invoke-static {v2, v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$29(Lcom/sec/android/app/ve/activity/ProjectEditActivity;Landroid/content/Intent;)V

    .line 2443
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$45;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/16 v3, -0x6f

    #setter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dialogID:I
    invoke-static {v2, v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$24(Lcom/sec/android/app/ve/activity/ProjectEditActivity;I)V

    .line 2444
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$45;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->removeDialog(I)V

    .line 2445
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$45;->val$activities:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2446
    .local v1, ai:Landroid/content/pm/ActivityInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Inside SHARE_OPTION_DIALOG mShareListener -->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2447
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$45;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->resolvedIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$18(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)Landroid/content/Intent;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2448
    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2449
    .local v0, activityName:Ljava/lang/String;
    const-string v2, "com.android.mms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 2450
    const-string v2, "Messaging app"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2451
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$45;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setResolutionEnumValue(I)V

    .line 2452
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$26(Z)V

    .line 2453
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$45;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectEditActivity;->trySharing:Z
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->access$17(Lcom/sec/android/app/ve/activity/ProjectEditActivity;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 2454
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$45;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showDialog(I)V

    .line 2460
    :goto_7b
    return-void

    .line 2456
    :cond_7c
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$45;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showDialog(I)V

    goto :goto_7b

    .line 2458
    :cond_83
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectEditActivity$45;->this$0:Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showDialog(I)V

    goto :goto_7b
.end method
