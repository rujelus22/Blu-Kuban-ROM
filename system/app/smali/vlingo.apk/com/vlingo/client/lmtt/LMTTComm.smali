.class public Lcom/vlingo/client/lmtt/LMTTComm;
.super Ljava/lang/Object;
.source "LMTTComm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/lmtt/LMTTComm$1;
    }
.end annotation


# static fields
.field public static final LMTT_ERROR:I = 0x3

.field public static final LMTT_OK:I = 0x1

.field public static final LMTT_REQUIRES_FULL_RESYNC:I = 0x2

.field private static final SERVER_COUNT_CONTACT:Ljava/lang/String; = "contact"

.field private static final SERVER_COUNT_PLAYLIST:Ljava/lang/String; = "playlist"

.field private static final SERVER_COUNT_SONG:Ljava/lang/String; = "song"

.field private static final log:Lcom/vlingo/client/core/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26
    const-class v0, Lcom/vlingo/client/lmtt/LMTTComm;

    const-string v1, "LMTTComm: "

    invoke-static {v0, v1}, Lcom/vlingo/client/core/logging/Logger;->getLogger(Ljava/lang/Class;Ljava/lang/String;)Lcom/vlingo/client/core/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/lmtt/LMTTComm;->log:Lcom/vlingo/client/core/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    return-void
.end method

.method protected static createLMTTRequest(Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;Ljava/util/ArrayList;ZZLcom/vlingo/client/core/http/HttpCallback;)Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;
    .registers 9
    .parameter "lmttUpdateType"
    .parameter
    .parameter "doWhole"
    .parameter "doEmpty"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/lmtt/LMTTItem;",
            ">;ZZ",
            "Lcom/vlingo/client/core/http/HttpCallback;",
            ")",
            "Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, itemsToSend:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/lmtt/LMTTItem;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/vlingo/client/lmtt/LMTTComm;->generateXML(Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;Ljava/util/ArrayList;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, xml:Ljava/lang/String;
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidServerDetails;->getLMTTURL()Lcom/vlingo/client/core/http/URL;

    move-result-object v1

    .line 182
    .local v1, url:Lcom/vlingo/client/core/http/URL;
    const-string v3, "LMTT"

    invoke-static {v3, p4, v1, v2}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->createVLRequest(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Lcom/vlingo/client/core/http/URL;Ljava/lang/String;)Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    move-result-object v0

    .line 185
    .local v0, request:Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->setGzipPostData(Z)V

    .line 187
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->setMaxRetry(I)V

    .line 188
    return-object v0
.end method

