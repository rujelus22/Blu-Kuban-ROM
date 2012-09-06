.class public interface abstract Lcom/google/grandcentral/api2/Feedback$FeedbackRequestOrBuilder;
.super Ljava/lang/Object;
.source "Feedback.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Feedback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FeedbackRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getAppPlatform()Ljava/lang/String;
.end method

.method public abstract getAppPlatformBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getAppVersion()Ljava/lang/String;
.end method

.method public abstract getAppVersionBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCallQuality()I
.end method

.method public abstract getComments()Ljava/lang/String;
.end method

.method public abstract getCommentsBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getLogs()Ljava/lang/String;
.end method

.method public abstract getLogsBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSipStack()Ljava/lang/String;
.end method

.method public abstract getSipStackBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasAppPlatform()Z
.end method

.method public abstract hasAppVersion()Z
.end method

.method public abstract hasCallQuality()Z
.end method

.method public abstract hasComments()Z
.end method

.method public abstract hasLogs()Z
.end method

.method public abstract hasSipStack()Z
.end method
