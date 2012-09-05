.class public Lcom/google/android/music/activitymanagement/MusicStateStack;
.super Ljava/lang/Object;
.source "MusicStateStack.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/google/android/music/activitymanagement/MusicState;",
        ">;"
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/music/activitymanagement/MusicState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-string v0, "MusicStateStack"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/activitymanagement/MusicStateStack;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-boolean v0, Lcom/google/android/music/activitymanagement/MusicStateStack;->DBG:Z

    if-eqz v0, :cond_e

    const-string v0, "MusicStateStack"

    const-string v1, "New MusicStateStack"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateStack;->mList:Ljava/util/ArrayList;

    .line 26
    return-void
.end method

.method private dump()V
    .registers 5

    .prologue
    .line 122
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 123
    const-string v1, "MusicStateStack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 125
    :cond_34
    return-void
.end method


# virtual methods
.method public atTop()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 47
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 71
    return-void
.end method

.method public get(I)Lcom/google/android/music/activitymanagement/MusicState;
    .registers 3
    .parameter "i"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/activitymanagement/MusicState;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/music/activitymanagement/MusicState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Lcom/google/android/music/activitymanagement/MusicState;
    .registers 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/MusicStateStack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/MusicStateStack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/MusicStateStack;->get(I)Lcom/google/android/music/activitymanagement/MusicState;

    move-result-object v0

    goto :goto_7
.end method

.method public pop()Lcom/google/android/music/activitymanagement/MusicState;
    .registers 4

    .prologue
    .line 106
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateStack;->mList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/activitymanagement/MusicState;

    .line 107
    .local v0, state:Lcom/google/android/music/activitymanagement/MusicState;
    return-object v0
.end method

.method public push(Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    sget-boolean v0, Lcom/google/android/music/activitymanagement/MusicStateStack;->DBG:Z

    if-eqz v0, :cond_24

    .line 100
    const-string v0, "MusicStateStack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pushed new state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/MusicStateStack;->dump()V

    .line 103
    :cond_24
    return-void
.end method

.method public set(ILcom/google/android/music/activitymanagement/MusicState;)V
    .registers 6
    .parameter "index"
    .parameter "s"

    .prologue
    .line 90
    sget-boolean v0, Lcom/google/android/music/activitymanagement/MusicStateStack;->DBG:Z

    if-eqz v0, :cond_29

    .line 91
    const-string v0, "MusicStateStack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/MusicStateStack;->dump()V

    .line 94
    :cond_29
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicAppStack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
