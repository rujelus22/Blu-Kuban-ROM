.class public final Lcom/android/athome/picker/MediaOutputGroup;
.super Lcom/android/athome/picker/MediaOutput;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private mItems:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    new-instance v0, Lcom/android/athome/picker/o;

    invoke-direct {v0}, Lcom/android/athome/picker/o;-><init>()V

    sput-object v0, Lcom/android/athome/picker/MediaOutputGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .parameter

    .prologue
    .line 33
    new-instance v0, Lcom/android/athome/picker/p;

    new-instance v1, Lcom/android/athome/picker/MediaOutput;

    invoke-direct {v1, p1}, Lcom/android/athome/picker/MediaOutput;-><init>(Landroid/os/Parcel;)V

    invoke-direct {v0, v1}, Lcom/android/athome/picker/p;-><init>(Lcom/android/athome/picker/MediaOutput;)V

    invoke-direct {p0, v0}, Lcom/android/athome/picker/MediaOutputGroup;-><init>(Lcom/android/athome/picker/p;)V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 35
    if-lez v1, :cond_23

    .line 36
    const/4 v0, 0x0

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
    :cond_23
    return-void
.end method

.method public constructor <init>(Lcom/android/athome/picker/p;)V
    .registers 10
    .parameter

    .prologue
    .line 28
    invoke-static {p1}, Lcom/android/athome/picker/p;->a(Lcom/android/athome/picker/p;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/android/athome/picker/p;->b(Lcom/android/athome/picker/p;)I

    move-result v2

    invoke-static {p1}, Lcom/android/athome/picker/p;->c(Lcom/android/athome/picker/p;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/android/athome/picker/p;->d(Lcom/android/athome/picker/p;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/android/athome/picker/p;->e(Lcom/android/athome/picker/p;)F

    move-result v5

    invoke-static {p1}, Lcom/android/athome/picker/p;->f(Lcom/android/athome/picker/p;)Z

    move-result v6

    invoke-static {p1}, Lcom/android/athome/picker/p;->g(Lcom/android/athome/picker/p;)Ljava/util/List;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/athome/picker/MediaOutputGroup;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;FZLjava/util/List;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;FZLjava/util/List;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
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
    .registers 4
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputGroup;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/MediaOutput;

    .line 202
    invoke-virtual {v0, p1}, Lcom/android/athome/picker/MediaOutput;->setIsMuted(Z)V

    goto :goto_6

    .line 204
    :cond_16
    return-void
.end method

.method private setGroupVolume(F)V
    .registers 4
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputGroup;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/MediaOutput;

    .line 208
    invoke-virtual {v0, p1}, Lcom/android/athome/picker/MediaOutput;->setVolume(F)V

    goto :goto_6

    .line 210
    :cond_16
    return-void
.end method


# virtual methods
.method public final add(Lcom/android/athome/picker/MediaOutput;)Z
    .registers 5
    .parameter

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

    if-eq v0, v1, :cond_4d

    .line 153
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t add "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    :cond_4d
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputGroup;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final contains(Lcom/android/athome/picker/MediaOutput;)Z
    .registers 3
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputGroup;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final describeContents()I
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public final getGroupMaxVolume()F
    .registers 5

    .prologue
    .line 215
    const/high16 v0, 0x7fc0

    .line 217
    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputGroup;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/MediaOutput;

    .line 218
    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutput;->getIsMuted()Z

    move-result v3

    if-nez v3, :cond_9

    .line 219
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 222
    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutput;->getVolume()F

    move-result v0

    move v1, v0

    goto :goto_9

    .line 224
    :cond_27
    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutput;->getVolume()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v1, v0

    goto :goto_9

    .line 228
    :cond_31
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v1, 0x0

    :cond_38
    return v1
.end method

.method public final getIsMuted()Z
    .registers 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/athome/picker/MediaOutputGroup;->isGroupMuted()Z

    move-result v0

    return v0
.end method

.method public final getMediaOutputs()Ljava/util/List;
    .registers 3

    .prologue
    .line 164
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/athome/picker/MediaOutputGroup;->mItems:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getVolume()F
    .registers 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/athome/picker/MediaOutputGroup;->getGroupMaxVolume()F

    move-result v0

    return v0
.end method

.method public final isGroupMuted()Z
    .registers 4

    .prologue
    .line 232
    const/4 v1, 0x1

    .line 233
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputGroup;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/MediaOutput;

    .line 234
    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutput;->getIsMuted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 235
    const/4 v0, 0x0

    .line 239
    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    goto :goto_1a
.end method

.method public final remove(Lcom/android/athome/picker/MediaOutput;)Z
    .registers 3
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputGroup;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final setIsMuted(Z)V
    .registers 2
    .parameter

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/android/athome/picker/MediaOutput;->setIsMuted(Z)V

    .line 186
    invoke-direct {p0, p1}, Lcom/android/athome/picker/MediaOutputGroup;->setGroupMuted(Z)V

    .line 187
    return-void
.end method

.method public final setVolume(F)V
    .registers 2
    .parameter

    .prologue
    .line 196
    invoke-super {p0, p1}, Lcom/android/athome/picker/MediaOutput;->setVolume(F)V

    .line 197
    invoke-direct {p0, p1}, Lcom/android/athome/picker/MediaOutputGroup;->setGroupVolume(F)V

    .line 198
    return-void
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputGroup;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputGroup;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/MediaOutput;

    .line 73
    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutput;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 76
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/athome/picker/MediaOutput;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "groupSize:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/athome/picker/MediaOutputGroup;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mItems:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/android/athome/picker/MediaOutput;->writeToParcel(Landroid/os/Parcel;I)V

    .line 63
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputGroup;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-object v0, p0, Lcom/android/athome/picker/MediaOutputGroup;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/athome/picker/MediaOutput;

    .line 65
    invoke-virtual {v0, p1, p2}, Lcom/android/athome/picker/MediaOutput;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    .line 67
    :cond_22
    return-void
.end method
