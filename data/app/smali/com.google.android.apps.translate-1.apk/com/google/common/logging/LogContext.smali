.class public final Lcom/google/common/logging/LogContext;
.super Ljava/lang/Object;
.source "LogContext.java"


# static fields
.field private static threadTagMap:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
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
    .line 41
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/common/logging/LogContext;->threadTagMap:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThreadTag()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 38
    sget-object v0, Lcom/google/common/logging/LogContext;->threadTagMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static setThreadTag(Ljava/lang/String;)V
    .registers 2
    .parameter "tag"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 30
    sget-object v0, Lcom/google/common/logging/LogContext;->threadTagMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 31
    return-void
.end method
