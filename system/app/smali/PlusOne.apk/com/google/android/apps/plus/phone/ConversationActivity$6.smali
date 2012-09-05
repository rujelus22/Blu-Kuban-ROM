.class Lcom/google/android/apps/plus/phone/ConversationActivity$6;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/ConversationActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

.field final synthetic val$fatalErrorType:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/ConversationActivity;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 822
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$6;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    iput p2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$6;->val$fatalErrorType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 825
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$6;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 826
    .local v0, loaderManager:Landroid/support/v4/app/LoaderManager;
    if-eqz v0, :cond_c

    .line 827
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 829
    :cond_c
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$6;->this$0:Lcom/google/android/apps/plus/phone/ConversationActivity;

    #getter for: Lcom/google/android/apps/plus/phone/ConversationActivity;->mMessageListFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->access$1300(Lcom/google/android/apps/plus/phone/ConversationActivity;)Lcom/google/android/apps/plus/fragments/MessageListFragment;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity$6;->val$fatalErrorType:I

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->handleFatalError(I)V

    .line 830
    return-void
.end method
