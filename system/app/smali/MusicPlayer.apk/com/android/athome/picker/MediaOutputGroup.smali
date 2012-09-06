.class public final Lcom/android/athome/picker/MediaOutputGroup;
.super Lcom/android/athome/picker/MediaOutput;
.source "MediaOutputGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/athome/picker/MediaOutputGroup$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/athome/picker/MediaOutputGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/athome/picker/MediaOutput;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    new-instance v0, Lcom/android/athome/picker/MediaOutputGroup$1;

    invoke-direct {v0}, Lcom/android/athome/picker/MediaOutputGroup$1;-><init>()V

    sput-object v0, Lcom/android/athome/picker/MediaOutputGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .parameter "in"

    .prologue
    .line 33
    new-instance v2, Lcom/android/athome/picker/MediaOutputGroup$Builder;

    new-instance v3, Lcom/android/athome/picker/MediaOutput;

    invoke-direct {v3, p1}, Lcom/android/athome/picker/MediaOutput;-><init>(Landroid/os/Parcel;)V

    invoke-direct {v2, v3}, Lcom/android/athome/picker/MediaOutputGroup$Builder;-><init>(Lcom/android/athome/picker/MediaOutput;)V

    invoke-direct {p0, v2}, Lcom/android/athome/picker/MediaOutputGroup;-><init>(Lcom/android/athome/picker/MediaOutputGroup$Builder;)V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 35
    .local v1, numOutputs:I
    if-lez v1, :cond_23

    .line 36
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    if-ge v0, v1, :cond_23

    .line 37
    iget-object v2, p0, Lcom/android/athome/picker/MediaOutputGroup;->mItems:Ljava/util/List;

    new-instance v3, Lcom/android/athome/picker/MediaOutput;

    invoke-direct {v3, p1}, Lcom/android/athome/picker/MediaOutput;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 40
    .end local v0           #i:I
    :cond_23
    return-void
.end method

.method public constructor <init>(Lcom/android/athome/picker/MediaOutputGroup$Builder;)V
    .registers 10
    .parameter "builder"

    .prologue
    .line 28
    #getter for: Lcom/android/athome/picker/MediaOutputGroup$Builder;->mId:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/athome/picker/MediaOutputGroup$Builder;->access$000(Lcom/android/athome/picker/MediaOutputGroup$Builder;)Ljava/lang/String;

    move-result-object v1

    #getter for: Lcom/android/athome/picker/MediaOutputGroup$Builder;->mType:I
    invoke-static {p1}, Lcom/android/athome/picker/MediaOutputGroup$Builder;->access$100(Lcom/android/athome/picker/MediaOutputGroup$Builder;)I

    move-result v2

    #getter for: Lcom/android/athome/picker/MediaOutputGroup$Builder;->mName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/athome/picker/MediaOutputGroup$Builder;->access$200(Lcom/android/athome/picker/MediaOutputGroup$Builder;)Ljava/lang/String;

    move-result-object v3

    #getter for: Lcom/android/athome/picker/MediaOutputGroup$Builder;->mStatus:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/athome/picker/MediaOutputGroup$Builder;->access$300(Lcom/android/athome/picker/MediaOutputGroup$Builder;)Ljava/lang/String;

    move-result-object v4

    #getter for: Lcom/android/athome/picker/MediaOutputGroup$Builder;->mVolume:F
    invoke-static {p1}, Lcom/android/athome/picker/MediaOutputGroup$Builder;->access$400(Lcom/android/athome/picker/MediaOutputGroup$Builder;)F

    move-result v5

    #getter for: Lcom/android/athome/picker/MediaOutputGroup$Builder;->mIsMuted:Z
    invoke-static {p1}, Lcom/android/athome/picker/MediaOutputGroup$Builder;->access$500(Lcom/android/athome/picker/MediaOutputGroup$Builder;)Z

    move-result v6

    #getter for: Lcom/android/athome/picker/MediaOutputGroup$Builder;->mItems:Ljava/util/List;
    invoke-static {p1}, Lcom/android/athome/picker/MediaOutputGroup$Builder;->access$600(Lcom/android/athome/picker/MediaOutputGroup$Builder;)Ljava/util/List;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/athome/picker/MediaOutputGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;FZLjava/util/List;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;FZLjava/util/List;)V
    .registers 9
    .parameter "id"
    .parameter "type"
    .parameter "name"
    .parameter "status"
    .parameter "volume"
    .parameter "isMuted"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FZ",
            "Ljava/util/List",
            "<",
            "Lcom/android/athome/picker/MediaOutput;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p7, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/athome/picker/MediaOutput;>;"
    invoke-direct/range {p0 .. p6}, Lcom/android/athome/picker/MediaOutput;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;FZ)V

    .line 20
    if-nez p7, :cond_d

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/MediaOutputGroup;->mItems:Ljava/util/List;

    .line 25
    :goto_c
    return-void

    .line 23
    :cond_d
    iput-object p7, p0, Lcom/android/athome/picker/MediaOutputGroup;->mItems:Ljava/util/List;

    goto :goto_c
.end method

.method private setGroupMuted(Z)V
    .registers 5
    .parameter "isMuted"

    .prologue
    .line 201
    iget-object v2, p0, Lcom/android/athome/picker/MediaOutputGroup;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/athome/picker/MediaOutput;

    .line 202
    .local v1, receiver:Lcom/android/athome/picker/MediaOutput;
    invoke-virtual {v1, p1}, Lcom/android/athome/picker/MediaOutput;->setIsMuted(Z)V

    goto :goto_6

    .line 204
    .end local v1           #receiver:Lcom/android/athome/picker/MediaOutput;
    :cond_16
    return-void
