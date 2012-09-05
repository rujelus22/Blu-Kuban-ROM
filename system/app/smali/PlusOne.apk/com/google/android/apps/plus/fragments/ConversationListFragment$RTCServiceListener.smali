.class Lcom/google/android/apps/plus/fragments/ConversationListFragment$RTCServiceListener;
.super Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RTCServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/ConversationListFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/fragments/ConversationListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/ConversationListFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/ConversationListFragment;Lcom/google/android/apps/plus/fragments/ConversationListFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/ConversationListFragment$RTCServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/ConversationListFragment;)V

    return-void
.end method


# virtual methods
.method public onConversationsLoaded(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 6
    .parameter "account"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/ConversationListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 164
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/ConversationListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/ConversationListFragment;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 167
    :cond_15
    return-void
.end method
