.class public Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveMsgMessage;
.super Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;
.source "RequestMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/service/message/RequestMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoveMsgMessage"
.end annotation


# instance fields
.field public isAll:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/service/message/RequestMessage$RemoveMsgMessage;->isAll:Z

    return-void
.end method
