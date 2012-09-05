.class public Lcom/samsung/util/ListenerList;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source "ListenerList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArrayList",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .parameter "obj"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/samsung/util/ListenerList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    .line 32
    const/4 v0, 0x0

    .line 33
    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7
.end method
