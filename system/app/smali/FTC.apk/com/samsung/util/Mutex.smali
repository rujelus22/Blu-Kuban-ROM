.class public Lcom/samsung/util/Mutex;
.super Ljava/lang/Object;
.source "Mutex.java"


# instance fields
.field private syncLock:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/util/Mutex;->syncLock:Z

    .line 37
    return-void
.end method
