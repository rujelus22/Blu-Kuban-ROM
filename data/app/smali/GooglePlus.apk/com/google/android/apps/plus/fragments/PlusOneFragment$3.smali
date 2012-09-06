.class Lcom/google/android/apps/plus/fragments/PlusOneFragment$3;
.super Ljava/lang/Object;
.source "PlusOneFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/PlusOneFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 254
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mInsert:Z
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$400(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 255
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_PLUSONE_CANCELED:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    #calls: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$100(Lcom/google/android/apps/plus/fragments/PlusOneFragment;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 261
    :goto_10
    new-instance v0, Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->PLATFORM_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->PLATFORM_THIRD_PARTY_APP:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mApiaryApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    invoke-static {v5}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$200(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->getCallingPackageAnalytics(Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Ljava/util/Map;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/analytics/AnalyticsInfo;-><init>(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;JLjava/util/Map;)V

    .line 264
    .local v0, analytics:Lcom/google/android/apps/plus/analytics/AnalyticsInfo;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$500(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mApiaryApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$200(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v4

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$300(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mToken:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$600(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v0

    invoke-static/range {v1 .. v7}, Lcom/google/android/apps/plus/service/EsService;->applyPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/android/apps/plus/network/ApiaryApiInfo;Ljava/lang/String;ZLjava/lang/String;)I

    .line 266
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->mInsert:Z
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$400(Lcom/google/android/apps/plus/fragments/PlusOneFragment;)Z

    move-result v2

    if-eqz v2, :cond_6c

    :goto_57
    invoke-virtual {v1, v6}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 267
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 268
    return-void

    .line 257
    .end local v0           #analytics:Lcom/google/android/apps/plus/analytics/AnalyticsInfo;
    :cond_64
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PlusOneFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PlusOneFragment;

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_UNDO_PLUSONE_CONFIRMED:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    #calls: Lcom/google/android/apps/plus/fragments/PlusOneFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/fragments/PlusOneFragment;->access$100(Lcom/google/android/apps/plus/fragments/PlusOneFragment;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    goto :goto_10

    .line 266
    .restart local v0       #analytics:Lcom/google/android/apps/plus/analytics/AnalyticsInfo;
    :cond_6c
    const/4 v6, -0x1

    goto :goto_57
.end method
