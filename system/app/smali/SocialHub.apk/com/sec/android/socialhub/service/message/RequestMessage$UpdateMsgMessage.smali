.class public Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;
.super Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;
.source "RequestMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/service/message/RequestMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateMsgMessage"
.end annotation


# instance fields
.field public ext_flag_1:I

.field public ext_flag_2:I

.field public is_favorite:Z

.field public is_read:Z

.field public status_followupflag:I

.field public status_lastverb:I

.field public success:Z

.field public updateAction:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 29
    invoke-direct {p0}, Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;-><init>()V

    .line 32
    iput v0, p0, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;->updateAction:I

    .line 34
    iput-boolean v1, p0, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;->is_favorite:Z

    .line 35
    iput-boolean v1, p0, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;->is_read:Z

    .line 37
    iput v0, p0, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;->status_followupflag:I

    .line 38
    iput v0, p0, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;->status_lastverb:I

    .line 40
    iput-boolean v1, p0, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;->success:Z

    .line 42
    iput v0, p0, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;->ext_flag_1:I

    .line 43
    iput v0, p0, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;->ext_flag_2:I

    return-void
.end method