.method private static generateXML(Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;Ljava/util/ArrayList;ZZ)Ljava/lang/String;
    .registers 13
    .parameter "lmttUpdateType"
    .parameter
    .parameter "doWhole"
    .parameter "doEmpty"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/lmtt/LMTTItem;",
            ">;ZZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, itemsToSend:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/lmtt/LMTTItem;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    mul-int/lit8 v7, v7, 0x14

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 100
    .local v4, sb:Ljava/lang/StringBuilder;
    const-string v7, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    sget-object v7, Lcom/vlingo/client/lmtt/LMTTComm$1;->$SwitchMap$com$vlingo$client$lmtt$LMTTUpdate$LmttUpdateType:[I

    invoke-virtual {p0}, Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_ea

    .line 166
    :goto_1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 104
    :pswitch_20
    const-string v7, "<LMTT>"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    if-eqz p2, :cond_58

    if-nez p3, :cond_58

    .line 108
    const-string v7, "<PIM t=\"w\">"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :goto_2e
    if-nez p3, :cond_5e

    .line 115
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/lmtt/LMTTItem;

    .line 116
    .local v2, item:Lcom/vlingo/client/lmtt/LMTTItem;
    invoke-virtual {v2}, Lcom/vlingo/client/lmtt/LMTTItem;->getXML()Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, xml:Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-wide/16 v7, 0x14

    :try_start_49
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4c
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_34

    :catch_4d
    move-exception v0

    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v7, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 111
    .end local v0           #ex:Ljava/lang/InterruptedException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/vlingo/client/lmtt/LMTTItem;
    .end local v6           #xml:Ljava/lang/String;
    :cond_58
    const-string v7, "<PIM t=\"p\">"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 123
    :cond_5e
    const-string v7, "</PIM></LMTT>"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 126
    :pswitch_64
    const-string v7, "<LMTT>"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    if-eqz p2, :cond_ac

    if-nez p3, :cond_ac

    .line 129
    const-string v7, "<MU t=\"w\">"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :goto_72
    if-nez p3, :cond_e3

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v3, playlistsXml:Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v5, songsXml:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_82
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ba

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/lmtt/LMTTItem;

    .line 140
    .restart local v2       #item:Lcom/vlingo/client/lmtt/LMTTItem;
    iget-object v7, v2, Lcom/vlingo/client/lmtt/LMTTItem;->type:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    sget-object v8, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_PLAYLIST:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    if-ne v7, v8, :cond_b2

    .line 141
    invoke-virtual {v2}, Lcom/vlingo/client/lmtt/LMTTItem;->getXML()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :goto_9b
    const-wide/16 v7, 0x14

    :try_start_9d
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a0
    .catch Ljava/lang/InterruptedException; {:try_start_9d .. :try_end_a0} :catch_a1

    goto :goto_82

    :catch_a1
    move-exception v0

    .restart local v0       #ex:Ljava/lang/InterruptedException;
    const-string v7, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    .line 132
    .end local v0           #ex:Ljava/lang/InterruptedException;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/vlingo/client/lmtt/LMTTItem;
    .end local v3           #playlistsXml:Ljava/lang/StringBuilder;
    .end local v5           #songsXml:Ljava/lang/StringBuilder;
    :cond_ac
    const-string v7, "<MU t=\"p\">"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_72

    .line 144
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #item:Lcom/vlingo/client/lmtt/LMTTItem;
    .restart local v3       #playlistsXml:Ljava/lang/StringBuilder;
    .restart local v5       #songsXml:Ljava/lang/StringBuilder;
    :cond_b2
    invoke-virtual {v2}, Lcom/vlingo/client/lmtt/LMTTItem;->getXML()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9b

    .line 148
    .end local v2           #item:Lcom/vlingo/client/lmtt/LMTTItem;
    :cond_ba
    const/4 p1, 0x0

    .line 150
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_cf

    .line 151
    const-string v7, "<PUS>"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 153
    const/4 v3, 0x0

    .line 154
    const-string v7, "</PUS>"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_cf
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_e3

    .line 157
    const-string v7, "<SUS>"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 159
    const/4 v5, 0x0

    .line 160
    const-string v7, "</SUS>"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #playlistsXml:Ljava/lang/StringBuilder;
    .end local v5           #songsXml:Ljava/lang/StringBuilder;
    :cond_e3
    const-string v7, "</MU></LMTT>"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1b

    .line 102
    :pswitch_data_ea
    .packed-switch 0x1
        :pswitch_20
        :pswitch_64
    .end packed-switch
.end method

.method protected static handleLMTTResponse(Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;Lcom/vlingo/client/core/http/HttpResponse;Ljava/util/HashMap;Z)I
    .registers 23
    .parameter "lmttUpdateType"
    .parameter "res"
    .parameter
    .parameter "countsMustMatch"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vlingo/client/lmtt/LMTTUpdate$LmttUpdateType;",
            "Lcom/vlingo/client/core/http/HttpResponse;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, deviceItemCounts:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/vlingo/client/core/http/HttpResponse;->getDataAsString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, checkResponse:Ljava/lang/String;
    :try_start_8
    const-string v5, "count=\""

    .line 46
    .local v5, countValueStart:Ljava/lang/String;
    const-string v11, "type=\""

    .line 47
    .local v11, typeValueStart:Ljava/lang/String;
    const-string v13, "\""

    .line 49
    .local v13, valueEnd:Ljava/lang/String;
    const-string v15, "count=\""

    const-string v16, "\""

    move-object/from16 v0, v16

    invoke-static {v1, v15, v0}, Lcom/vlingo/client/core/util/StringUtils;->getSubstring(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, countValue:Ljava/lang/String;
    const-string v15, "type=\""

    const-string v16, "\""

    move-object/from16 v0, v16

    invoke-static {v1, v15, v0}, Lcom/vlingo/client/core/util/StringUtils;->getSubstring(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 51
    .local v10, typeValue:Ljava/lang/String;
    if-eqz v4, :cond_ab

    if-eqz v10, :cond_ab

    .line 52
    const/16 v15, 0x2c

    invoke-static {v4, v15}, Lcom/vlingo/client/core/util/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v8

    .line 53
    .local v8, serverCounts:[Ljava/lang/String;
    const/16 v15, 0x2c

    invoke-static {v10, v15}, Lcom/vlingo/client/core/util/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v12

    .line 61
    .local v12, types:[Ljava/lang/String;
    array-length v15, v8

    const/16 v16, 0x1

    move/from16 v0, v16

    if-lt v15, v0, :cond_ab

    array-length v15, v12

    const/16 v16, 0x1

    move/from16 v0, v16

    if-lt v15, v0, :cond_ab

    array-length v15, v8

    array-length v0, v12

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_ab

    .line 62
    const/4 v14, 0x0

    .line 63
    .local v14, visitedItems:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_4a
    array-length v15, v12

    if-ge v6, v15, :cond_80

    .line 64
    aget-object v15, v8, v6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 65
    .local v7, serverCount:I
    if-gez v7, :cond_5b

    .line 66
    const/4 v15, 0x3

    .line 94
    .end local v4           #countValue:Ljava/lang/String;
    .end local v5           #countValueStart:Ljava/lang/String;
    .end local v6           #i:I
    .end local v7           #serverCount:I
    .end local v8           #serverCounts:[Ljava/lang/String;
    .end local v10           #typeValue:Ljava/lang/String;
    .end local v11           #typeValueStart:Ljava/lang/String;
    .end local v12           #types:[Ljava/lang/String;
    .end local v13           #valueEnd:Ljava/lang/String;
    .end local v14           #visitedItems:I
    :goto_5a
    return v15

    .line 68
    .restart local v4       #countValue:Ljava/lang/String;
    .restart local v5       #countValueStart:Ljava/lang/String;
    .restart local v6       #i:I
    .restart local v7       #serverCount:I
    .restart local v8       #serverCounts:[Ljava/lang/String;
    .restart local v10       #typeValue:Ljava/lang/String;
    .restart local v11       #typeValueStart:Ljava/lang/String;
    .restart local v12       #types:[Ljava/lang/String;
    .restart local v13       #valueEnd:Ljava/lang/String;
    .restart local v14       #visitedItems:I
    :cond_5b
    aget-object v15, v12, v6

    invoke-static {v15}, Lcom/vlingo/client/lmtt/LMTTComm;->mapServerType2ClientType(Ljava/lang/String;)Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    move-result-object v3

    .line 69
    .local v3, clientType:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7d

    .line 70
    add-int/lit8 v14, v14, 0x1

    .line 71
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_76} :catch_82

    move-result v2

    .line 74
    .local v2, clientCount:I
    if-eq v2, v7, :cond_7d

    if-eqz p3, :cond_7d

    .line 77
    const/4 v15, 0x2

    goto :goto_5a

    .line 63
    .end local v2           #clientCount:I
    :cond_7d
    add-int/lit8 v6, v6, 0x1

    goto :goto_4a

    .line 82
    .end local v3           #clientType:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;
    .end local v7           #serverCount:I
    :cond_80
    const/4 v15, 0x1

    goto :goto_5a

    .line 91
    .end local v4           #countValue:Ljava/lang/String;
    .end local v5           #countValueStart:Ljava/lang/String;
    .end local v6           #i:I
    .end local v8           #serverCounts:[Ljava/lang/String;
    .end local v10           #typeValue:Ljava/lang/String;
    .end local v11           #typeValueStart:Ljava/lang/String;
    .end local v12           #types:[Ljava/lang/String;
    .end local v13           #valueEnd:Ljava/lang/String;
    .end local v14           #visitedItems:I
    :catch_82
    move-exception v9

    .line 92
    .local v9, t:Ljava/lang/Throwable;
    sget-object v15, Lcom/vlingo/client/lmtt/LMTTComm;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v16, "LMT2"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error parsing LMTT response: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " Response: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/vlingo/client/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .end local v9           #t:Ljava/lang/Throwable;
    :cond_ab
    const/4 v15, 0x3

    goto :goto_5a
.end method

.method public static mapClientType2ServerType(Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;)Ljava/lang/String;
    .registers 3
    .parameter "clientLmttItemType"

    .prologue
    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, toReturn:Ljava/lang/String;
    sget-object v1, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_CONTACT:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    if-ne p0, v1, :cond_8

    .line 208
    const-string v0, "contact"

    .line 214
    :cond_7
    :goto_7
    return-object v0

    .line 209
    :cond_8
    sget-object v1, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_PLAYLIST:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    if-ne p0, v1, :cond_f

    .line 210
    const-string v0, "playlist"

    goto :goto_7

    .line 211
    :cond_f
    sget-object v1, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_SONG:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    if-ne p0, v1, :cond_7

    .line 212
    const-string v0, "song"

    goto :goto_7
.end method

.method private static mapServerType2ClientType(Ljava/lang/String;)Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;
    .registers 3
    .parameter "serverLmttItemType"

    .prologue
    .line 192
    sget-object v0, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_UNKNOWN:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    .line 193
    .local v0, toReturn:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;
    const-string v1, "playlist"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 194
    sget-object v0, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_PLAYLIST:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    .line 202
    :cond_c
    :goto_c
    return-object v0

    .line 196
    :cond_d
    const-string v1, "song"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 197
    sget-object v0, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_SONG:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    goto :goto_c

    .line 199
    :cond_18
    const-string v1, "contact"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 200
    sget-object v0, Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;->TYPE_CONTACT:Lcom/vlingo/client/lmtt/LMTTItem$LmttItemType;

    goto :goto_c
.end method
