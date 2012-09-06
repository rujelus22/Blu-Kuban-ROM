.class Lcom/google/android/apps/plus/fragments/ShareFragment$1;
.super Ljava/lang/Object;
.source "ShareFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ShareFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/ShareFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 15
    .parameter "v"

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_f8

    .line 312
    :goto_a
    return-void

    .line 272
    :sswitch_b
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$400(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #calls: Lcom/google/android/apps/plus/fragments/ShareFragment;->getAnalyticsInfo()Lcom/google/android/apps/plus/analytics/AnalyticsInfo;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$500(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    move-result-object v2

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_SHARE_CLICKED_ACL:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)J

    .line 274
    iget-object v12, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$400(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    const v3, 0x7f0802d3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$600(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/views/TypeableAudienceView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v3

    const/4 v4, 0x5

    move v6, v5

    move v7, v5

    move v8, v5

    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/plus/phone/Intents;->getEditAudienceActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;IZZZZ)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v12, v0, v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_a

    .line 283
    :sswitch_50
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$400(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #calls: Lcom/google/android/apps/plus/fragments/ShareFragment;->getAnalyticsInfo()Lcom/google/android/apps/plus/analytics/AnalyticsInfo;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$500(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    move-result-object v2

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_SHARE_CLICKED_CAMERA:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)J

    .line 285
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "camera-post.jpg"

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/Intents;->getCameraIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 286
    .local v9, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v9, v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_a

    .line 291
    .end local v9           #intent:Landroid/content/Intent;
    :sswitch_7a
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$400(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #calls: Lcom/google/android/apps/plus/fragments/ShareFragment;->getAnalyticsInfo()Lcom/google/android/apps/plus/analytics/AnalyticsInfo;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$500(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    move-result-object v2

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_SHARE_CLICKED_GALLERY:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)J

    .line 293
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$400(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-static {v0, v1, v10, v4}, Lcom/google/android/apps/plus/phone/Intents;->getCameraPhotosPickerIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/ArrayList;Z)Landroid/content/Intent;

    move-result-object v9

    .line 295
    .restart local v9       #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v0, v9, v4}, Lcom/google/android/apps/plus/fragments/ShareFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_a

    .line 300
    .end local v9           #intent:Landroid/content/Intent;
    :sswitch_a8
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$400(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #calls: Lcom/google/android/apps/plus/fragments/ShareFragment;->getAnalyticsInfo()Lcom/google/android/apps/plus/analytics/AnalyticsInfo;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$500(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    move-result-object v2

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_SHARE_CLICKED_LOCATION:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)J

    .line 303
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #calls: Lcom/google/android/apps/plus/fragments/ShareFragment;->isCheckIn()Z
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$700(Lcom/google/android/apps/plus/fragments/ShareFragment;)Z

    move-result v11

    .line 304
    .local v11, placesOnly:Z
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$800(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    if-eqz v0, :cond_df

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$800(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasPosition()Z

    move-result v0

    if-eqz v0, :cond_df

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$800(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v10

    .line 306
    .local v10, location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    :cond_df
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$400(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-static {v0, v1, v11, v10}, Lcom/google/android/apps/plus/phone/Intents;->getChooseLocationIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZLcom/google/wireless/tacotruck/proto/Data$Location;)Landroid/content/Intent;

    move-result-object v9

    .line 308
    .restart local v9       #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    const/4 v1, 0x4

    invoke-virtual {v0, v9, v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_a

    .line 270
    nop

    :sswitch_data_f8
    .sparse-switch
        0x7f090069 -> :sswitch_b
        0x7f0900a7 -> :sswitch_a8
        0x7f09023c -> :sswitch_50
        0x7f09023d -> :sswitch_7a
    .end sparse-switch
.end method
