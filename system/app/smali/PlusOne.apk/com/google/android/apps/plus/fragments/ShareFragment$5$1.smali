.class Lcom/google/android/apps/plus/fragments/ShareFragment$5$1;
.super Ljava/lang/Object;
.source "ShareFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/ShareFragment$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/fragments/ShareFragment$5;

.field final synthetic val$circles:Ljava/util/ArrayList;

.field final synthetic val$comment:Ljava/lang/String;

.field final synthetic val$people:Ljava/util/ArrayList;

.field final synthetic val$special:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/ShareFragment$5;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 837
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5$1;->this$1:Lcom/google/android/apps/plus/fragments/ShareFragment$5;

    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5$1;->val$comment:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5$1;->val$circles:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5$1;->val$special:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5$1;->val$people:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 843
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5$1;->this$1:Lcom/google/android/apps/plus/fragments/ShareFragment$5;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ShareFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5$1;->val$comment:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5$1;->val$circles:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5$1;->val$special:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5$1;->val$people:Ljava/util/ArrayList;

    #calls: Lcom/google/android/apps/plus/fragments/ShareFragment;->recordUserShareActions(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$1400(Lcom/google/android/apps/plus/fragments/ShareFragment;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 844
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5$1;->this$1:Lcom/google/android/apps/plus/fragments/ShareFragment$5;

    iget-object v10, v0, Lcom/google/android/apps/plus/fragments/ShareFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5$1;->this$1:Lcom/google/android/apps/plus/fragments/ShareFragment$5;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ShareFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5$1;->this$1:Lcom/google/android/apps/plus/fragments/ShareFragment$5;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/ShareFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$300(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5$1;->this$1:Lcom/google/android/apps/plus/fragments/ShareFragment$5;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/ShareFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mApiKey:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$400(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5$1;->this$1:Lcom/google/android/apps/plus/fragments/ShareFragment$5;

    iget-object v3, v3, Lcom/google/android/apps/plus/fragments/ShareFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mPreviewResult:Lcom/google/android/apps/plus/network/ApiaryActivity;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$1500(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/network/ApiaryActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5$1;->val$circles:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5$1;->val$people:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5$1;->val$special:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5$1;->this$1:Lcom/google/android/apps/plus/fragments/ShareFragment$5;

    iget-object v7, v7, Lcom/google/android/apps/plus/fragments/ShareFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mExternalId:Ljava/lang/String;
    invoke-static {v7}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$1600(Lcom/google/android/apps/plus/fragments/ShareFragment;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5$1;->val$comment:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5$1;->this$1:Lcom/google/android/apps/plus/fragments/ShareFragment$5;

    iget-object v9, v9, Lcom/google/android/apps/plus/fragments/ShareFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mImageUri:Landroid/net/Uri;
    invoke-static {v9}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$900(Lcom/google/android/apps/plus/fragments/ShareFragment;)Landroid/net/Uri;

    move-result-object v9

    invoke-static/range {v0 .. v9}, Lcom/google/android/apps/plus/service/ApiaryService;->postActivity(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/network/ApiaryApiInfo;Lcom/google/android/apps/plus/network/ApiaryActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    #setter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mPendingPostId:Ljava/lang/Integer;
    invoke-static {v10, v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$002(Lcom/google/android/apps/plus/fragments/ShareFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 847
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5$1;->this$1:Lcom/google/android/apps/plus/fragments/ShareFragment$5;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/ShareFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_CONFIRM_SHARE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    #calls: Lcom/google/android/apps/plus/fragments/ShareFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$1700(Lcom/google/android/apps/plus/fragments/ShareFragment;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 848
    return-void
.end method
