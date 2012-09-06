.class Lcom/android/email/activity/RecentMailboxManager$1;
.super Ljava/lang/Object;
.source "RecentMailboxManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/RecentMailboxManager;->fireAndForget(JJJ)Lcom/android/emailcommon/utility/EmailAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/RecentMailboxManager;

.field final synthetic val$accountId:J

.field final synthetic val$mailboxId:J

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/android/email/activity/RecentMailboxManager;JJJ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/email/activity/RecentMailboxManager$1;->this$0:Lcom/android/email/activity/RecentMailboxManager;

    iput-wide p2, p0, Lcom/android/email/activity/RecentMailboxManager$1;->val$accountId:J

    iput-wide p4, p0, Lcom/android/email/activity/RecentMailboxManager$1;->val$time:J

    iput-wide p6, p0, Lcom/android/email/activity/RecentMailboxManager$1;->val$mailboxId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/email/activity/RecentMailboxManager$1;->this$0:Lcom/android/email/activity/RecentMailboxManager;

    iget-wide v1, p0, Lcom/android/email/activity/RecentMailboxManager$1;->val$accountId:J

    iget-wide v3, p0, Lcom/android/email/activity/RecentMailboxManager$1;->val$time:J

    #calls: Lcom/android/email/activity/RecentMailboxManager;->ensureDefaultsInitialized(JJ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/activity/RecentMailboxManager;->access$000(Lcom/android/email/activity/RecentMailboxManager;JJ)V

    .line 136
    iget-object v0, p0, Lcom/android/email/activity/RecentMailboxManager$1;->this$0:Lcom/android/email/activity/RecentMailboxManager;

    iget-wide v1, p0, Lcom/android/email/activity/RecentMailboxManager$1;->val$accountId:J

    iget-wide v3, p0, Lcom/android/email/activity/RecentMailboxManager$1;->val$mailboxId:J

    iget-wide v5, p0, Lcom/android/email/activity/RecentMailboxManager$1;->val$time:J

    #calls: Lcom/android/email/activity/RecentMailboxManager;->touchMailboxSynchronous(JJJ)V
    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/RecentMailboxManager;->access$100(Lcom/android/email/activity/RecentMailboxManager;JJJ)V

    .line 137
    return-void
.end method
