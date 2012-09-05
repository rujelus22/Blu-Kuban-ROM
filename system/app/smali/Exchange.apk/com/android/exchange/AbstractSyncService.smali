.class public abstract Lcom/android/exchange/AbstractSyncService;
.super Ljava/lang/Object;
.source "AbstractSyncService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/AbstractSyncService$ValidationResult;
    }
.end annotation


# static fields
.field public static mContext:Landroid/content/Context;


# instance fields
.field public TAG:Ljava/lang/String;

.field public mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field protected mAlias:Ljava/lang/String;

.field public mChangeCount:I

.field protected mExitStatus:I

.field private mGZipEnabled:Z

.field public mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

.field protected mMailboxId:J

.field protected mMailboxName:Ljava/lang/String;

.field protected mPendingRequest:Lcom/android/exchange/PartRequest;

.field protected mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/android/exchange/Request;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile mRequestTime:J

.field protected volatile mStop:Z

.field public volatile mSyncReason:I

.field protected final mSynchronizer:Ljava/lang/Object;

.field protected volatile mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "_context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 189
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "AbstractSyncService"

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    .line 104
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 112
    iput v2, p0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    .line 114
    iput v2, p0, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    .line 116
    iput-boolean v2, p0, Lcom/android/exchange/AbstractSyncService;->mStop:Z

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mSynchronizer:Ljava/lang/Object;

    .line 121
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 123
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 125
    iput-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    .line 129
    iput-boolean v2, p0, Lcom/android/exchange/AbstractSyncService;->mGZipEnabled:Z

    .line 136
    iput-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAlias:Ljava/lang/String;

    .line 190
    sput-object p1, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .registers 8
    .parameter "_context"
    .parameter "_mailboxId"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 232
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "AbstractSyncService"

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    .line 104
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 112
    iput v2, p0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    .line 114
    iput v2, p0, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    .line 116
    iput-boolean v2, p0, Lcom/android/exchange/AbstractSyncService;->mStop:Z

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mSynchronizer:Ljava/lang/Object;

    .line 121
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 123
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 125
    iput-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    .line 129
    iput-boolean v2, p0, Lcom/android/exchange/AbstractSyncService;->mGZipEnabled:Z

    .line 136
    iput-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAlias:Ljava/lang/String;

    .line 233
    sput-object p1, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    .line 234
    invoke-static {p1, p2, p3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 236
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_4c

    .line 237
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    .line 238
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxName:Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 242
    :cond_4c
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 7
    .parameter "_context"
    .parameter "_acc"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 207
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "AbstractSyncService"

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    .line 104
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 112
    iput v2, p0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    .line 114
    iput v2, p0, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    .line 116
    iput-boolean v2, p0, Lcom/android/exchange/AbstractSyncService;->mStop:Z

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mSynchronizer:Ljava/lang/Object;

    .line 121
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 123
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 125
    iput-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    .line 129
    iput-boolean v2, p0, Lcom/android/exchange/AbstractSyncService;->mGZipEnabled:Z

    .line 136
    iput-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAlias:Ljava/lang/String;

    .line 208
    sput-object p1, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    .line 209
    iput-object p2, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 210
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 211
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 212
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    .line 213
    iput-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxName:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .registers 7
    .parameter "_context"
    .parameter "_mailbox"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 195
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "AbstractSyncService"

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    .line 104
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 112
    iput v2, p0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    .line 114
    iput v2, p0, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    .line 116
    iput-boolean v2, p0, Lcom/android/exchange/AbstractSyncService;->mStop:Z

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mSynchronizer:Ljava/lang/Object;

    .line 121
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 123
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 125
    iput-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    .line 129
    iput-boolean v2, p0, Lcom/android/exchange/AbstractSyncService;->mGZipEnabled:Z

    .line 136
    iput-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAlias:Ljava/lang/String;

    .line 196
    sput-object p1, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    .line 197
    iput-object p2, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 198
    iget-wide v0, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    .line 199
    iget-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxName:Ljava/lang/String;

    .line 200
    iget-wide v0, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 7
    .parameter "_context"
    .parameter "_msg"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 218
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "AbstractSyncService"

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    .line 104
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 112
    iput v2, p0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    .line 114
    iput v2, p0, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    .line 116
    iput-boolean v2, p0, Lcom/android/exchange/AbstractSyncService;->mStop:Z

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mSynchronizer:Ljava/lang/Object;

    .line 121
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 123
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 125
    iput-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    .line 129
    iput-boolean v2, p0, Lcom/android/exchange/AbstractSyncService;->mGZipEnabled:Z

    .line 136
    iput-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAlias:Ljava/lang/String;

    .line 219
    sput-object p1, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    .line 220
    iget-wide v0, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 222
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v0, :cond_4e

    .line 223
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    .line 224
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxName:Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 228
    :cond_4e
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .parameter "prefix"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 248
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "AbstractSyncService"

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    .line 104
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 112
    iput v2, p0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    .line 114
    iput v2, p0, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    .line 116
    iput-boolean v2, p0, Lcom/android/exchange/AbstractSyncService;->mStop:Z

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mSynchronizer:Ljava/lang/Object;

    .line 121
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 123
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 125
    iput-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    .line 129
    iput-boolean v2, p0, Lcom/android/exchange/AbstractSyncService;->mGZipEnabled:Z

    .line 136
    iput-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAlias:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public static activate(Ljava/lang/Class;Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/exchange/AbstractSyncService;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 286
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/exchange/AbstractSyncService;>;"
    const/4 v1, 0x0

    .line 288
    .local v1, license:Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exchange/AbstractSyncService;

    .line 289
    .local v2, svc:Lcom/android/exchange/AbstractSyncService;
    invoke-virtual {v2, p1}, Lcom/android/exchange/AbstractSyncService;->activateDevice(Landroid/content/Context;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_a} :catch_c
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_a} :catch_15

    move-result-object v1

    .line 295
    return-object v1

    .line 290
    .end local v2           #svc:Lcom/android/exchange/AbstractSyncService;
    :catch_c
    move-exception v0

    .line 291
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const-string v4, "internal error"

    invoke-direct {v3, v4, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 292
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_15
    move-exception v0

    .line 293
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const-string v4, "internal error"

    invoke-direct {v3, v4, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static validate(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLandroid/content/Context;)Landroid/os/Bundle;
    .registers 16
    .parameter
    .parameter "host"
    .parameter "userName"
    .parameter "password"
    .parameter "port"
    .parameter "ssl"
    .parameter "trustCertificates"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/exchange/AbstractSyncService;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZZ",
            "Landroid/content/Context;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/exchange/AbstractSyncService;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .line 273
    .local v0, svc:Lcom/android/exchange/AbstractSyncService;
    sput-object p7, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    .line 274
    invoke-virtual/range {v0 .. v7}, Lcom/android/exchange/AbstractSyncService;->validateAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLandroid/content/Context;)Landroid/os/Bundle;
    :try_end_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_12} :catch_17
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_12} :catch_14

    move-result-object v1

    .line 279
    .end local v0           #svc:Lcom/android/exchange/AbstractSyncService;
    :goto_13
    return-object v1

    .line 277
    :catch_14
    move-exception v1

    .line 279
    :goto_15
    const/4 v1, 0x0

    goto :goto_13

    .line 276
    :catch_17
    move-exception v1

    goto :goto_15
