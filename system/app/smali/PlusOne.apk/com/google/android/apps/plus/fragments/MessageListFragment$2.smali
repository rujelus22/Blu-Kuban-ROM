.class Lcom/google/android/apps/plus/fragments/MessageListFragment$2;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #calls: Lcom/google/android/apps/plus/fragments/MessageListFragment;->checkExpiredTypingStatus()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$300(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V

    .line 165
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #calls: Lcom/google/android/apps/plus/fragments/MessageListFragment;->updateTypingVisibility()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$400(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V

    .line 166
    return-void
.end method
