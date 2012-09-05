.class public final Lcom/google/android/apps/plus/fragments/StreamListFragment$PostClickListener;
.super Ljava/lang/Object;
.source "StreamListFragment.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/ItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/StreamListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "PostClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;


# direct methods
.method protected constructor <init>(Lcom/google/android/apps/plus/fragments/StreamListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 4
    .parameter "action"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 219
    return-void
.end method


# virtual methods
.method public onLocationClick(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;)V
    .registers 4
    .parameter "activityId"
    .parameter "location"

    .prologue
    .line 197
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->STREAM_SELECT_LOCATION:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment$PostClickListener;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 198
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/apps/plus/util/MapUtils;->showActivityOnMap(Landroid/content/Context;Lcom/google/wireless/tacotruck/proto/Data$Location;)V

    .line 199
    return-void
.end method

.method public onMediaImageClick(Ljava/lang/String;Lcom/google/android/apps/plus/content/DbMedia;I)V
    .registers 13
    .parameter "activityId"
    .parameter "media"
    .parameter "photoIndex"

    .prologue
    .line 175
    invoke-virtual {p2}, Lcom/google/android/apps/plus/content/DbMedia;->getMedia()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    if-ne v0, v1, :cond_5c

    .line 176
    invoke-virtual {p2}, Lcom/google/android/apps/plus/content/DbMedia;->isPWA()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 177
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->STREAM_SELECT_PHOTO:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment$PostClickListener;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 179
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p2}, Lcom/google/android/apps/plus/content/DbMedia;->getMediaTag()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/phone/Intents;->getPhotoViewIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->startActivity(Landroid/content/Intent;)V

    .line 190
    :goto_37
    return-void

    .line 184
    :cond_38
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/google/android/apps/plus/content/DbMedia;->getMedia()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/phone/Intents;->getPhotoViewIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_37

    .line 188
    :cond_5c
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p2}, Lcom/google/android/apps/plus/content/DbMedia;->getMedia()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/phone/Intents;->viewContent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    goto :goto_37
.end method

.method public onSpanClick(Landroid/text/style/URLSpan;)V
    .registers 6
    .parameter "span"

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/Intents;->isProfileUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 207
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->STREAM_SELECT_PERSON:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/StreamListFragment$PostClickListener;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 209
    :cond_f
    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, url:Ljava/lang/String;
    const-string v1, "acl:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "+1:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 215
    :cond_23
    :goto_23
    return-void

    .line 213
    :cond_24
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/phone/Intents;->viewContent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    goto :goto_23
.end method

.method public onUserImageClick(JLjava/lang/String;)V
    .registers 12
    .parameter "authorUserId"
    .parameter "authorName"

    .prologue
    .line 158
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 161
    .local v0, activity:Landroid/app/Activity;
    instance-of v6, v0, Lcom/google/android/apps/plus/phone/StreamsActivity;

    .line 163
    .local v6, isStreamActivity:Z
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-wide v1, v1, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mStreamOwnerUserId:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_12

    if-eqz v6, :cond_27

    .line 164
    :cond_12
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->STREAM_SELECT_AUTHOR:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/StreamListFragment$PostClickListener;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 165
    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->startActivity(Landroid/content/Intent;)V

    .line 168
    :cond_27
    return-void
.end method
