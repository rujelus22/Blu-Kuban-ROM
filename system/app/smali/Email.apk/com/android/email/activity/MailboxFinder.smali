.class public Lcom/android/email/activity/MailboxFinder;
.super Ljava/lang/Object;
.source "MailboxFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MailboxFinder$1;,
        Lcom/android/email/activity/MailboxFinder$FindMailboxTask;,
        Lcom/android/email/activity/MailboxFinder$ControllerResults;,
        Lcom/android/email/activity/MailboxFinder$Callback;
    }
.end annotation


# instance fields
.field private final mAccountId:J

.field private final mCallback:Lcom/android/email/activity/MailboxFinder$Callback;

.field private mClosed:Z

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/email/Controller;

.field private mControllerResults:Lcom/android/email/Controller$Result;

.field private final mInnerControllerResults:Lcom/android/email/activity/MailboxFinder$ControllerResults;

.field private final mMailboxType:I

.field private mStarted:Z

.field private mTask:Lcom/android/email/activity/MailboxFinder$FindMailboxTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;JILcom/android/email/activity/MailboxFinder$Callback;)V
    .registers 9
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxType"
    .parameter "callback"

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_f

    .line 88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 90
    :cond_f
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mContext:Landroid/content/Context;

    .line 91
    invoke-static {p1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mController:Lcom/android/email/Controller;

    .line 92
    iput-wide p2, p0, Lcom/android/email/activity/MailboxFinder;->mAccountId:J

    .line 93
    iput p4, p0, Lcom/android/email/activity/MailboxFinder;->mMailboxType:I

    .line 94
    iput-object p5, p0, Lcom/android/email/activity/MailboxFinder;->mCallback:Lcom/android/email/activity/MailboxFinder$Callback;

    .line 95
    new-instance v0, Lcom/android/email/activity/MailboxFinder$ControllerResults;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MailboxFinder$ControllerResults;-><init>(Lcom/android/email/activity/MailboxFinder;Lcom/android/email/activity/MailboxFinder$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mInnerControllerResults:Lcom/android/email/activity/MailboxFinder$ControllerResults;

    .line 96
    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/MailboxFinder;->mInnerControllerResults:Lcom/android/email/activity/MailboxFinder$ControllerResults;

    invoke-direct {v0, v1, v2}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mControllerResults:Lcom/android/email/Controller$Result;

    .line 98
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder;->mControllerResults:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 99
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/MailboxFinder;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxFinder;->mClosed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/MailboxFinder;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/android/email/activity/MailboxFinder;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/MailboxFinder;)Lcom/android/email/activity/MailboxFinder$Callback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mCallback:Lcom/android/email/activity/MailboxFinder$Callback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/MailboxFinder;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/email/activity/MailboxFinder;->close()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/activity/MailboxFinder;)Lcom/android/email/activity/MailboxFinder$FindMailboxTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mTask:Lcom/android/email/activity/MailboxFinder$FindMailboxTask;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/email/activity/MailboxFinder;Lcom/android/email/activity/MailboxFinder$FindMailboxTask;)Lcom/android/email/activity/MailboxFinder$FindMailboxTask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/email/activity/MailboxFinder;->mTask:Lcom/android/email/activity/MailboxFinder$FindMailboxTask;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/email/activity/MailboxFinder;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/MailboxFinder;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/email/activity/MailboxFinder;->mMailboxType:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/MailboxFinder;)Lcom/android/email/Controller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method private close()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxFinder;->mClosed:Z

    .line 128
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mControllerResults:Lcom/android/email/Controller$Result;

    if-eqz v0, :cond_11

    .line 129
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MailboxFinder;->mControllerResults:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 130
    iput-object v2, p0, Lcom/android/email/activity/MailboxFinder;->mControllerResults:Lcom/android/email/Controller$Result;

    .line 132
    :cond_11
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mTask:Lcom/android/email/activity/MailboxFinder$FindMailboxTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 133
    iput-object v2, p0, Lcom/android/email/activity/MailboxFinder;->mTask:Lcom/android/email/activity/MailboxFinder$FindMailboxTask;

    .line 134
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxFinder;->mClosed:Z

    if-nez v0, :cond_7

    .line 119
    invoke-direct {p0}, Lcom/android/email/activity/MailboxFinder;->close()V

    .line 121
    :cond_7
    return-void
.end method

.method getControllerResultsForTest()Lcom/android/email/Controller$Result;
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mInnerControllerResults:Lcom/android/email/activity/MailboxFinder$ControllerResults;

    return-object v0
.end method

.method isReallyClosedForTest()Z
    .registers 2

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxFinder;->mClosed:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mTask:Lcom/android/email/activity/MailboxFinder$FindMailboxTask;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mControllerResults:Lcom/android/email/Controller$Result;

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isStartedForTest()Z
    .registers 2

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxFinder;->mStarted:Z

    return v0
.end method

.method public startLookup()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 105
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxFinder;->mStarted:Z

    if-eqz v0, :cond_c

    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 108
    :cond_c
    iput-boolean v2, p0, Lcom/android/email/activity/MailboxFinder;->mStarted:Z

    .line 109
    new-instance v0, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;-><init>(Lcom/android/email/activity/MailboxFinder;ZI)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mTask:Lcom/android/email/activity/MailboxFinder$FindMailboxTask;

    .line 110
    iget-object v0, p0, Lcom/android/email/activity/MailboxFinder;->mTask:Lcom/android/email/activity/MailboxFinder$FindMailboxTask;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxFinder$FindMailboxTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 111
    return-void
.end method
