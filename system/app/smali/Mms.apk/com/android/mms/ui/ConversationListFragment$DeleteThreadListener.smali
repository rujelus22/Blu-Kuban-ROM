.class public Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteThreadListener"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeleteDraftMessages:Z

.field private mDeleteLockedMessages:Z

.field private mDeleteStartHandler:Landroid/os/Handler;

.field private final mHandler:Landroid/content/AsyncQueryHandler;

.field private mHasLockedMessages:Z

.field private final mThreadId:J

.field private final mThreadIdList:[Ljava/lang/Long;


# direct methods
.method public constructor <init>(JLandroid/content/AsyncQueryHandler;Landroid/content/Context;[Ljava/lang/Long;)V
    .registers 8
    .parameter "threadId"
    .parameter "handler"
    .parameter "context"
    .parameter "threadIdList"

    .prologue
    const/4 v1, 0x0

    .line 1388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1389
    iput-wide p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J

    .line 1390
    iput-object p3, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;

    .line 1391
    iput-object p4, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;

    .line 1393
    if-eqz p5, :cond_20

    .line 1394
    invoke-virtual {p5}, [Ljava/lang/Long;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    check-cast v0, [Ljava/lang/Long;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;

    .line 1399
    :goto_16
    sput-boolean v1, Lcom/android/mms/ui/ConversationListFragment;->mIsEmptyThread:Z

    .line 1400
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z

    .line 1401
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHasLockedMessages:Z

    .line 1403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteDraftMessages:Z

    .line 1404
    return-void

    .line 1396
    :cond_20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;

    goto :goto_16
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 1374
    iget-wide v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J

    return-wide v0
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 1374
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 1374
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHasLockedMessages:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 1374
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteDraftMessages:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1429
    const-string v1, "Mms/ConversationList.DeleteThreadListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(),whichButton="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    new-instance v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;-><init>(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)V

    .line 1492
    .local v0, deleteRun:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J

    const/16 v4, 0x81

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;JILjava/lang/Runnable;)V

    .line 1495
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1496
    return-void
.end method

.method public setDeleteDraftMessage(Z)Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;
    .registers 2
    .parameter "deleteDraftMessages"

    .prologue
    .line 1408
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteDraftMessages:Z

    .line 1409
    return-object p0
.end method

.method public setDeleteLockedMessage(Z)V
    .registers 2
    .parameter "deleteLockedMessages"

    .prologue
    .line 1415
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z

    .line 1416
    return-void
.end method

.method public setDeleteStartHandler(Landroid/os/Handler;)Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;
    .registers 2
    .parameter "handler"

    .prologue
    .line 1420
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;

    .line 1421
    return-object p0
.end method

.method public setHasLockedMessage(Z)V
    .registers 2
    .parameter "hasLockedMessages"

    .prologue
    .line 1425
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHasLockedMessages:Z

    .line 1426
    return-void
.end method