.end method

.method private setGroupVolume(F)V
    .registers 5
    .parameter "volume"

    .prologue
    .line 207
    iget-object v2, p0, Lcom/android/athome/picker/MediaOutputGroup;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/athome/picker/MediaOutput;

    .line 208
    .local v1, receiver:Lcom/android/athome/picker/MediaOutput;
    invoke-virtual {v1, p1}, Lcom/android/athome/picker/MediaOutput;->setVolume(F)V

    goto :goto_6

    .line 210
    .end local v1           #receiver:Lcom/android/athome/picker/MediaOutput;
    :cond_16
    return-void
.end method


# virtual methods
.method public add(Lcom/android/athome/picker/MediaOutput;)Z
    .registers 5
    .parameter "output"

    .prologue
    .line 146
    if-nez p1, :cond_a

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_a
    instance-of v0, p1, Lcom/android/athome/picker/MediaOutputGroup;

    if-eqz v0, :cond_16

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t add a group to an existing group."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_16
    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutput;->isGroupable()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutput;->getType()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/athome/picker/MediaOutputGroup;->getType()I

    move-result v1

    if-eq v0, v1, :cond_51

    .line 153
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/athome/picker/MediaOutput;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "to a group of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/athome/picker/MediaOutputGroup;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_51
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputGroup;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public contains(Lcom/android/athome/picker/MediaOutput;)Z
    .registers 3
    .parameter "output"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputGroup;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getGroupMaxVolume()F
    .registers 5

    .prologue
    .line 215
    const/high16 v2, 0x7fc0

    .line 217
    .local v2, result:F
    iget-object v3, p0, Lcom/android/athome/picker/MediaOutputGroup;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/athome/picker/MediaOutput;

    .line 218
    .local v1, receiver:Lcom/android/athome/picker/MediaOutput;
    invoke-virtual {v1}, Lcom/android/athome/picker/MediaOutput;->getIsMuted()Z

    move-result v3

    if-nez v3, :cond_8

    .line 221
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 222
    invoke-virtual {v1}, Lcom/android/athome/picker/MediaOutput;->getVolume()F

    move-result v2

    goto :goto_8

    .line 224
    :cond_25
    invoke-virtual {v1}, Lcom/android/athome/picker/MediaOutput;->getVolume()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_8

    .line 228
    .end local v1           #receiver:Lcom/android/athome/picker/MediaOutput;
    :cond_2e
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_35

    const/4 v2, 0x0

    .end local v2           #result:F
    :cond_35
    return v2
.end method

.method public getIsMuted()Z
    .registers 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/athome/picker/MediaOutputGroup;->isGroupMuted()Z

    move-result v0

    return v0
.end method

.method public getMediaOutputs()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/athome/picker/MediaOutput;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputGroup;->mItems:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getVolume()F
    .registers 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/athome/picker/MediaOutputGroup;->getGroupMaxVolume()F

    move-result v0

    return v0
.end method

.method public isGroupMuted()Z
    .registers 5

    .prologue
    .line 232
    const/4 v2, 0x1

    .line 233
    .local v2, result:Z
    iget-object v3, p0, Lcom/android/athome/picker/MediaOutputGroup;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/athome/picker/MediaOutput;

    .line 234
    .local v1, receiver:Lcom/android/athome/picker/MediaOutput;
    invoke-virtual {v1}, Lcom/android/athome/picker/MediaOutput;->getIsMuted()Z

    move-result v3

    if-nez v3, :cond_7

    .line 235
    const/4 v2, 0x0

    .line 239
    .end local v1           #receiver:Lcom/android/athome/picker/MediaOutput;
    :cond_1a
    return v2
.end method

.method public remove(Lcom/android/athome/picker/MediaOutput;)Z
    .registers 3
    .parameter "output"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputGroup;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setIsMuted(Z)V
    .registers 2
    .parameter "isMuted"

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/android/athome/picker/MediaOutput;->setIsMuted(Z)V

    .line 186
    invoke-direct {p0, p1}, Lcom/android/athome/picker/MediaOutputGroup;->setGroupMuted(Z)V

    .line 187
    return-void
.end method

.method public setVolume(F)V
    .registers 2
    .parameter "volume"

    .prologue
    .line 196
    invoke-super {p0, p1}, Lcom/android/athome/picker/MediaOutput;->setVolume(F)V

    .line 197
    invoke-direct {p0, p1}, Lcom/android/athome/picker/MediaOutputGroup;->setGroupVolume(F)V

    .line 198
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputGroup;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/athome/picker/MediaOutputGroup;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/athome/picker/MediaOutput;

    .line 73
    .local v2, out:Lcom/android/athome/picker/MediaOutput;
    invoke-virtual {v2}, Lcom/android/athome/picker/MediaOutput;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 76
    .end local v2           #out:Lcom/android/athome/picker/MediaOutput;
    :cond_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/athome/picker/MediaOutput;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "groupSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/athome/picker/MediaOutputGroup;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mItems:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/android/athome/picker/MediaOutput;->writeToParcel(Landroid/os/Parcel;I)V

    .line 63
    iget-object v2, p0, Lcom/android/athome/picker/MediaOutputGroup;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-object v2, p0, Lcom/android/athome/picker/MediaOutputGroup;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/athome/picker/MediaOutput;

    .line 65
    .local v1, out:Lcom/android/athome/picker/MediaOutput;
    invoke-virtual {v1, p1, p2}, Lcom/android/athome/picker/MediaOutput;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    .line 67
    .end local v1           #out:Lcom/android/athome/picker/MediaOutput;
    :cond_22
    return-void
.end method
