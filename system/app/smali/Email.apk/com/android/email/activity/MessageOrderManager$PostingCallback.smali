.class Lcom/android/email/activity/MessageOrderManager$PostingCallback;
.super Ljava/lang/Object;
.source "MessageOrderManager.java"

# interfaces
.implements Lcom/android/email/activity/MessageOrderManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageOrderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostingCallback"
.end annotation


# instance fields
.field private final mOnMessageNotFoundRunnable:Ljava/lang/Runnable;

.field private final mOnMessagesChangedRunnable:Ljava/lang/Runnable;

.field private final mOriginal:Lcom/android/email/activity/MessageOrderManager$Callback;

.field final synthetic this$0:Lcom/android/email/activity/MessageOrderManager;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageOrderManager;Lcom/android/email/activity/MessageOrderManager$Callback;)V
    .registers 4
    .parameter
    .parameter "original"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/email/activity/MessageOrderManager$PostingCallback;->this$0:Lcom/android/email/activity/MessageOrderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Lcom/android/email/activity/MessageOrderManager$PostingCallback$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageOrderManager$PostingCallback$1;-><init>(Lcom/android/email/activity/MessageOrderManager$PostingCallback;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageOrderManager$PostingCallback;->mOnMessagesChangedRunnable:Ljava/lang/Runnable;

    .line 114
    new-instance v0, Lcom/android/email/activity/MessageOrderManager$PostingCallback$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageOrderManager$PostingCallback$2;-><init>(Lcom/android/email/activity/MessageOrderManager$PostingCallback;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageOrderManager$PostingCallback;->mOnMessageNotFoundRunnable:Ljava/lang/Runnable;

    .line 100
    iput-object p2, p0, Lcom/android/email/activity/MessageOrderManager$PostingCallback;->mOriginal:Lcom/android/email/activity/MessageOrderManager$Callback;

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageOrderManager;Lcom/android/email/activity/MessageOrderManager$Callback;Lcom/android/email/activity/MessageOrderManager$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageOrderManager$PostingCallback;-><init>(Lcom/android/email/activity/MessageOrderManager;Lcom/android/email/activity/MessageOrderManager$Callback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/MessageOrderManager$PostingCallback;)Lcom/android/email/activity/MessageOrderManager$Callback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager$PostingCallback;->mOriginal:Lcom/android/email/activity/MessageOrderManager$Callback;

    return-object v0
.end method


# virtual methods
.method public onMessageNotFound()V
    .registers 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager$PostingCallback;->this$0:Lcom/android/email/activity/MessageOrderManager;

    #getter for: Lcom/android/email/activity/MessageOrderManager;->mDelayedOperations:Lcom/android/emailcommon/utility/DelayedOperations;
    invoke-static {v0}, Lcom/android/email/activity/MessageOrderManager;->access$100(Lcom/android/email/activity/MessageOrderManager;)Lcom/android/emailcommon/utility/DelayedOperations;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageOrderManager$PostingCallback;->mOnMessageNotFoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/DelayedOperations;->post(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method

.method public onMessagesChanged()V
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager$PostingCallback;->this$0:Lcom/android/email/activity/MessageOrderManager;

    #getter for: Lcom/android/email/activity/MessageOrderManager;->mDelayedOperations:Lcom/android/emailcommon/utility/DelayedOperations;
    invoke-static {v0}, Lcom/android/email/activity/MessageOrderManager;->access$100(Lcom/android/email/activity/MessageOrderManager;)Lcom/android/emailcommon/utility/DelayedOperations;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageOrderManager$PostingCallback;->mOnMessagesChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/DelayedOperations;->post(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method
