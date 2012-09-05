.class public Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;
.super Lcom/sec/android/socialhub/service/message/RequestMessage;
.source "RequestMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/service/message/RequestMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MsgMessage"
.end annotation


# instance fields
.field public folderType:[Ljava/lang/String;

.field public messageID:[Ljava/lang/String;

.field public threadID:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/sec/android/socialhub/service/message/RequestMessage;-><init>()V

    return-void
.end method
