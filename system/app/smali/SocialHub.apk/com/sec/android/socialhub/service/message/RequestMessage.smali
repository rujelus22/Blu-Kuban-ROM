.class public Lcom/sec/android/socialhub/service/message/RequestMessage;
.super Ljava/lang/Object;
.source "RequestMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/service/message/RequestMessage$RemoteSyncMessage;,
        Lcom/sec/android/socialhub/service/message/RequestMessage$DBSyncMessage;,
        Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;,
        Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveMsgMessage;,
        Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveAccountMessage;,
        Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;
    }
.end annotation


# instance fields
.field public accountArray:[Ljava/lang/String;

.field public accountID:Ljava/lang/String;

.field public accountType:Ljava/lang/String;

.field public isSelf:Z

.field public reqID:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/service/message/RequestMessage;->isSelf:Z

    .line 51
    return-void
.end method
