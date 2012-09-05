.class Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;
.super Ljava/lang/Object;
.source "PostCommentsFragment.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/ItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PostCommentsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostClickListener"
.end annotation


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter
    .parameter "context"
    .parameter "account"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;->mContext:Landroid/content/Context;

    .line 166
    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 167
    return-void
.end method


# virtual methods
.method public onLocationClick(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;)V
    .registers 4
    .parameter "activityId"
    .parameter "location"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/google/android/apps/plus/util/MapUtils;->showActivityOnMap(Landroid/content/Context;Lcom/google/wireless/tacotruck/proto/Data$Location;)V

    .line 207
    return-void
.end method

.method public onMediaImageClick(Ljava/lang/String;Lcom/google/android/apps/plus/content/DbMedia;I)V
    .registers 13
    .parameter "activityId"
    .parameter "media"
    .parameter "photoIndex"

    .prologue
    .line 184
    invoke-virtual {p2}, Lcom/google/android/apps/plus/content/DbMedia;->getMedia()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getType()Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    if-ne v0, v1, :cond_52

    .line 185
    invoke-virtual {p2}, Lcom/google/android/apps/plus/content/DbMedia;->isPWA()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 186
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_UP_SELECT_PHOTO:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 189
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

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

    invoke-virtual {v8, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 199
    :goto_33
    return-void

    .line 193
    :cond_34
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

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

    invoke-virtual {v8, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_33

    .line 197
    :cond_52
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p2}, Lcom/google/android/apps/plus/content/DbMedia;->getMedia()Lcom/google/wireless/tacotruck/proto/Data$Media;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Media;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/phone/Intents;->viewContent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    goto :goto_33
.end method

.method public onSpanClick(Landroid/text/style/URLSpan;)V
    .registers 8
    .parameter "span"

    .prologue
    .line 214
    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, url:Ljava/lang/String;
    const-string v2, "acl:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 216
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAudienceData:Lcom/google/android/apps/plus/api/AudienceData;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$100(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Lcom/google/android/apps/plus/api/AudienceData;

    move-result-object v2

    if-nez v2, :cond_3b

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mPendingRequestId:Ljava/lang/Integer;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$200(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_3b

    .line 217
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityId:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$300(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/apps/plus/service/EsService;->getActivityAudience(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #setter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mPendingRequestId:Ljava/lang/Integer;
    invoke-static {v2, v3}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$202(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 219
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    const/16 v3, 0x14

    #calls: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->showProgressDialog(I)V
    invoke-static {v2, v3}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$400(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;I)V

    .line 234
    :cond_3a
    :goto_3a
    return-void

    .line 221
    :cond_3b
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAudienceData:Lcom/google/android/apps/plus/api/AudienceData;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$100(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Lcom/google/android/apps/plus/api/AudienceData;

    move-result-object v3

    #calls: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->showAudience(Lcom/google/android/apps/plus/api/AudienceData;)V
    invoke-static {v2, v3}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$500(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;Lcom/google/android/apps/plus/api/AudienceData;)V

    goto :goto_3a

    .line 223
    :cond_47
    const-string v2, "+1:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 224
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, parts:[Ljava/lang/String;
    if-eqz v0, :cond_3a

    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3a

    .line 226
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->showPlusOnePeople(Ljava/lang/String;I)V

    goto :goto_3a

    .line 229
    .end local v0           #parts:[Ljava/lang/String;
    :cond_6f
    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/phone/Intents;->isProfileUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 230
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_UP_SELECT_PERSON:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 232
    :cond_80
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v2, v3, v1}, Lcom/google/android/apps/plus/phone/Intents;->viewContent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    goto :goto_3a
.end method

.method public onUserImageClick(JLjava/lang/String;)V
    .registers 11
    .parameter "authorUserId"
    .parameter "authorName"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_UP_SELECT_AUTHOR:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 175
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$PostClickListener;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 177
    return-void
.end method
