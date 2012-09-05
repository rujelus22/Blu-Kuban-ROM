.class Lcom/android/email/activity/MessageListXL$20;
.super Ljava/lang/Object;
.source "MessageListXL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListXL;->onMessageFinished(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;

.field final synthetic val$accountId:J


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListXL;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 5151
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$20;->this$0:Lcom/android/email/activity/MessageListXL;

    iput-wide p2, p0, Lcom/android/email/activity/MessageListXL$20;->val$accountId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 5154
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$300()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/email/activity/MessageListXL$20;->val$accountId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 5157
    :cond_a
    return-void
.end method
