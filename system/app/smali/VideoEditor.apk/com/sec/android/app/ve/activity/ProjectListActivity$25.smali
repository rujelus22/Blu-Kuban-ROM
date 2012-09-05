.class Lcom/sec/android/app/ve/activity/ProjectListActivity$25;
.super Ljava/lang/Object;
.source "ProjectListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ProjectListActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

.field private final synthetic val$activities:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$25;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    iput-object p2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$25;->val$activities:Ljava/util/List;

    .line 2298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x1

    .line 2300
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$25;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$25;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->intent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$38(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->resolvedIntent:Landroid/content/Intent;
    invoke-static {v2, v3}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$39(Lcom/sec/android/app/ve/activity/ProjectListActivity;Landroid/content/Intent;)V

    .line 2301
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$25;->val$activities:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2302
    .local v1, ai:Landroid/content/pm/ActivityInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Inside PLA SHARE_OPTION_DIALOG mShareListener -->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2303
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$25;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->resolvedIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$15(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Landroid/content/Intent;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2304
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$25;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->removeDialog(I)V

    .line 2305
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$25;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    const/16 v3, -0x6f

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I
    invoke-static {v2, v3}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$34(Lcom/sec/android/app/ve/activity/ProjectListActivity;I)V

    .line 2306
    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2307
    .local v0, activityName:Ljava/lang/String;
    const-string v2, "com.android.mms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 2308
    const-string v2, "Messaging app"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2309
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$25;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setResolutionEnumValue(I)V

    .line 2310
    invoke-static {v6}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$36(Z)V

    .line 2311
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$14()Z

    move-result v2

    if-eqz v2, :cond_79

    .line 2312
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$25;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->showDialog(I)V

    .line 2318
    :goto_78
    return-void

    .line 2314
    :cond_79
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$25;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->showDialog(I)V

    goto :goto_78

    .line 2316
    :cond_80
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$25;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->showDialog(I)V

    goto :goto_78
.end method
