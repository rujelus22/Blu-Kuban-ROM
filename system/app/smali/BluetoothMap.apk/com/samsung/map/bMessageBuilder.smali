.class public Lcom/samsung/map/bMessageBuilder;
.super Ljava/lang/Object;
.source "bMessageBuilder.java"


# instance fields
.field bbody:Lcom/samsung/map/BBODY;

.field bmsg:Lcom/samsung/map/BMSG;

.field emailHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/map/Header;",
            ">;"
        }
    .end annotation
.end field

.field folder:Ljava/lang/String;

.field read_status:Z

.field type:I

.field vcardo:Lcom/samsung/map/VCard;

.field vcardr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/map/VCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZILjava/lang/String;)V
    .registers 7
    .parameter "read_status"
    .parameter "type"
    .parameter "folder"

    .prologue
    const/4 v2, 0x0

    .line 316
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 306
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/map/bMessageBuilder;->read_status:Z

    .line 308
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/map/bMessageBuilder;->type:I

    .line 310
    const-string v1, "TELECOM/MSG/INBOX"

    iput-object v1, p0, Lcom/samsung/map/bMessageBuilder;->folder:Ljava/lang/String;

    .line 312
    iput-object v2, p0, Lcom/samsung/map/bMessageBuilder;->bmsg:Lcom/samsung/map/BMSG;

    .line 313
    iput-object v2, p0, Lcom/samsung/map/bMessageBuilder;->bbody:Lcom/samsung/map/BBODY;

    .line 317
    iput-boolean p1, p0, Lcom/samsung/map/bMessageBuilder;->read_status:Z

    .line 318
    iput p2, p0, Lcom/samsung/map/bMessageBuilder;->type:I

    .line 319
    iput-object p3, p0, Lcom/samsung/map/bMessageBuilder;->folder:Ljava/lang/String;

    .line 320
    iput-object v2, p0, Lcom/samsung/map/bMessageBuilder;->vcardo:Lcom/samsung/map/VCard;

    .line 321
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/map/bMessageBuilder;->vcardr:Ljava/util/ArrayList;

    .line 322
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/map/bMessageBuilder;->emailHeaders:Ljava/util/ArrayList;

    .line 324
    packed-switch p2, :pswitch_data_48

    .line 338
    :pswitch_2b
    const-string v0, ""

    .line 341
    .local v0, typestr:Ljava/lang/String;
    :goto_2d
    new-instance v2, Lcom/samsung/map/BMSG;

    if-eqz p1, :cond_45

    const-string v1, "READ"

    :goto_33
    invoke-direct {v2, v1, v0, p3}, Lcom/samsung/map/BMSG;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/map/bMessageBuilder;->bmsg:Lcom/samsung/map/BMSG;

    .line 342
    return-void

    .line 326
    .end local v0           #typestr:Ljava/lang/String;
    :pswitch_39
    const-string v0, "EMAIL"

    .line 327
    .restart local v0       #typestr:Ljava/lang/String;
    goto :goto_2d

    .line 329
    .end local v0           #typestr:Ljava/lang/String;
    :pswitch_3c
    const-string v0, "SMS_CDMA"

    .line 330
    .restart local v0       #typestr:Ljava/lang/String;
    goto :goto_2d

    .line 332
    .end local v0           #typestr:Ljava/lang/String;
    :pswitch_3f
    const-string v0, "SMS_GSM"

    .line 333
    .restart local v0       #typestr:Ljava/lang/String;
    goto :goto_2d

    .line 335
    .end local v0           #typestr:Ljava/lang/String;
    :pswitch_42
    const-string v0, "MMS"

    .line 336
    .restart local v0       #typestr:Ljava/lang/String;
    goto :goto_2d

    .line 341
    :cond_45
    const-string v1, "UNREAD"

    goto :goto_33

    .line 324
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_3c
        :pswitch_2b
        :pswitch_39
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_42
    .end packed-switch
.end method


