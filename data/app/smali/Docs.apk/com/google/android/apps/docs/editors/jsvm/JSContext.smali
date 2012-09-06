.class public Lcom/google/android/apps/docs/editors/jsvm/JSContext;
.super Ljava/lang/Object;
.source "JSContext.java"

# interfaces
.implements Lvo;


# instance fields
.field private a:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-string v0, "android_ndk1"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(J)V
    .registers 3
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p1, p0, Lcom/google/android/apps/docs/editors/jsvm/JSContext;->a:J

    .line 40
    return-void
.end method

.method private native delete(J)V
.end method

.method private native enter(J)V
.end method

.method private native exit(J)V
.end method

.method private native init(J[BLvn;Ljava/lang/String;)V
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/google/android/apps/docs/editors/jsvm/JSContext;->a:J

    return-wide v0
.end method

.method public a()V
    .registers 3

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/google/android/apps/docs/editors/jsvm/JSContext;->a:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/JSContext;->delete(J)V

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/docs/editors/jsvm/JSContext;->a:J

    .line 52
    return-void
.end method

.method protected a([BLvn;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/jsvm/JSContext;->a()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/docs/editors/jsvm/JSContext;->init(J[BLvn;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/google/android/apps/docs/editors/jsvm/JSContext;->a:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/JSContext;->enter(J)V

    .line 57
    return-void
.end method

.method public c()V
    .registers 3

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/google/android/apps/docs/editors/jsvm/JSContext;->a:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/editors/jsvm/JSContext;->exit(J)V

    .line 62
    return-void
.end method

.method protected finalize()V
    .registers 5

    .prologue
    .line 66
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 67
    iget-wide v0, p0, Lcom/google/android/apps/docs/editors/jsvm/JSContext;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    .line 68
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/jsvm/JSContext;->a()V

    .line 69
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "GC Invoked without proper deletion."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_16
    return-void
.end method
