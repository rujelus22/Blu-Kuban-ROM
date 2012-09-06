.class Lcom/android/email/activity/MessageOrderManager$1;
.super Landroid/database/ContentObserver;
.source "MessageOrderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageOrderManager;-><init>(Landroid/content/Context;Lcom/android/email/MessageListContext;Lcom/android/email/activity/MessageOrderManager$Callback;Lcom/android/emailcommon/utility/DelayedOperations;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageOrderManager;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageOrderManager;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/email/activity/MessageOrderManager$1;->this$0:Lcom/android/email/activity/MessageOrderManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager$1;->this$0:Lcom/android/email/activity/MessageOrderManager;

    #getter for: Lcom/android/email/activity/MessageOrderManager;->mClosed:Z
    invoke-static {v0}, Lcom/android/email/activity/MessageOrderManager;->access$300(Lcom/android/email/activity/MessageOrderManager;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 145
    :goto_8
    return-void

    .line 144
    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager$1;->this$0:Lcom/android/email/activity/MessageOrderManager;

    #calls: Lcom/android/email/activity/MessageOrderManager;->onContentChanged()V
    invoke-static {v0}, Lcom/android/email/activity/MessageOrderManager;->access$400(Lcom/android/email/activity/MessageOrderManager;)V

    goto :goto_8
.end method
