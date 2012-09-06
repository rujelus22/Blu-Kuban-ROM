.class public Lcom/google/android/apps/translatedecoder/util/HashSetBasedStringSet;
.super Lcom/google/android/apps/translatedecoder/util/StringSet;
.source "HashSetBasedStringSet.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger; = null

.field private static final serialVersionUID:J = -0x34ae60ec27c98f63L


# instance fields
.field private final set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/google/android/apps/translatedecoder/util/HashSetBasedStringSet;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translatedecoder/util/HashSetBasedStringSet;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/android/apps/translatedecoder/util/StringSet;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/apps/translatedecoder/util/HashSetBasedStringSet;->set:Ljava/util/Set;

    .line 23
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/translatedecoder/util/HashSetBasedStringSet;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public writeToByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 4
    .parameter "buf"

    .prologue
    .line 27
    sget-object v0, Lcom/google/android/apps/translatedecoder/util/HashSetBasedStringSet;->logger:Ljava/util/logging/Logger;

    const-string v1, "calling unimplement function"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 29
    return-void
.end method
