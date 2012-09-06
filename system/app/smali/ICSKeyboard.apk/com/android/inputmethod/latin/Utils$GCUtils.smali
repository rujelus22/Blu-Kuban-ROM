.class public Lcom/android/inputmethod/latin/Utils$GCUtils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GCUtils"
.end annotation


# static fields
.field private static final GC_INTERVAL:J = 0x3e8L

.field private static final GC_TAG:Ljava/lang/String; = null

.field public static final GC_TRY_COUNT:I = 0x2

.field public static final GC_TRY_LOOP_MAX:I = 0x5

.field private static sInstance:Lcom/android/inputmethod/latin/Utils$GCUtils;


# instance fields
.field private mGCTryCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 79
    const-class v0, Lcom/android/inputmethod/latin/Utils$GCUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/Utils$GCUtils;->GC_TAG:Ljava/lang/String;

    .line 85
    new-instance v0, Lcom/android/inputmethod/latin/Utils$GCUtils;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/Utils$GCUtils;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/Utils$GCUtils;->sInstance:Lcom/android/inputmethod/latin/Utils$GCUtils;

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/Utils$GCUtils;->mGCTryCount:I

    .line 78
    return-void
.end method

.method public static getInstance()Lcom/android/inputmethod/latin/Utils$GCUtils;
    .registers 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/inputmethod/latin/Utils$GCUtils;->sInstance:Lcom/android/inputmethod/latin/Utils$GCUtils;

    return-object v0
.end method


# virtual methods
.method public reset()V
    .registers 2

    .prologue
    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/Utils$GCUtils;->mGCTryCount:I

    .line 94
    return-void
.end method

.method public tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z
    .registers 7
    .parameter "metaData"
    .parameter "t"

    .prologue
    const/4 v1, 0x0

    .line 97
    iget v2, p0, Lcom/android/inputmethod/latin/Utils$GCUtils;->mGCTryCount:I

    if-nez v2, :cond_8

    .line 98
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 100
    :cond_8
    iget v2, p0, Lcom/android/inputmethod/latin/Utils$GCUtils;->mGCTryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/inputmethod/latin/Utils$GCUtils;->mGCTryCount:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_15

    .line 101
    invoke-static {p1, p2}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    :goto_14
    return v1

    .line 105
    :cond_15
    const-wide/16 v2, 0x3e8

    :try_start_17
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1a} :catch_1c

    .line 106
    const/4 v1, 0x1

    goto :goto_14

    .line 107
    :catch_1c
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/InterruptedException;
    sget-object v2, Lcom/android/inputmethod/latin/Utils$GCUtils;->GC_TAG:Ljava/lang/String;

    const-string v3, "Sleep was interrupted."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {p1, p2}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14
.end method