# virtual methods
.method public addBodyPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "encoding"
    .parameter "charset"
    .parameter "language"
    .parameter "msg"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/samsung/map/bMessageBuilder;->bbody:Lcom/samsung/map/BBODY;

    if-nez v0, :cond_12

    .line 364
    new-instance v0, Lcom/samsung/map/BBODY;

    iget-object v4, p0, Lcom/samsung/map/bMessageBuilder;->emailHeaders:Ljava/util/ArrayList;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/map/BBODY;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/map/bMessageBuilder;->bbody:Lcom/samsung/map/BBODY;

    .line 368
    :goto_11
    return-void

    .line 366
    :cond_12
    iget-object v0, p0, Lcom/samsung/map/bMessageBuilder;->bbody:Lcom/samsung/map/BBODY;

    invoke-virtual {v0, p4}, Lcom/samsung/map/BBODY;->appendString(Ljava/lang/String;)V

    goto :goto_11
.end method

.method public addBodyPart([B)V
    .registers 8
    .parameter "buffer"

    .prologue
    const/4 v1, 0x0

    .line 371
    iget-object v0, p0, Lcom/samsung/map/bMessageBuilder;->bbody:Lcom/samsung/map/BBODY;

    if-nez v0, :cond_11

    .line 372
    new-instance v0, Lcom/samsung/map/BBODY;

    iget-object v4, p0, Lcom/samsung/map/bMessageBuilder;->emailHeaders:Ljava/util/ArrayList;

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/map/BBODY;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/map/bMessageBuilder;->bbody:Lcom/samsung/map/BBODY;

    .line 374
    :cond_11
    iget-object v0, p0, Lcom/samsung/map/bMessageBuilder;->bbody:Lcom/samsung/map/BBODY;

    invoke-virtual {v0, p1}, Lcom/samsung/map/BBODY;->appendBytes([B)V

    .line 375
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "value"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/samsung/map/bMessageBuilder;->emailHeaders:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/map/Header;

    invoke-direct {v1, p1, p2}, Lcom/samsung/map/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    return-void
.end method

.method public addOriginatorVcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "phone"
    .parameter "email"

    .prologue
    .line 355
    new-instance v0, Lcom/samsung/map/VCard;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/map/VCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/map/bMessageBuilder;->vcardo:Lcom/samsung/map/VCard;

    .line 356
    return-void
.end method

.method public addRecipientVcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "name"
    .parameter "phone"
    .parameter "email"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/samsung/map/bMessageBuilder;->vcardr:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/map/VCard;

    invoke-direct {v1, p1, p2, p3}, Lcom/samsung/map/VCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    return-void
.end method

.method public toByteArray()[B
    .registers 5

    .prologue
    .line 379
    new-instance v0, Lcom/samsung/map/BENV;

    iget-object v2, p0, Lcom/samsung/map/bMessageBuilder;->vcardr:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/map/bMessageBuilder;->bbody:Lcom/samsung/map/BBODY;

    invoke-direct {v0, v2, v3}, Lcom/samsung/map/BENV;-><init>(Ljava/util/ArrayList;Lcom/samsung/map/BBODY;)V

    .line 380
    .local v0, env:Lcom/samsung/map/BENV;
    iget-object v2, p0, Lcom/samsung/map/bMessageBuilder;->bmsg:Lcom/samsung/map/BMSG;

    iget-object v3, p0, Lcom/samsung/map/bMessageBuilder;->vcardo:Lcom/samsung/map/VCard;

    iput-object v3, v2, Lcom/samsung/map/BMSG;->originator:Lcom/samsung/map/VCard;

    .line 381
    iget-object v2, p0, Lcom/samsung/map/bMessageBuilder;->bmsg:Lcom/samsung/map/BMSG;

    iput-object v0, v2, Lcom/samsung/map/BMSG;->envelope:Lcom/samsung/map/BENV;

    .line 383
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 384
    .local v1, messageBuffer:Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/samsung/map/bMessageBuilder;->bmsg:Lcom/samsung/map/BMSG;

    invoke-virtual {v2, v1}, Lcom/samsung/map/BMSG;->appendBytesToStream(Ljava/io/ByteArrayOutputStream;)V

    .line 385
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method
