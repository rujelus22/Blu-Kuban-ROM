.class public Lcom/google/android/apps/translatedecoder/util/MemMapUtil;
.super Ljava/lang/Object;
.source "MemMapUtil.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-class v0, Lcom/google/android/apps/translatedecoder/util/MemMapUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/util/MemMapUtil;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mmapFileSignature()I
    .registers 1

    .prologue
    .line 19
    const v0, 0x49950a81

    return v0
.end method

.method public static subBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .registers 5
    .parameter "buf"
    .parameter "length"

    .prologue
    .line 34
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-le p1, v1, :cond_11

    .line 35
    sget-object v1, Lcom/google/android/apps/translatedecoder/util/MemMapUtil;->logger:Ljava/util/logging/Logger;

    const-string v2, "not enought remaining bits"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 36
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 38
    :cond_11
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 40
    .local v0, res:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 41
    return-object v0
.end method
