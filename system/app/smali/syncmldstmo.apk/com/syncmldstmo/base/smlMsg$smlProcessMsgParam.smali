.class public Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;
.super Ljava/lang/Object;
.source "smlMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/smlMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "smlProcessMsgParam"
.end annotation


# instance fields
.field public CalendarComplete:Z

.field public CalendarCount:I

.field public CalendarTotal:I

.field public ContactComplete:Z

.field public ContactCount:I

.field public ContactTotal:I

.field public MemoComplete:Z

.field public MemoCount:I

.field public MemoTotal:I

.field public ProfileComplete:Z

.field public ProfileCount:I

.field public ProfileTotal:I

.field public TaskComplete:Z

.field public TaskCount:I

.field public TaskTotal:I

.field public syncInfo:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput v0, p0, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ContactTotal:I

    .line 66
    iput v0, p0, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ContactCount:I

    .line 67
    iput-boolean v0, p0, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ContactComplete:Z

    .line 69
    iput v0, p0, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->CalendarTotal:I

    .line 70
    iput v0, p0, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->CalendarCount:I

    .line 71
    iput-boolean v0, p0, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->CalendarComplete:Z

    .line 73
    iput v0, p0, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->TaskTotal:I

    .line 74
    iput v0, p0, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->TaskCount:I

    .line 75
    iput-boolean v0, p0, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->TaskComplete:Z

    .line 77
    iput v0, p0, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->MemoTotal:I

    .line 78
    iput v0, p0, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->MemoCount:I

    .line 79
    iput-boolean v0, p0, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->MemoComplete:Z

    .line 81
    iput v0, p0, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ProfileTotal:I

    .line 82
    iput v0, p0, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ProfileCount:I

    .line 83
    iput-boolean v0, p0, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ProfileComplete:Z

    .line 63
    return-void
.end method
