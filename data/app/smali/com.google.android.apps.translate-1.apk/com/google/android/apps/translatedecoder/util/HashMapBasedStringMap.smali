.class public Lcom/google/android/apps/translatedecoder/util/HashMapBasedStringMap;
.super Lcom/google/android/apps/translatedecoder/util/StringMap;
.source "HashMapBasedStringMap.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger; = null

.field private static final serialVersionUID:J = -0x628aaaf8113d35bdL


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/google/android/apps/translatedecoder/util/HashMapBasedStringMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/util/HashMapBasedStringMap;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/android/apps/translatedecoder/util/StringMap;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/util/HashMapBasedStringMap;->map:Ljava/util/Map;

    .line 22
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "key"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/HashMapBasedStringMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public writeToByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 4
    .parameter "buf"

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/apps/translatedecoder/util/HashMapBasedStringMap;->logger:Ljava/util/logging/Logger;

    const-string v1, "calling unimplement function"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 33
    return-void
.end method
