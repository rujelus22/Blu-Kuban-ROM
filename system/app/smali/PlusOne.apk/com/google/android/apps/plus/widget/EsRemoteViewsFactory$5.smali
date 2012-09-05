.class Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$5;
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
    .line 219
    iput-object p1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$5;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 225
    invoke-static {}, Lcom/google/android/apps/plus/content/EsPostsData;->isSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 243
    :goto_7
    return-void

    .line 230
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$5;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1000(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$5;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAppWidgetId:I
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$2100(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/widget/EsWidgetUtils;->loadCircleId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, circleId:Ljava/lang/String;
    const-string v0, "v.all.circles"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 232
    const/4 v3, 0x0

    .line 235
    :cond_21
    if-eqz v3, :cond_3f

    const-string v0, "v.whatshot"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 236
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->WHATS_HOT:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 237
    .local v2, view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    const/4 v3, 0x0

    .line 242
    :goto_2e
    iget-object v0, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$5;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$1000(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory$5;->this$0:Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;

    #getter for: Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;->access$100(Lcom/google/android/apps/plus/widget/EsRemoteViewsFactory;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->getActivityStream(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)I

    goto :goto_7

    .line 239
    .end local v2           #view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    :cond_3f
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .restart local v2       #view:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    goto :goto_2e
.end method
