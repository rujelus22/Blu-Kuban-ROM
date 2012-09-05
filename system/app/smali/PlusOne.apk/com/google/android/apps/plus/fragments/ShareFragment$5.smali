.class Lcom/google/android/apps/plus/fragments/ShareFragment$5;
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

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

.field final synthetic val$spannable:Landroid/text/Spannable;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/ShareFragment;Landroid/app/Activity;Lcom/google/wireless/tacotruck/proto/Data$Audience;Landroid/text/Spannable;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 822
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5;->val$audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    iput-object p4, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5;->val$spannable:Landroid/text/Spannable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 828
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 829
    .local v6, mainHandler:Landroid/os/Handler;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 830
    .local v3, circles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 831
    .local v4, special:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 833
    .local v5, people:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$300(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5;->val$audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/util/PeopleUtils;->getApiaryAudience(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 835
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/ShareFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/ShareFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$300(Lcom/google/android/apps/plus/fragments/ShareFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/ShareFragment$5;->val$spannable:Landroid/text/Spannable;

    #calls: Lcom/google/android/apps/plus/fragments/ShareFragment;->buildPostableString(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/text/Spannable;)Ljava/lang/String;
    invoke-static {v0, v1, v7}, Lcom/google/android/apps/plus/fragments/ShareFragment;->access$1300(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/text/Spannable;)Ljava/lang/String;

    move-result-object v2

    .line 837
    .local v2, comment:Ljava/lang/String;
    new-instance v0, Lcom/google/android/apps/plus/fragments/ShareFragment$5$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/fragments/ShareFragment$5$1;-><init>(Lcom/google/android/apps/plus/fragments/ShareFragment$5;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 850
    return-void
.end method
