.class public Lorg/columba/ristretto/message/Flags;
.super Ljava/lang/Object;
.source "Flags.java"

# interfaces
.implements Lorg/columba/ristretto/message/Saveable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ANSWERED:S = 0x1s

.field public static final DELETED:S = 0x40s

.field public static final DRAFT:S = 0x4s

.field public static final FLAGGED:S = 0x8s

.field public static final RECENT:S = 0x10s

.field public static final SEEN:S = 0x20s


# instance fields
.field private flags:S


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/columba/ristretto/message/Flags;->flags:S

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/io/ObjectInputStream;)V
    .registers 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p0, p1}, Lorg/columba/ristretto/message/Flags;->load(Ljava/io/ObjectInputStream;)V

    .line 102
    return-void
.end method

.method public constructor <init>(S)V
    .registers 2
    .parameter "flags"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-short p1, p0, Lorg/columba/ristretto/message/Flags;->flags:S

    .line 92
    return-void
.end method


# virtual methods
.method public clear(S)V
    .registers 4
    .parameter "mask"

    .prologue
    .line 143
    iget-short v0, p0, Lorg/columba/ristretto/message/Flags;->flags:S

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/columba/ristretto/message/Flags;->flags:S

    .line 144
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 293
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/columba/ristretto/message/Flags;

    .line 294
    .local v0, clone:Lorg/columba/ristretto/message/Flags;
    iget-short v2, p0, Lorg/columba/ristretto/message/Flags;->flags:S

    iput-short v2, v0, Lorg/columba/ristretto/message/Flags;->flags:S
    :try_end_a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_a} :catch_b

    .line 295
    return-object v0

    .line 296
    .end local v0           #clone:Lorg/columba/ristretto/message/Flags;
    :catch_b
    move-exception v1

    .line 297
    .local v1, e:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "obj"

    .prologue
    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, isEqual:Z
    if-eqz p1, :cond_11

    instance-of v2, p1, Lorg/columba/ristretto/message/Flags;

    if-eqz v2, :cond_11

    move-object v1, p1

    .line 319
    check-cast v1, Lorg/columba/ristretto/message/Flags;

    .line 320
    .local v1, other:Lorg/columba/ristretto/message/Flags;
    iget-short v2, p0, Lorg/columba/ristretto/message/Flags;->flags:S

    iget-short v3, v1, Lorg/columba/ristretto/message/Flags;->flags:S

    if-ne v2, v3, :cond_12

    const/4 v0, 0x1

    .line 322
    .end local v1           #other:Lorg/columba/ristretto/message/Flags;
    :cond_11
    :goto_11
    return v0

    .line 320
    .restart local v1       #other:Lorg/columba/ristretto/message/Flags;
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public get(S)Z
    .registers 3
    .parameter "mask"

    .prologue
    .line 111
    iget-short v0, p0, Lorg/columba/ristretto/message/Flags;->flags:S

    and-int/2addr v0, p1

    if-lez v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getAnswered()Z
    .registers 2

    .prologue
    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/columba/ristretto/message/Flags;->get(S)Z

    move-result v0

    return v0
.end method

.method public getDeleted()Z
    .registers 2

    .prologue
    .line 187
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lorg/columba/ristretto/message/Flags;->get(S)Z

    move-result v0

    return v0
.end method

.method public getDraft()Z
    .registers 2

    .prologue
    .line 194
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/columba/ristretto/message/Flags;->get(S)Z

    move-result v0

    return v0
.end method

.method public getFlagged()Z
    .registers 2

    .prologue
    .line 180
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/columba/ristretto/message/Flags;->get(S)Z

    move-result v0

    return v0
.end method

.method public getFlags()S
    .registers 2

    .prologue
    .line 305
    iget-short v0, p0, Lorg/columba/ristretto/message/Flags;->flags:S

    return v0
.end method

.method public getRecent()Z
    .registers 2

    .prologue
    .line 166
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/columba/ristretto/message/Flags;->get(S)Z

    move-result v0

    return v0
.end method

.method public getSeen()Z
    .registers 2

    .prologue
    .line 159
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/columba/ristretto/message/Flags;->get(S)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 327
    iget-short v0, p0, Lorg/columba/ristretto/message/Flags;->flags:S

    return v0
.end method

