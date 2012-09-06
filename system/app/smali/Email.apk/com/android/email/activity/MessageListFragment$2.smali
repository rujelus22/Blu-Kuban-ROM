.class Lcom/android/email/activity/MessageListFragment$2;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListFragment;->toggleFavorite(Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 929
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$2;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getField(Landroid/database/Cursor;)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 933
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setField(JZ)V
    .registers 5
    .parameter "messageId"
    .parameter "newValue"

    .prologue
    .line 938
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$2;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;
    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$600(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/Controller;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/Controller;->setMessageFavoriteSync(JZ)V

    .line 939
    return-void
.end method
