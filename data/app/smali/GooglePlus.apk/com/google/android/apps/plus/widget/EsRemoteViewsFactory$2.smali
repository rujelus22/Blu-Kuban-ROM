.class Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$2;
.super Ljava/lang/Object;
.source "EsWidgetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)V
    .registers 2
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 116
    invoke-static {}, Lcom/google/android/apps/plus/content/EsPostsData;->isSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 133
    :goto_7
    return-void

    .line 120
    :cond_8
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 121
    .local v2, view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$300(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAppWidgetId:I
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$400(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->loadCircleId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, circleId:Ljava/lang/String;
    if-eqz v3, :cond_27

    .line 123
    const-string v0, "v.whatshot"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 124
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->WHATS_HOT:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 125
    const/4 v3, 0x0

    .line 131
    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$300(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$500(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    const/4 v6, 0x1

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/service/EsService;->getActivityStream(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$2;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #setter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mSyncRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v4}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$102(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_7

    .line 126
    :cond_3e
    const-string v0, "v.all.circles"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 127
    const/4 v3, 0x0

    goto :goto_27
.end method
