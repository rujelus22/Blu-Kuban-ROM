.class public Lcom/sec/dsm/system/DSMManager;
.super Ljava/lang/Object;
.source "DSMManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/dsm/system/DSMManager$ValueIndex;
    }
.end annotation


# instance fields
.field private dSMRepository:Lcom/sec/dsm/system/DSMRepository;

.field private mcontext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/DSMException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/dsm/system/DSMManager;->mcontext:Landroid/content/Context;

    .line 49
    :try_start_6
    iput-object p1, p0, Lcom/sec/dsm/system/DSMManager;->mcontext:Landroid/content/Context;

    .line 51
    new-instance v1, Lcom/sec/dsm/system/DSMRepository;

    iget-object v2, p0, Lcom/sec/dsm/system/DSMManager;->mcontext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/dsm/system/DSMRepository;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/dsm/system/DSMManager;->dSMRepository:Lcom/sec/dsm/system/DSMRepository;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_12

    .line 56
    return-void

    .line 52
    :catch_12
    move-exception v0

    .line 53
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 54
    new-instance v1, Lcom/sec/dsm/system/DSMException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sec/dsm/system/DSMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private containsKey(Lcom/sec/dsm/system/DSMManager$ValueIndex;)Z
    .registers 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/DSMException;
        }
    .end annotation

    .prologue
    .line 274
    if-nez p1, :cond_8

    .line 275
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 278
    :cond_8
    invoke-virtual {p1}, Lcom/sec/dsm/system/DSMManager$ValueIndex;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/dsm/system/DSMManager;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private containsKey(Ljava/lang/String;)Z
    .registers 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/DSMException;
        }
    .end annotation

    .prologue
    .line 281
    if-nez p1, :cond_8

    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 285
    :cond_8
    iget-object v0, p0, Lcom/sec/dsm/system/DSMManager;->dSMRepository:Lcom/sec/dsm/system/DSMRepository;

    invoke-virtual {v0, p1}, Lcom/sec/dsm/system/DSMRepository;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private get(Lcom/sec/dsm/system/DSMManager$ValueIndex;)Ljava/lang/String;
    .registers 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/DSMException;
        }
    .end annotation

    .prologue
    .line 289
    if-nez p1, :cond_8

    .line 290
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 293
    :cond_8
    invoke-virtual {p1}, Lcom/sec/dsm/system/DSMManager$ValueIndex;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/dsm/system/DSMManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/DSMException;
        }
    .end annotation

    .prologue
    .line 297
    if-nez p1, :cond_8

    .line 298
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 301
    :cond_8
    iget-object v0, p0, Lcom/sec/dsm/system/DSMManager;->dSMRepository:Lcom/sec/dsm/system/DSMRepository;

    invoke-virtual {v0, p1}, Lcom/sec/dsm/system/DSMRepository;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private put(Lcom/sec/dsm/system/DSMManager$ValueIndex;Ljava/lang/String;)V
    .registers 4
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/DSMException;
        }
    .end annotation

    .prologue
    .line 305
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 306
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 309
    :cond_a
    invoke-virtual {p1}, Lcom/sec/dsm/system/DSMManager$ValueIndex;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sec/dsm/system/DSMManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method private put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/DSMException;
        }
    .end annotation

    .prologue
    .line 313
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 314
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 317
    :cond_a
    iget-object v0, p0, Lcom/sec/dsm/system/DSMManager;->dSMRepository:Lcom/sec/dsm/system/DSMRepository;

    invoke-virtual {v0, p1, p2}, Lcom/sec/dsm/system/DSMRepository;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method private remove(Lcom/sec/dsm/system/DSMManager$ValueIndex;)V
    .registers 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/DSMException;
        }
    .end annotation

    .prologue
    .line 321
    if-nez p1, :cond_8

    .line 322
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 325
    :cond_8
    invoke-virtual {p1}, Lcom/sec/dsm/system/DSMManager$ValueIndex;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/dsm/system/DSMManager;->remove(Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method private remove(Ljava/lang/String;)V
    .registers 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/DSMException;
        }
    .end annotation

    .prologue
    .line 329
    if-nez p1, :cond_8

    .line 330
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 333
    :cond_8
    iget-object v0, p0, Lcom/sec/dsm/system/DSMManager;->dSMRepository:Lcom/sec/dsm/system/DSMRepository;

    invoke-virtual {v0, p1}, Lcom/sec/dsm/system/DSMRepository;->remove(Ljava/lang/String;)V

    .line 334
    return-void
