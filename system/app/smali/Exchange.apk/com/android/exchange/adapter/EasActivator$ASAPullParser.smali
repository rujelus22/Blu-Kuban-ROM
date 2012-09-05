.class Lcom/android/exchange/adapter/EasActivator$ASAPullParser;
.super Lcom/android/exchange/adapter/EasActivator$ASABaseParser;
.source "EasActivator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/EasActivator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ASAPullParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/adapter/EasActivator;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/EasActivator;)V
    .registers 2
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/android/exchange/adapter/EasActivator$ASAPullParser;->this$0:Lcom/android/exchange/adapter/EasActivator;

    .line 482
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/EasActivator$ASABaseParser;-><init>(Lcom/android/exchange/adapter/EasActivator;)V

    .line 483
    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)Ljava/util/List;
    .registers 16
    .parameter "inXml"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 486
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .local v5, messages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 490
    .local v7, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v12, 0x0

    :try_start_a
    invoke-interface {v7, p1, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 491
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 492
    .local v2, eventType:I
    const/4 v10, 0x0

    .line 493
    .local v10, startDoc:Z
    const/4 v9, 0x0

    .line 494
    .local v9, startBlk:Z
    const/4 v0, 0x0

    .line 495
    .local v0, done:Z
    const/4 v3, 0x0

    .line 498
    .local v3, i:I
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .local v8, sb:Ljava/lang/StringBuffer;
    move v4, v3

    .line 500
    .end local v3           #i:I
    .local v4, i:I
    :goto_1b
    const/4 v12, 0x1

    if-eq v2, v12, :cond_11e

    if-nez v0, :cond_11e

    .line 501
    const/4 v6, 0x0

    .line 502
    .local v6, name:Ljava/lang/String;
    packed-switch v2, :pswitch_data_120

    :cond_24
    :pswitch_24
    move v3, v4

    .line 550
    .end local v4           #i:I
    .restart local v3       #i:I
    :goto_25
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v4, v3

    .line 551
    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_1b

    .line 504
    :pswitch_2b
    const/4 v10, 0x1

    .line 505
    const-string v12, "ExchangeActivation"

    const-string v13, "START_DOCUMENT"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 506
    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_25

    .line 508
    .end local v3           #i:I
    .restart local v4       #i:I
    :pswitch_35
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 509
    const-string v12, "struct"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4a

    .line 510
    const-string v12, "ExchangeActivation"

    const-string v13, "struct begin"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_25

    .line 511
    .end local v3           #i:I
    .restart local v4       #i:I
    :cond_4a
    if-eqz v10, :cond_24

    .line 512
    const-string v12, "member"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6b

    .line 513
    const-string v12, "member begin: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 514
    const-string v12, "ExchangeActivation"

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 516
    const/4 v9, 0x1

    .line 518
    :cond_6b
    const-string v12, "name"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9f

    if-eqz v9, :cond_9f

    .line 519
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 520
    .local v11, temp:Ljava/lang/String;
    const-string v12, "name"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, " ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const/16 v13, 0x5d

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 521
    const-string v12, "ExchangeActivation"

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 524
    .end local v11           #temp:Ljava/lang/String;
    :cond_9f
    const-string v12, "value"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_24

    if-eqz v9, :cond_24

    .line 525
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 526
    .restart local v11       #temp:Ljava/lang/String;
    const-string v12, "value"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const/16 v13, 0x5b

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const/16 v13, 0x5d

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 527
    const-string v12, "ExchangeActivation"

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 529
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto/16 :goto_25

    .line 534
    .end local v3           #i:I
    .end local v11           #temp:Ljava/lang/String;
    .restart local v4       #i:I
    :pswitch_d9
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 535
    const-string v12, "struct"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f2

    if-eqz v10, :cond_f2

    .line 536
    const-string v12, "ExchangeActivation"

    const-string v13, "struct end"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v0, 0x1

    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto/16 :goto_25

    .line 538
    .end local v3           #i:I
    .restart local v4       #i:I
    :cond_f2
    if-eqz v10, :cond_24

    .line 539
    const-string v12, "member"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_24

    .line 540
    const-string v12, "member end: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 541
    const-string v12, "ExchangeActivation"

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_114} :catch_117

    .line 543
    const/4 v9, 0x0

    goto/16 :goto_25

    .line 552
    .end local v0           #done:Z
    .end local v2           #eventType:I
    .end local v3           #i:I
    .end local v6           #name:Ljava/lang/String;
    .end local v8           #sb:Ljava/lang/StringBuffer;
    .end local v9           #startBlk:Z
    .end local v10           #startDoc:Z
    :catch_117
    move-exception v1

    .line 553
    .local v1, e:Ljava/lang/Exception;
    new-instance v12, Ljava/lang/RuntimeException;

    invoke-direct {v12, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 555
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #done:Z
    .restart local v2       #eventType:I
    .restart local v4       #i:I
    .restart local v8       #sb:Ljava/lang/StringBuffer;
    .restart local v9       #startBlk:Z
    .restart local v10       #startDoc:Z
    :cond_11e
    return-object v5

    .line 502
    nop

    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_24
        :pswitch_35
        :pswitch_d9
    .end packed-switch
.end method