.method public load(Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/columba/ristretto/message/Flags;->flags:S

    .line 280
    return-void
.end method

.method public save(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    iget-short v0, p0, Lorg/columba/ristretto/message/Flags;->flags:S

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeShort(I)V

    .line 287
    return-void
.end method

.method public set(S)V
    .registers 3
    .parameter "mask"

    .prologue
    .line 134
    iget-short v0, p0, Lorg/columba/ristretto/message/Flags;->flags:S

    or-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/columba/ristretto/message/Flags;->flags:S

    .line 135
    return-void
.end method

.method public set(SZ)V
    .registers 3
    .parameter "mask"
    .parameter "value"

    .prologue
    .line 121
    if-eqz p2, :cond_6

    .line 122
    invoke-virtual {p0, p1}, Lorg/columba/ristretto/message/Flags;->set(S)V

    .line 126
    :goto_5
    return-void

    .line 124
    :cond_6
    invoke-virtual {p0, p1}, Lorg/columba/ristretto/message/Flags;->clear(S)V

    goto :goto_5
.end method

.method public setAnswered(Z)V
    .registers 3
    .parameter "b"

    .prologue
    const/4 v0, 0x1

    .line 229
    if-eqz p1, :cond_7

    .line 230
    invoke-virtual {p0, v0}, Lorg/columba/ristretto/message/Flags;->set(S)V

    .line 234
    :goto_6
    return-void

    .line 232
    :cond_7
    invoke-virtual {p0, v0}, Lorg/columba/ristretto/message/Flags;->clear(S)V

    goto :goto_6
.end method

.method public setDeleted(Z)V
    .registers 3
    .parameter "b"

    .prologue
    const/16 v0, 0x40

    .line 255
    if-eqz p1, :cond_8

    .line 256
    invoke-virtual {p0, v0}, Lorg/columba/ristretto/message/Flags;->set(S)V

    .line 260
    :goto_7
    return-void

    .line 258
    :cond_8
    invoke-virtual {p0, v0}, Lorg/columba/ristretto/message/Flags;->clear(S)V

    goto :goto_7
.end method

.method public setDraft(Z)V
    .registers 3
    .parameter "b"

    .prologue
    const/4 v0, 0x4

    .line 268
    if-eqz p1, :cond_7

    .line 269
    invoke-virtual {p0, v0}, Lorg/columba/ristretto/message/Flags;->set(S)V

    .line 273
    :goto_6
    return-void

    .line 271
    :cond_7
    invoke-virtual {p0, v0}, Lorg/columba/ristretto/message/Flags;->clear(S)V

    goto :goto_6
.end method

.method public setFlagged(Z)V
    .registers 3
    .parameter "b"

    .prologue
    const/16 v0, 0x8

    .line 242
    if-eqz p1, :cond_8

    .line 243
    invoke-virtual {p0, v0}, Lorg/columba/ristretto/message/Flags;->set(S)V

    .line 247
    :goto_7
    return-void

    .line 245
    :cond_8
    invoke-virtual {p0, v0}, Lorg/columba/ristretto/message/Flags;->clear(S)V

    goto :goto_7
.end method

.method public setFlags(S)V
    .registers 2
    .parameter "s"

    .prologue
    .line 312
    iput-short p1, p0, Lorg/columba/ristretto/message/Flags;->flags:S

    .line 313
    return-void
.end method

.method public setRecent(Z)V
    .registers 3
    .parameter "b"

    .prologue
    const/16 v0, 0x10

    .line 216
    if-eqz p1, :cond_8

    .line 217
    invoke-virtual {p0, v0}, Lorg/columba/ristretto/message/Flags;->set(S)V

    .line 221
    :goto_7
    return-void

    .line 219
    :cond_8
    invoke-virtual {p0, v0}, Lorg/columba/ristretto/message/Flags;->clear(S)V

    goto :goto_7
.end method

.method public setSeen(Z)V
    .registers 3
    .parameter "b"

    .prologue
    const/16 v0, 0x20

    .line 203
    if-eqz p1, :cond_8

    .line 204
    invoke-virtual {p0, v0}, Lorg/columba/ristretto/message/Flags;->set(S)V

    .line 208
    :goto_7
    return-void

    .line 206
    :cond_8
    invoke-virtual {p0, v0}, Lorg/columba/ristretto/message/Flags;->clear(S)V

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 332
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 333
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v1, "Flags[answered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    invoke-virtual {p0}, Lorg/columba/ristretto/message/Flags;->getAnswered()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 335
    const-string v1, ", draft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    invoke-virtual {p0}, Lorg/columba/ristretto/message/Flags;->getDraft()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 337
    const-string v1, ", expunged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    invoke-virtual {p0}, Lorg/columba/ristretto/message/Flags;->getDeleted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 339
    const-string v1, ", flagged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    invoke-virtual {p0}, Lorg/columba/ristretto/message/Flags;->getFlagged()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 341
    const-string v1, ", recent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    invoke-virtual {p0}, Lorg/columba/ristretto/message/Flags;->getRecent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 343
    const-string v1, ", seen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    invoke-virtual {p0}, Lorg/columba/ristretto/message/Flags;->getSeen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 345
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 346
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toggle(S)V
    .registers 3
    .parameter "mask"

    .prologue
    .line 152
    iget-short v0, p0, Lorg/columba/ristretto/message/Flags;->flags:S

    xor-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/columba/ristretto/message/Flags;->flags:S

    .line 153
    return-void
.end method
