.class Lcom/android/email/activity/MessageListFragment$3;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListFragment;->toggleMultiple(Ljava/util/Set;Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;

.field final synthetic val$helper:Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;

.field final synthetic val$newValue:Z

.field final synthetic val$setValues:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListFragment;Ljava/util/HashMap;ZLcom/android/email/activity/MessageListFragment$MultiToggleHelper;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1000
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$3;->this$0:Lcom/android/email/activity/MessageListFragment;

    iput-object p2, p0, Lcom/android/email/activity/MessageListFragment$3;->val$setValues:Ljava/util/HashMap;

    iput-boolean p3, p0, Lcom/android/email/activity/MessageListFragment$3;->val$newValue:Z

    iput-object p4, p0, Lcom/android/email/activity/MessageListFragment$3;->val$helper:Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1003
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$3;->val$setValues:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1004
    .local v1, id:J
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$3;->val$setValues:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-boolean v4, p0, Lcom/android/email/activity/MessageListFragment$3;->val$newValue:Z

    if-eq v3, v4, :cond_a

    .line 1005
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$3;->val$helper:Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;

    iget-boolean v4, p0, Lcom/android/email/activity/MessageListFragment$3;->val$newValue:Z

    invoke-interface {v3, v1, v2, v4}, Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;->setField(JZ)V

    goto :goto_a

    .line 1008
    .end local v1           #id:J
    :cond_36
    return-void
.end method
