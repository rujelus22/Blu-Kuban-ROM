.class Lcom/google/android/apps/plus/fragments/ShareFragment$7;
.super Ljava/lang/Object;
.source "ShareFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/ShareFragment;->post()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

.field final synthetic val$audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/ShareFragment;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1616
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$7;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$7;->val$audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1619
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    .line 1620
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$7;->val$audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getCircleList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addAllCircle(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    .line 1621
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$7;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$7;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$400(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    const-string v3, "com.google.android.apps.plus"

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsPlatformData;->saveAudience(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 1623
    return-void
.end method
