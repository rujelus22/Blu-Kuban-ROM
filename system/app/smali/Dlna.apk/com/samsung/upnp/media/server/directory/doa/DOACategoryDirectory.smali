.class public Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;
.super Lcom/samsung/upnp/media/server/Directory;
.source "DOACategoryDirectory.java"


# static fields
.field private static doaDatabase:Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;


# instance fields
.field private cduListener:Lcom/samsung/api/ContentsDirectoryUpdatedListener;

.field private prepared:Z

.field private type:I

.field updateHandler:Landroid/os/Handler;

.field updateThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->doaDatabase:Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .parameter "name"
    .parameter "type"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/upnp/media/server/Directory;-><init>(Ljava/lang/String;)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->type:I

    .line 30
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Contents Updater"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->updateThread:Landroid/os/HandlerThread;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->updateHandler:Landroid/os/Handler;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->prepared:Z

    .line 39
    invoke-static {}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->getInstance()Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;

    move-result-object v0

    sput-object v0, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->doaDatabase:Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;

    .line 40
    iput p2, p0, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->type:I

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->setRestricted(I)V

    .line 43
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->start()V

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;)[Lcom/samsung/upnp/media/server/object/item/ItemNode;
    .registers 2
    .parameter

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->getRecordedItemNodes()[Lcom/samsung/upnp/media/server/object/item/ItemNode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;)[Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;
    .registers 2
    .parameter

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->getCurrentRecordedInfos()[Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;)Lcom/samsung/api/ContentsDirectoryUpdatedListener;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->cduListener:Lcom/samsung/api/ContentsDirectoryUpdatedListener;

    return-object v0
.end method

.method private getCurrentRecordedInfos()[Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;
    .registers 3

    .prologue
    .line 153
    const/4 v0, 0x0

    check-cast v0, [Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;

    .line 154
    .local v0, recInfos:[Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;
    sget-object v1, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->doaDatabase:Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;

    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->open()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 155
    iget v1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->type:I

    packed-switch v1, :pswitch_data_2c

    .line 166
    :goto_10
    sget-object v1, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->doaDatabase:Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;

    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->close()V

    .line 169
    :cond_15
    return-object v0

    .line 157
    :pswitch_16
    sget-object v1, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->doaDatabase:Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;

    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->getVideoRecordedInfos()[Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;

    move-result-object v0

    .line 158
    goto :goto_10

    .line 160
    :pswitch_1d
    sget-object v1, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->doaDatabase:Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;

    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->getAudioRecordedInfos()[Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;

    move-result-object v0

    .line 161
    goto :goto_10

    .line 163
    :pswitch_24
    sget-object v1, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->doaDatabase:Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;

    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/directory/doa/DOADatabase;->getImageRecordedInfos()[Lcom/samsung/upnp/media/server/directory/doa/DOARecordedInfo;

    move-result-object v0

    goto :goto_10

    .line 155
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_24
        :pswitch_1d
        :pswitch_16
    .end packed-switch
.end method

.method private getRecordedItemNodes()[Lcom/samsung/upnp/media/server/object/item/ItemNode;
    .registers 5

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->getNContentNodes()I

    move-result v1

    .line 144
    .local v1, nContents:I
    new-array v2, v1, [Lcom/samsung/upnp/media/server/object/item/ItemNode;

    .line 145
    .local v2, recNode:[Lcom/samsung/upnp/media/server/object/item/ItemNode;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-lt v0, v1, :cond_a

    .line 149
    return-object v2

    .line 146
    :cond_a
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->getContentNode(I)Lcom/samsung/upnp/media/server/object/ContentNode;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/upnp/media/server/object/item/ItemNode;

    if-eqz v3, :cond_1a

    .line 147
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->getContentNode(I)Lcom/samsung/upnp/media/server/object/ContentNode;

    move-result-object v3

    check-cast v3, Lcom/samsung/upnp/media/server/object/item/ItemNode;

    aput-object v3, v2, v0

    .line 145
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->updateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 63
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 64
    return-void
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->type:I

    return v0
.end method

.method public start()V
    .registers 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->updateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_d

    .line 50
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->updateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 51
    :cond_d
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->updateHandler:Landroid/os/Handler;

    if-nez v0, :cond_1e

    .line 52
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->updateThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->updateHandler:Landroid/os/Handler;

    .line 53
    :cond_1e
    return-void
.end method

.method public update()V
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;->updateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory$1;

    invoke-direct {v1, p0}, Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory$1;-><init>(Lcom/samsung/upnp/media/server/directory/doa/DOACategoryDirectory;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    return-void
.end method
