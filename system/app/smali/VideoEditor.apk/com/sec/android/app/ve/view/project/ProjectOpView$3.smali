.class Lcom/sec/android/app/ve/view/project/ProjectOpView$3;
.super Ljava/lang/Object;
.source "ProjectOpView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/view/project/ProjectOpView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/project/ProjectOpView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/project/ProjectOpView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/project/ProjectOpView$3;->this$0:Lcom/sec/android/app/ve/view/project/ProjectOpView;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 208
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->isEThreadAlive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 209
    const-string v0, "previos export/share going on"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 220
    :goto_10
    return-void

    .line 212
    :cond_11
    invoke-static {}, Lcom/sec/android/app/ve/util/Utils;->checkStorage()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 213
    const v0, 0x7f080077

    const/4 v1, -0x1

    invoke-static {v0, v1, v2, v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    goto :goto_10

    .line 216
    :cond_1f
    const-string v0, "PLA Share button press"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->showShareDialog()V

    goto :goto_10
.end method
