.class Lcom/google/android/apps/plus/fragments/MessageListFragment$1;
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
    .line 154
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #calls: Lcom/google/android/apps/plus/fragments/MessageListFragment;->animateTypingVisibility()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$200(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V

    .line 158
    return-void
.end method
