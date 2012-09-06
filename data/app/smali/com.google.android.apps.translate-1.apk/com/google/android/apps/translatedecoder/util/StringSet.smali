.class public abstract Lcom/google/android/apps/translatedecoder/util/StringSet;
.super Ljava/lang/Object;
.source "StringSet.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final logger:Ljava/util/logging/Logger; = null

.field private static final serialVersionUID:J = 0x35bbe98efaff1a4aL


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/google/android/apps/translatedecoder/util/StringSet;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/util/StringSet;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readFromByteBuffer(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/util/StringSet;
    .registers 6
    .parameter "buf"

    .prologue
    const/4 v4, 0x1

    .line 24
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 25
    .local v0, classId:I
    if-ne v0, v4, :cond_c

    .line 26
    invoke-static {p0}, Lcom/google/android/apps/translatedecoder/util/ArrayBasedStringSet;->readFromByteBufferHelper(Ljava/nio/ByteBuffer;)Lcom/google/android/apps/translatedecoder/util/StringSet;

    move-result-object v1

    .line 30
    :goto_b
    return-object v1

    .line 28
    :cond_c
    sget-object v1, Lcom/google/android/apps/translatedecoder/util/StringSet;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown class id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 29
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 30
    const/4 v1, 0x0

    goto :goto_b
.end method


# virtual methods
.method public abstract contains(Ljava/lang/String;)Z
.end method

.method public abstract writeToByteBuffer(Ljava/nio/ByteBuffer;)V
.end method
