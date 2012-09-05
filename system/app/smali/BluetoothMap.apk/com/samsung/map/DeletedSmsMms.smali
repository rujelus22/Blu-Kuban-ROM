.class Lcom/samsung/map/DeletedSmsMms;
.super Ljava/lang/Object;
.source "MmsSmsMessageFolder.java"


# instance fields
.field public DateTime:Ljava/util/Date;

.field public Handle:I

.field public attachmentSize:I

.field public priority:Z

.field public protect:Z

.field public read:Z

.field public receptionStatus:I

.field public recipientAddressing:Ljava/lang/String;

.field public recipientName:Ljava/lang/String;

.field public replaytoAddressing:Ljava/lang/String;

.field public senderAddressing:Ljava/lang/String;

.field public senderName:Ljava/lang/String;

.field public sent:Z

.field public size:I

.field public subject:Ljava/lang/String;

.field public text:Z

.field public type:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIIZZZZ)V
    .registers 19
    .parameter "Handle"
    .parameter "subject"
    .parameter "DateTime"
    .parameter "senderName"
    .parameter "senderAddressing"
    .parameter "replaytoAddressing"
    .parameter "recipientName"
    .parameter "recipientAddressing"
    .parameter "type"
    .parameter "size"
    .parameter "text"
    .parameter "receptionStatus"
    .parameter "attachmentSize"
    .parameter "priority"
    .parameter "read"
    .parameter "sent"
    .parameter "protect"

    .prologue
    .line 141
    iput p1, p0, Lcom/samsung/map/DeletedSmsMms;->Handle:I

    .line 142
    iput-object p2, p0, Lcom/samsung/map/DeletedSmsMms;->subject:Ljava/lang/String;

    .line 143
    iput-object p3, p0, Lcom/samsung/map/DeletedSmsMms;->DateTime:Ljava/util/Date;

    .line 144
    iput-object p4, p0, Lcom/samsung/map/DeletedSmsMms;->senderName:Ljava/lang/String;

    .line 145
    iput-object p5, p0, Lcom/samsung/map/DeletedSmsMms;->senderAddressing:Ljava/lang/String;

    .line 146
    iput-object p6, p0, Lcom/samsung/map/DeletedSmsMms;->replaytoAddressing:Ljava/lang/String;

    .line 147
    iput-object p7, p0, Lcom/samsung/map/DeletedSmsMms;->recipientName:Ljava/lang/String;

    .line 148
    iput-object p8, p0, Lcom/samsung/map/DeletedSmsMms;->recipientAddressing:Ljava/lang/String;

    .line 149
    iput p9, p0, Lcom/samsung/map/DeletedSmsMms;->type:I

    .line 150
    iput p10, p0, Lcom/samsung/map/DeletedSmsMms;->size:I

    .line 151
    iput-boolean p11, p0, Lcom/samsung/map/DeletedSmsMms;->text:Z

    .line 152
    iput p12, p0, Lcom/samsung/map/DeletedSmsMms;->receptionStatus:I

    .line 153
    iput p13, p0, Lcom/samsung/map/DeletedSmsMms;->attachmentSize:I

    .line 154
    iput-boolean p14, p0, Lcom/samsung/map/DeletedSmsMms;->priority:Z

    .line 155
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/samsung/map/DeletedSmsMms;->read:Z

    .line 156
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/samsung/map/DeletedSmsMms;->sent:Z

    .line 157
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/samsung/map/DeletedSmsMms;->protect:Z

    .line 158
    return-void
.end method