.end method


# virtual methods
.method public containsDSMRing()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/DSMException;
        }
    .end annotation

    .prologue
    .line 212
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMRing:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0}, Lcom/sec/dsm/system/DSMManager;->containsKey(Lcom/sec/dsm/system/DSMManager$ValueIndex;)Z

    move-result v0

    return v0
.end method

.method public containsDSMTracking()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/DSMException;
        }
    .end annotation

    .prologue
    .line 184
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMTracking:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0}, Lcom/sec/dsm/system/DSMManager;->containsKey(Lcom/sec/dsm/system/DSMManager$ValueIndex;)Z

    move-result v0

    return v0
.end method

.method public containsDSMWipeOut()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/DSMException;
        }
    .end annotation

    .prologue
    .line 200
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMWipeOut:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0}, Lcom/sec/dsm/system/DSMManager;->containsKey(Lcom/sec/dsm/system/DSMManager$ValueIndex;)Z

    move-result v0

    return v0
.end method

.method public containsSMSForwarding()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/DSMException;
        }
    .end annotation

    .prologue
    .line 220
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->SMSForwarding:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0}, Lcom/sec/dsm/system/DSMManager;->containsKey(Lcom/sec/dsm/system/DSMManager$ValueIndex;)Z

    move-result v0

    return v0
.end method

.method public getDSMIMSI()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/DSMException;
        }
    .end annotation

    .prologue
    .line 91
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMIMSI:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0}, Lcom/sec/dsm/system/DSMManager;->get(Lcom/sec/dsm/system/DSMManager$ValueIndex;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDSMInterval()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/DSMException;
        }
    .end annotation

    .prologue
    .line 71
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMInterval:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0}, Lcom/sec/dsm/system/DSMManager;->get(Lcom/sec/dsm/system/DSMManager$ValueIndex;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDSMStartTime()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/DSMException;
        }
    .end annotation

    .prologue
    .line 63
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMStartTime:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0}, Lcom/sec/dsm/system/DSMManager;->get(Lcom/sec/dsm/system/DSMManager$ValueIndex;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDSMStopTime()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/DSMException;
        }
    .end annotation

    .prologue
    .line 67
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMStopTime:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0}, Lcom/sec/dsm/system/DSMManager;->get(Lcom/sec/dsm/system/DSMManager$ValueIndex;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDSMWipeOut()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/DSMException;
        }
    .end annotation

    .prologue
    .line 75
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMWipeOut:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0}, Lcom/sec/dsm/system/DSMManager;->get(Lcom/sec/dsm/system/DSMManager$ValueIndex;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putDSMIMSI(Ljava/lang/String;)V
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/DSMException;
        }
    .end annotation

    .prologue
    .line 175
    if-nez p1, :cond_8

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 178
    :cond_8
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMIMSI:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0, p1}, Lcom/sec/dsm/system/DSMManager;->put(Lcom/sec/dsm/system/DSMManager$ValueIndex;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public putDSMInterval(Ljava/lang/String;)V
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/DSMException;
        }
    .end annotation

    .prologue
    .line 126
    if-nez p1, :cond_8

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 129
    :cond_8
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMInterval:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0, p1}, Lcom/sec/dsm/system/DSMManager;->put(Lcom/sec/dsm/system/DSMManager$ValueIndex;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public putDSMRing(Ljava/lang/String;)V
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/DSMException;
        }
    .end annotation

    .prologue
    .line 154
    if-nez p1, :cond_8

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 157
    :cond_8
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMRing:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0, p1}, Lcom/sec/dsm/system/DSMManager;->put(Lcom/sec/dsm/system/DSMManager$ValueIndex;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public putDSMStartTime(Ljava/lang/String;)V
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/DSMException;
        }
    .end annotation

    .prologue
    .line 112
    if-nez p1, :cond_8

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 115
    :cond_8
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMStartTime:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0, p1}, Lcom/sec/dsm/system/DSMManager;->put(Lcom/sec/dsm/system/DSMManager$ValueIndex;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public putDSMStopTime(Ljava/lang/String;)V
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/DSMException;
        }
    .end annotation

    .prologue
    .line 119
    if-nez p1, :cond_8

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 122
    :cond_8
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMStopTime:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0, p1}, Lcom/sec/dsm/system/DSMManager;->put(Lcom/sec/dsm/system/DSMManager$ValueIndex;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public putDSMTracking(Ljava/lang/String;)V
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/DSMException;
        }
    .end annotation

    .prologue
    .line 105
    if-nez p1, :cond_8

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 108
    :cond_8
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMTracking:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0, p1}, Lcom/sec/dsm/system/DSMManager;->put(Lcom/sec/dsm/system/DSMManager$ValueIndex;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public putDSMWipeOut(Ljava/lang/String;)V
    .registers 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/DSMException;
        }
    .end annotation

    .prologue
    .line 133
    if-nez p1, :cond_8

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 136
    :cond_8
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMWipeOut:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0, p1}, Lcom/sec/dsm/system/DSMManager;->put(Lcom/sec/dsm/system/DSMManager$ValueIndex;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public removeDSMIMSI()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/DSMException;
        }
    .end annotation

    .prologue
    .line 254
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMIMSI:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0}, Lcom/sec/dsm/system/DSMManager;->remove(Lcom/sec/dsm/system/DSMManager$ValueIndex;)V

    .line 255
    return-void
