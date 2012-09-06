.class public Lcom/google/android/music/DebugUtils;
.super Ljava/lang/Object;
.source "DebugUtils.java"


# static fields
.field public static final IS_DEBUG_BUILD:Z

.field private static final sAutoDebugOff:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sAutoLogAll:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 28
    new-instance v0, Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableSet$Builder;-><init>()V

    const-string v1, "MusicContentProvider"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    const-string v1, "MediaStoreImporter"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    const-string v1, "MusicSyncAdapter"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/DebugUtils;->sAutoDebugOff:Ljava/util/Set;

    .line 34
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_39

    :cond_31
    const/4 v0, 0x1

    :goto_32
    sput-boolean v0, Lcom/google/android/music/DebugUtils;->IS_DEBUG_BUILD:Z

    .line 40
    sget-boolean v0, Lcom/google/android/music/DebugUtils;->IS_DEBUG_BUILD:Z

    sput-boolean v0, Lcom/google/android/music/DebugUtils;->sAutoLogAll:Z

    return-void

    .line 34
    :cond_39
    const/4 v0, 0x0

    goto :goto_32
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4
    .parameter "t"

    .prologue
    .line 87
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 88
    .local v1, stringWriter:Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 89
    .local v0, printWriter:Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 90
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 91
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 92
    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static isAutoLogAll()Z
    .registers 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/google/android/music/DebugUtils;->sAutoLogAll:Z

    return v0
.end method

.method public static final isLoggable(Ljava/lang/String;)Z
    .registers 3
    .parameter "tag"

    .prologue
    .line 51
    sget-boolean v0, Lcom/google/android/music/DebugUtils;->sAutoLogAll:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/google/android/music/DebugUtils;->sAutoDebugOff:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_c
    const-string v0, "DebugUtils"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_15
    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static setAutoLogAll(Z)V
    .registers 1
    .parameter "value"

    .prologue
    .line 43
    sput-boolean p0, Lcom/google/android/music/DebugUtils;->sAutoLogAll:Z

    .line 44
    return-void
.end method
