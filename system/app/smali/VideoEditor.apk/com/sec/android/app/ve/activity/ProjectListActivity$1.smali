.class Lcom/sec/android/app/ve/activity/ProjectListActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ProjectListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/activity/ProjectListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$1;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    .line 941
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 948
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 949
    .local v2, lAction:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "This is inside PLA onReceive and action is -->"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 950
    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 953
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$1;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 954
    .local v0, _intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$1;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->finish()V

    .line 955
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$1;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->activityInForeground:Z
    invoke-static {v4}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$0(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 956
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$1;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->startActivity(Landroid/content/Intent;)V

    .line 960
    .end local v0           #_intent:Landroid/content/Intent;
    :cond_36
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    .line 961
    const-string v4, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    .line 962
    const-string v4, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b5

    .line 965
    :cond_4e
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f

    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$1;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->sdcardAsMassStorage:Z
    invoke-static {v4}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$1(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 1000
    :cond_5e
    :goto_5e
    return-void

    .line 970
    :cond_5f
    const-string v4, "This is inside Media Removed/Ejected started PLA onReceive method"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 973
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$1;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mBroadCastEventsCallbacks:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$2(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_89

    .line 975
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$1;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mBroadCastEventsCallbacks:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$2(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_78
    if-gez v1, :cond_8f

    .line 982
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$1;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mBroadCastEventsCallbacks:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$2(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 983
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$1;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    const/4 v5, 0x0

    #setter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mBroadCastEventsCallbacks:Ljava/util/ArrayList;
    invoke-static {v4, v5}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$3(Lcom/sec/android/app/ve/activity/ProjectListActivity;Ljava/util/ArrayList;)V

    .line 988
    .end local v1           #i:I
    :cond_89
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$1;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->finish()V

    goto :goto_5e

    .line 976
    .restart local v1       #i:I
    :cond_8f
    iget-object v4, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity$1;->this$0:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    #getter for: Lcom/sec/android/app/ve/activity/ProjectListActivity;->mBroadCastEventsCallbacks:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->access$2(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/ve/activity/ProjectListActivity$BroadCastEventsCallback;

    .line 977
    .local v3, lBC:Lcom/sec/android/app/ve/activity/ProjectListActivity$BroadCastEventsCallback;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sending onBroadCastReceiver to -->"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 978
    if-eqz v3, :cond_b2

    .line 979
    invoke-interface {v3}, Lcom/sec/android/app/ve/activity/ProjectListActivity$BroadCastEventsCallback;->onBroadCastReceiver()V

    .line 975
    :cond_b2
    add-int/lit8 v1, v1, -0x1

    goto :goto_78

    .line 990
    .end local v1           #i:I
    .end local v3           #lBC:Lcom/sec/android/app/ve/activity/ProjectListActivity$BroadCastEventsCallback;
    :cond_b5
    const-string v4, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c3

    .line 992
    const-string v4, "This is inside Media Scanner started onReceive method"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_5e

    .line 995
    :cond_c3
    const-string v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 997
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "This is inside Media Scanner completed onReceive method with mime type -->"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_5e
.end method
