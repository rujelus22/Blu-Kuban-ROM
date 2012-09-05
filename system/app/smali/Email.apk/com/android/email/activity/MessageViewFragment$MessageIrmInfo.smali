.class Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;
.super Ljava/lang/Object;
.source "MessageViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageIrmInfo"
.end annotation


# instance fields
.field public isForwardRestrict:Z

.field public isReplyAllRestrict:Z

.field public isReplyRestrict:Z

.field public messageId:J

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragment;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragment;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1902
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1903
    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;->isForwardRestrict:Z

    .line 1904
    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;->isReplyRestrict:Z

    .line 1905
    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragment$MessageIrmInfo;->isReplyAllRestrict:Z

    .line 1906
    return-void
.end method