.end method

.method public removeDSMRing()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/DSMException;
        }
    .end annotation

    .prologue
    .line 246
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMRing:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0}, Lcom/sec/dsm/system/DSMManager;->remove(Lcom/sec/dsm/system/DSMManager$ValueIndex;)V

    .line 247
    return-void
.end method

.method public removeDSMTracking()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/DSMException;
        }
    .end annotation

    .prologue
    .line 230
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMTracking:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0}, Lcom/sec/dsm/system/DSMManager;->remove(Lcom/sec/dsm/system/DSMManager$ValueIndex;)V

    .line 231
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMStartTime:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0}, Lcom/sec/dsm/system/DSMManager;->remove(Lcom/sec/dsm/system/DSMManager$ValueIndex;)V

    .line 232
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMStopTime:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0}, Lcom/sec/dsm/system/DSMManager;->remove(Lcom/sec/dsm/system/DSMManager$ValueIndex;)V

    .line 233
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMInterval:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0}, Lcom/sec/dsm/system/DSMManager;->remove(Lcom/sec/dsm/system/DSMManager$ValueIndex;)V

    .line 234
    return-void
.end method

.method public removeInitialization()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/DSMException;
        }
    .end annotation

    .prologue
    .line 258
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMTracking:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0}, Lcom/sec/dsm/system/DSMManager;->remove(Lcom/sec/dsm/system/DSMManager$ValueIndex;)V

    .line 259
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMStartTime:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0}, Lcom/sec/dsm/system/DSMManager;->remove(Lcom/sec/dsm/system/DSMManager$ValueIndex;)V

    .line 260
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMStopTime:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0}, Lcom/sec/dsm/system/DSMManager;->remove(Lcom/sec/dsm/system/DSMManager$ValueIndex;)V

    .line 261
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMInterval:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0}, Lcom/sec/dsm/system/DSMManager;->remove(Lcom/sec/dsm/system/DSMManager$ValueIndex;)V

    .line 262
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMRing:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0}, Lcom/sec/dsm/system/DSMManager;->remove(Lcom/sec/dsm/system/DSMManager$ValueIndex;)V

    .line 263
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMWipeOut:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0}, Lcom/sec/dsm/system/DSMManager;->remove(Lcom/sec/dsm/system/DSMManager$ValueIndex;)V

    .line 264
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMWipeOutResult:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0}, Lcom/sec/dsm/system/DSMManager;->remove(Lcom/sec/dsm/system/DSMManager$ValueIndex;)V

    .line 265
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMForwardingResult:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0}, Lcom/sec/dsm/system/DSMManager;->remove(Lcom/sec/dsm/system/DSMManager$ValueIndex;)V

    .line 266
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->SMSForwarding:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0}, Lcom/sec/dsm/system/DSMManager;->remove(Lcom/sec/dsm/system/DSMManager$ValueIndex;)V

    .line 267
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMIMSI:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0}, Lcom/sec/dsm/system/DSMManager;->remove(Lcom/sec/dsm/system/DSMManager$ValueIndex;)V

    .line 268
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->SMSRecipient:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0}, Lcom/sec/dsm/system/DSMManager;->remove(Lcom/sec/dsm/system/DSMManager$ValueIndex;)V

    .line 269
    return-void
.end method

.method public removeSMSForwarding()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/DSMException;
        }
    .end annotation

    .prologue
    .line 250
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->SMSForwarding:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-direct {p0, v0}, Lcom/sec/dsm/system/DSMManager;->remove(Lcom/sec/dsm/system/DSMManager$ValueIndex;)V

    .line 251
    return-void
.end method
