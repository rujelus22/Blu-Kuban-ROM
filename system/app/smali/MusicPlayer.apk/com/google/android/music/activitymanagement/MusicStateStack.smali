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
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateStack;->mList:Ljava/util/ArrayList;

    .line 24
    return-void
.end method


# virtual methods
.method public atTop()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 45
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
    .line 68
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 69
    return-void
.end method

.method public get(I)Lcom/google/android/music/activitymanagement/MusicState;
    .registers 3
    .parameter "i"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/activitymanagement/MusicState;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 49
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
    .line 132
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Lcom/google/android/music/activitymanagement/MusicState;
    .registers 2

    .prologue
    .line 113
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
    .line 104
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicStateStack;->mList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/activitymanagement/MusicState;

    .line 105
    .local v0, state:Lcom/google/android/music/activitymanagement/MusicState;
    return-object v0
.end method

.method public push(Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public set(ILcom/google/android/music/activitymanagement/MusicState;)V
    .registers 4
    .parameter "index"
    .parameter "s"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicStateStack;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 128
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
