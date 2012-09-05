.class Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Folder$IdleMessageUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/MessagingController$ImapIdleFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleMessageUpdateCallback"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/MessagingController$ImapIdleFolder;


# direct methods
.method private constructor <init>(Lcom/android/email/MessagingController$ImapIdleFolder;)V
    .registers 2
    .parameter

    .prologue
    .line 6351
    iput-object p1, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/MessagingController$ImapIdleFolder;Lcom/android/email/MessagingController$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6351
    invoke-direct {p0, p1}, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;-><init>(Lcom/android/email/MessagingController$ImapIdleFolder;)V

    return-void
.end method


# virtual methods
.method public messageDeleted(I)V
    .registers 4
    .parameter "seqNumber"

    .prologue
    .line 6374
    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    const-string v1, "Got EXPUNGE, followed by EXISTS"

    invoke-virtual {v0, v1}, Lcom/android/email/MessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    .line 6378
    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    #getter for: Lcom/android/email/MessagingController$ImapIdleFolder;->mStats:Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;
    invoke-static {v0}, Lcom/android/email/MessagingController$ImapIdleFolder;->access$1700(Lcom/android/email/MessagingController$ImapIdleFolder;)Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;

    move-result-object v0

    iget v1, v0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;->mInvokedExpunge:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;->mInvokedExpunge:I

    .line 6379
    invoke-virtual {p0}, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->messageReceived()V

    .line 6380
    return-void
.end method

.method public messageFlagChanged(Lcom/android/emailcommon/mail/Message;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 6383
    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    const-string v1, "Got FETCH"

    invoke-virtual {v0, v1}, Lcom/android/email/MessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    .line 6387
    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v0, v0, Lcom/android/email/MessagingController$ImapIdleFolder;->mFetchFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_34

    .line 6393
    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    #getter for: Lcom/android/email/MessagingController$ImapIdleFolder;->mStats:Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;
    invoke-static {v0}, Lcom/android/email/MessagingController$ImapIdleFolder;->access$1700(Lcom/android/email/MessagingController$ImapIdleFolder;)Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;

    move-result-object v0

    iget v1, v0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;->mInvoked:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;->mInvoked:I

    .line 6394
    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v0, v0, Lcom/android/email/MessagingController$ImapIdleFolder;->mFetchFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 6395
    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v0, v0, Lcom/android/email/MessagingController$ImapIdleFolder;->this$0:Lcom/android/email/MessagingController;

    iget-object v1, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v1, v1, Lcom/android/email/MessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v2, v2, Lcom/android/email/MessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-virtual {v0, v1, v2}, Lcom/android/email/MessagingController;->onIdleExists(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 6400
    :goto_33
    return-void

    .line 6398
    :cond_34
    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    #getter for: Lcom/android/email/MessagingController$ImapIdleFolder;->mStats:Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;
    invoke-static {v0}, Lcom/android/email/MessagingController$ImapIdleFolder;->access$1700(Lcom/android/email/MessagingController$ImapIdleFolder;)Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;

    move-result-object v0

    iget v1, v0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;->mSuppressed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;->mSuppressed:I

    .line 6399
    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    const-string v1, "FETCH is ignored since fetch is alr pending"

    invoke-virtual {v0, v1}, Lcom/android/email/MessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    goto :goto_33
.end method

.method public messageReceived()V
    .registers 4

    .prologue
    .line 6357
    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    const-string v1, "Got EXISTS"

    invoke-virtual {v0, v1}, Lcom/android/email/MessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    .line 6358
    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v0, v0, Lcom/android/email/MessagingController$ImapIdleFolder;->mFetchFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_34

    .line 6364
    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    #getter for: Lcom/android/email/MessagingController$ImapIdleFolder;->mStats:Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;
    invoke-static {v0}, Lcom/android/email/MessagingController$ImapIdleFolder;->access$1700(Lcom/android/email/MessagingController$ImapIdleFolder;)Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;

    move-result-object v0

    iget v1, v0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;->mInvoked:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;->mInvoked:I

    .line 6365
    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v0, v0, Lcom/android/email/MessagingController$ImapIdleFolder;->mFetchFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 6366
    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v0, v0, Lcom/android/email/MessagingController$ImapIdleFolder;->this$0:Lcom/android/email/MessagingController;

    iget-object v1, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v1, v1, Lcom/android/email/MessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v2, v2, Lcom/android/email/MessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-virtual {v0, v1, v2}, Lcom/android/email/MessagingController;->onIdleExists(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 6371
    :goto_33
    return-void

    .line 6369
    :cond_34
    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    #getter for: Lcom/android/email/MessagingController$ImapIdleFolder;->mStats:Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;
    invoke-static {v0}, Lcom/android/email/MessagingController$ImapIdleFolder;->access$1700(Lcom/android/email/MessagingController$ImapIdleFolder;)Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;

    move-result-object v0

    iget v1, v0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;->mSuppressed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;->mSuppressed:I

    .line 6370
    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    const-string v1, "EXISTS is ignored since fetch is alr pending"

    invoke-virtual {v0, v1}, Lcom/android/email/MessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    goto :goto_33
.end method
