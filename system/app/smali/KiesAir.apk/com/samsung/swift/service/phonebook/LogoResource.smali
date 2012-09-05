.class public Lcom/samsung/swift/service/phonebook/LogoResource;
.super Lcom/samsung/swift/util/Resource;
.source "LogoResource.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/samsung/swift/util/Resource;-><init>()V

    .line 110
    sget-object v0, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->inc()V

    .line 111
    return-void
.end method

.method private constructor <init>(J)V
    .registers 4
    .parameter "peer"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/samsung/swift/util/Resource;-><init>(J)V

    .line 102
    sget-object v0, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->inc()V

    .line 103
    return-void
.end method


# virtual methods
.method protected native create()J
.end method

.method protected native destroy(J)V
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 139
    :try_start_0
    invoke-super {p0}, Lcom/samsung/swift/util/Resource;->finalize()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_9

    .line 143
    sget-object v0, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->dec()V

    .line 145
    return-void

    .line 143
    :catchall_9
    move-exception v0

    sget-object v1, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v1}, Lcom/samsung/swift/util/PeerRefCounter;->dec()V

    throw v0
.end method

.method public native getContactId()J
.end method

.method public native getMimeType()Ljava/lang/String;
.end method

.method public native getPath()Ljava/lang/String;
.end method

.method public native getRevision()Ljava/lang/String;
.end method

.method public native setContactId(J)V
.end method

.method public native setMimeType(Ljava/lang/String;)V
.end method

.method public native setRevision(Ljava/lang/String;)V
.end method
