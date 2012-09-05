.class public abstract Lcom/syncmldstmo/base/smlHandleCmd_H;
.super Ljava/lang/Object;
.source "smlHandleCmd_H.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract smlHCmdAdd(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_ADD;)V
.end method

.method public abstract smlHCmdAlert(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_ALERT;)V
.end method

.method public abstract smlHCmdAtomicEnd(Ljava/lang/Object;)V
.end method

.method public abstract smlHCmdAtomicStart(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_ATOMIC;)V
.end method

.method public abstract smlHCmdCopy(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_COPY;)V
.end method

.method public abstract smlHCmdDelete(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_DELETE;)V
.end method

.method public abstract smlHCmdEndSync(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_SYNC;)V
.end method

.method public abstract smlHCmdEndSyncml(Ljava/lang/Object;I)V
.end method

.method public abstract smlHCmdExec(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_EXEC;)V
.end method

.method public abstract smlHCmdGet(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_GET;)V
.end method

.method public abstract smlHCmdReplace(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_REPLACE;)V
.end method

.method public abstract smlHCmdSequenceEnd(Ljava/lang/Object;)V
.end method

.method public abstract smlHCmdSequenceStart(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_SEQUENCE;)V
.end method

.method public abstract smlHCmdStartSync(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_SYNC;)V
.end method

.method public abstract smlHCmdStatus(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_STATUS;)V
.end method

.method public abstract smlHCmdSyncHdr(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$SML_SYNCHEADER;)V
.end method