.end method


# virtual methods
.method public abstract activateDevice(Landroid/content/Context;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation
.end method

.method public addRequest(Lcom/android/exchange/Request;)V
    .registers 3
    .parameter "req"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 458
    return-void
.end method

.method public abstract alarm()Z
.end method

.method public clearRequests()V
    .registers 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 470
    return-void
.end method

.method public errorLog(Ljava/lang/String;)V
    .registers 6
    .parameter "str"

    .prologue
    .line 418
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 419
    .local v0, tid:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    sget-boolean v2, Lcom/android/emailcommon/EasRefs;->FILE_LOG:Z

    if-eqz v2, :cond_50

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_50
    return-void
.end method

.method public getSynchronizer()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mSynchronizer:Ljava/lang/Object;

    return-object v0
.end method

.method public hasConnectivity()Z
    .registers 9

    .prologue
    const/4 v5, 0x1

    .line 433
    sget-object v6, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 435
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    .local v3, tries:I
    move v4, v3

    .line 436
    .end local v3           #tries:I
    .local v4, tries:I
    :goto_d
    add-int/lit8 v3, v4, 0x1

    .end local v4           #tries:I
    .restart local v3       #tries:I
    if-ge v4, v5, :cond_2d

    .line 437
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 438
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_26

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_26

    .line 439
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    .line 440
    .local v2, state:Landroid/net/NetworkInfo$DetailedState;
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v6, :cond_26

    .line 449
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v2           #state:Landroid/net/NetworkInfo$DetailedState;
    :goto_25
    return v5

    .line 445
    .restart local v1       #info:Landroid/net/NetworkInfo;
    :cond_26
    const-wide/16 v6, 0x2710

    :try_start_28
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_2f

    :goto_2b
    move v4, v3

    .line 448
    .end local v3           #tries:I
    .restart local v4       #tries:I
    goto :goto_d

    .line 449
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v4           #tries:I
    .restart local v3       #tries:I
    :cond_2d
    const/4 v5, 0x0

    goto :goto_25

    .line 446
    .restart local v1       #info:Landroid/net/NetworkInfo;
    :catch_2f
    move-exception v6

    goto :goto_2b
.end method

.method public hasPendingRequests()Z
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected isGZipEnabled()Z
    .registers 2

    .prologue
    .line 482
    iget-boolean v0, p0, Lcom/android/exchange/AbstractSyncService;->mGZipEnabled:Z

    return v0
.end method

.method public isStopped()Z
    .registers 2

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/android/exchange/AbstractSyncService;->mStop:Z

    return v0
.end method

.method public abstract reset()V
.end method

.method protected setGZipEnable(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 475
    iput-boolean p1, p0, Lcom/android/exchange/AbstractSyncService;->mGZipEnabled:Z

    .line 476
    return-void
.end method

.method public abstract stop()V
.end method

.method public userLog(Ljava/lang/String;I)V
    .registers 6
    .parameter "string"
    .parameter "code"

    .prologue
    .line 362
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v0, :cond_1e

    .line 363
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 365
    :cond_1e
    return-void
.end method

.method public userLog(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .parameter "string"
    .parameter "code"
    .parameter "string2"

    .prologue
    .line 356
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v0, :cond_22

    .line 357
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 359
    :cond_22
    return-void
.end method

.method public userLog(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 7
    .parameter "str"
    .parameter "e"

    .prologue
    .line 369
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 370
    .local v0, tid:J
    sget-boolean v2, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v2, :cond_36

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    :goto_2e
    sget-boolean v2, Lcom/android/emailcommon/EasRefs;->FILE_LOG:Z

    if-eqz v2, :cond_35

    .line 377
    invoke-static {p2}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/Exception;)V

    .line 379
    :cond_35
    return-void

    .line 373
    :cond_36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method public varargs userLog([Ljava/lang/String;)V
    .registers 12
    .parameter "strings"

    .prologue
    .line 389
    sget-boolean v8, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v8, :cond_5b

    .line 390
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    .line 393
    .local v6, tid:J
    array-length v8, p1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5c

    .line 394
    const/4 v8, 0x0

    aget-object v3, p1, v8

    .line 403
    .local v3, logText:Ljava/lang/String;
    :goto_13
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    sget-boolean v8, Lcom/android/emailcommon/EasRefs;->FILE_LOG:Z

    if-eqz v8, :cond_5b

    .line 405
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .end local v3           #logText:Ljava/lang/String;
    .end local v6           #tid:J
    :cond_5b
    return-void

    .line 396
    .restart local v6       #tid:J
    :cond_5c
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v8, 0x40

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 397
    .local v4, sb:Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_66
    if-ge v1, v2, :cond_70

    aget-object v5, v0, v1

    .line 398
    .local v5, string:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    .line 400
    .end local v5           #string:Ljava/lang/String;
    :cond_70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #logText:Ljava/lang/String;
    goto :goto_13
.end method

.method public abstract validateAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLandroid/content/Context;)Landroid/os/Bundle;
.end method
