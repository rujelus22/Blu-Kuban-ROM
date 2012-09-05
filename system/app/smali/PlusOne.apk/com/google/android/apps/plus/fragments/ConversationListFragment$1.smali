.class Lcom/google/android/apps/plus/fragments/ConversationListFragment$1;
.super Landroid/text/style/ClickableSpan;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/ConversationListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/ConversationListFragment;

.field final synthetic val$urlSpan:Landroid/text/style/URLSpan;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/ConversationListFragment;Landroid/text/style/URLSpan;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ConversationListFragment;

    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$1;->val$urlSpan:Landroid/text/style/URLSpan;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "spanView"

    .prologue
    .line 484
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 485
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$1;->val$urlSpan:Landroid/text/style/URLSpan;

    invoke-virtual {v1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 486
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/ConversationListFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 487
    return-void
.end method
