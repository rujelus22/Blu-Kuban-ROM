.class public Ljavax/mail/Flags;
.super Ljava/lang/Object;
.source "Flags.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/Flags$Flag;
    }
.end annotation


# instance fields
.field private systemFlags:I

.field private userFlags:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 117
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/Flags;->systemFlags:I

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Flags;->userFlags:Ljava/util/HashMap;

    .line 120
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Flags;)V
    .registers 3
    .parameter

    .prologue
    .line 126
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iget v0, p1, Ljavax/mail/Flags;->systemFlags:I

    iput v0, p0, Ljavax/mail/Flags;->systemFlags:I

    .line 128
    iget-object v0, p1, Ljavax/mail/Flags;->userFlags:Ljava/util/HashMap;

    if-eqz v0, :cond_16

    .line 130
    iget-object v0, p1, Ljavax/mail/Flags;->userFlags:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Ljavax/mail/Flags;->userFlags:Ljava/util/HashMap;

    .line 136
    :goto_15
    return-void

    .line 134
    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Flags;->userFlags:Ljava/util/HashMap;

    goto :goto_15
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Ljavax/mail/Flags;->userFlags:Ljava/util/HashMap;

    if-nez v0, :cond_c

    .line 172
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljavax/mail/Flags;->userFlags:Ljava/util/HashMap;

    .line 174
    :cond_c
    iget-object v1, p0, Ljavax/mail/Flags;->userFlags:Ljava/util/HashMap;

    monitor-enter v1

    .line 176
    :try_start_f
    iget-object v0, p0, Ljavax/mail/Flags;->userFlags:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    monitor-exit v1

    .line 178
    return-void

    .line 177
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public add(Ljavax/mail/Flags$Flag;)V
    .registers 4
    .parameter

    .prologue
    .line 162
    iget v0, p0, Ljavax/mail/Flags;->systemFlags:I

    iget v1, p1, Ljavax/mail/Flags$Flag;->flag:I

    or-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/Flags;->systemFlags:I

    .line 163
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 378
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0, p0}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags;)V

    return-object v0
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 4
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Ljavax/mail/Flags;->userFlags:Ljava/util/HashMap;

    if-nez v0, :cond_6

    .line 264
    const/4 v0, 0x0

    .line 266
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Ljavax/mail/Flags;->userFlags:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public contains(Ljavax/mail/Flags$Flag;)Z
    .registers 4
    .parameter

    .prologue
    .line 254
    iget v0, p0, Ljavax/mail/Flags;->systemFlags:I

    iget v1, p1, Ljavax/mail/Flags$Flag;->flag:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public contains(Ljavax/mail/Flags;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 275
    iget v1, p0, Ljavax/mail/Flags;->systemFlags:I

    iget v2, p1, Ljavax/mail/Flags;->systemFlags:I

    and-int/2addr v1, v2

    if-nez v1, :cond_9

    .line 297
    :cond_8
    :goto_8
    return v0

    .line 279
    :cond_9
    iget-object v1, p1, Ljavax/mail/Flags;->userFlags:Ljava/util/HashMap;

    if-eqz v1, :cond_33

    .line 281
    iget-object v1, p0, Ljavax/mail/Flags;->userFlags:Ljava/util/HashMap;

    if-eqz v1, :cond_8

    .line 285
    iget-object v2, p0, Ljavax/mail/Flags;->userFlags:Ljava/util/HashMap;

    monitor-enter v2

    .line 287
    :try_start_14
    invoke-virtual {p1}, Ljavax/mail/Flags;->getUserFlags()[Ljava/lang/String;

    move-result-object v3

    move v1, v0

    .line 288
    :goto_19
    array-length v4, v3

    if-ge v1, v4, :cond_32

    .line 290
    iget-object v4, p0, Ljavax/mail/Flags;->userFlags:Ljava/util/HashMap;

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 292
    monitor-exit v2

    goto :goto_8

    .line 295
    :catchall_2c
    move-exception v0

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_14 .. :try_end_2e} :catchall_2c

    throw v0

    .line 288
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 295
    :cond_32
    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_2c

    .line 297
    :cond_33
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 302
    if-ne p1, p0, :cond_5

    .line 319
    :cond_4
    :goto_4
    return v0

    .line 306
    :cond_5
    instance-of v2, p1, Ljavax/mail/Flags;

    if-nez v2, :cond_b

    move v0, v1

    .line 308
    goto :goto_4

    .line 310
    :cond_b
    check-cast p1, Ljavax/mail/Flags;

    .line 311
    iget v2, p1, Ljavax/mail/Flags;->systemFlags:I

    iget v3, p0, Ljavax/mail/Flags;->systemFlags:I

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 313
    goto :goto_4

    .line 315
    :cond_15
    iget-object v2, p1, Ljavax/mail/Flags;->userFlags:Ljava/util/HashMap;

    if-nez v2, :cond_1d

    iget-object v2, p0, Ljavax/mail/Flags;->userFlags:Ljava/util/HashMap;

    if-eqz v2, :cond_4

    .line 319
    :cond_1d
    iget-object v2, p1, Ljavax/mail/Flags;->userFlags:Ljava/util/HashMap;

    if-eqz v2, :cond_2f

    iget-object v2, p0, Ljavax/mail/Flags;->userFlags:Ljava/util/HashMap;

    if-eqz v2, :cond_2f

    iget-object v2, p1, Ljavax/mail/Flags;->userFlags:Ljava/util/HashMap;

    iget-object v3, p0, Ljavax/mail/Flags;->userFlags:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2f
    move v0, v1

    goto :goto_4
.end method

.method public getSystemFlags()[Ljavax/mail/Flags$Flag;
    .registers 6

    .prologue
    .line 338
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x7

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 339
    invoke-static {}, Ljavax/mail/Flags$Flag;->access$000()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 341
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 342
    iget v3, p0, Ljavax/mail/Flags;->systemFlags:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_12

    .line 344
    invoke-static {}, Ljavax/mail/Flags$Flag;->access$000()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 347
    :cond_33
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/Flags$Flag;

    .line 348
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 349
    return-object v0
.end method

.method public getUserFlags()[Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 357
    iget-object v1, p0, Ljavax/mail/Flags;->userFlags:Ljava/util/HashMap;

    if-nez v1, :cond_8

    .line 359
    new-array v0, v0, [Ljava/lang/String;

    .line 371
    :goto_7
    return-object v0

    .line 363
    :cond_8
    iget-object v4, p0, Ljavax/mail/Flags;->userFlags:Ljava/util/HashMap;

    monitor-enter v4

    .line 365
    :try_start_b
    iget-object v1, p0, Ljavax/mail/Flags;->userFlags:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 367
    iget-object v2, p0, Ljavax/mail/Flags;->userFlags:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    :goto_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 369
    add-int/lit8 v3, v2, 0x1

    iget-object v0, p0, Ljavax/mail/Flags;->userFlags:Ljava/util/HashMap;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v2

    move v2, v3

    goto :goto_1e

    .line 371
    :cond_36
    monitor-exit v4

    move-object v0, v1

    goto :goto_7

    .line 372
    :catchall_39
    move-exception v0

    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_b .. :try_end_3b} :catchall_39

    throw v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 325
    iget v0, p0, Ljavax/mail/Flags;->systemFlags:I

    .line 326
    iget-object v1, p0, Ljavax/mail/Flags;->userFlags:Ljava/util/HashMap;

    if-eqz v1, :cond_d

    .line 328
    iget-object v1, p0, Ljavax/mail/Flags;->userFlags:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 330
    :cond_d
    return v0
.end method

.method public remove(Ljavax/mail/Flags$Flag;)V
    .registers 4
    .parameter

    .prologue
    .line 210
    iget v0, p0, Ljavax/mail/Flags;->systemFlags:I

    iget v1, p1, Ljavax/mail/Flags$Flag;->flag:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/Flags;->systemFlags:I

    .line 211
    return-void
.end method
