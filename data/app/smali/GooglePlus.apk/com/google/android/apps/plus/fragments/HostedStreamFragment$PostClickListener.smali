.class public final Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PostClickListener;
.super Ljava/lang/Object;
.source "HostedStreamFragment.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/ItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedStreamFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "PostClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;


# direct methods
.method protected constructor <init>(Lcom/google/android/apps/plus/fragments/HostedStreamFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 4
    .parameter "action"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 279
    return-void
.end method


# virtual methods
.method public onSpanClick(Landroid/text/style/URLSpan;)V
    .registers 2
    .parameter "span"

    .prologue
    .line 275
    return-void
.end method

.method public onUserImageClick(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "gaiaId"
    .parameter "authorName"

    .prologue
    const/4 v0, 0x0

    .line 251
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "view_as_plus_page"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 263
    :cond_f
    :goto_f
    return-void

    .line 257
    :cond_10
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mGaiaId:Ljava/lang/String;

    if-nez v1, :cond_17

    const/4 v0, 0x1

    .line 258
    .local v0, isStream:Z
    :cond_17
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mStreamOwnerUserId:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    if-eqz v0, :cond_f

    .line 259
    :cond_23
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->STREAM_SELECT_AUTHOR:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PostClickListener;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 260
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$PostClickListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    iget-object v3, v3, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v4, 0x0

    invoke-static {v2, v3, p1, v4}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityByGaiaIdIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_f
.end method
