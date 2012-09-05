.class Lcom/sec/android/app/personalization/PersoLock$OemCommands;
.super Ljava/lang/Object;
.source "PersoLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/personalization/PersoLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OemCommands"
.end annotation


# instance fields
.field final OEM_PERSO_FUNCTAG:C

.field final OEM_PERSO_GET_LOCK_STATUS:C

.field final OEM_PERSO_LOCK_MODE:C

.field final OEM_PERSO_SUB_FUNCTAG:C

.field final OEM_PERSO_TYPE_CP_LOCK:C

.field final OEM_PERSO_TYPE_NW_LOCK:C

.field final OEM_PERSO_TYPE_NW_SUB_LOCK:C

.field final OEM_PERSO_TYPE_SP_LOCK:C

.field final OEM_PERSO_UNLOCK_MODE:C

.field final synthetic this$0:Lcom/sec/android/app/personalization/PersoLock;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/personalization/PersoLock;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 82
    iput-object p1, p0, Lcom/sec/android/app/personalization/PersoLock$OemCommands;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x4

    iput-char v0, p0, Lcom/sec/android/app/personalization/PersoLock$OemCommands;->OEM_PERSO_FUNCTAG:C

    .line 88
    iput-char v1, p0, Lcom/sec/android/app/personalization/PersoLock$OemCommands;->OEM_PERSO_SUB_FUNCTAG:C

    .line 91
    const/4 v0, 0x5

    iput-char v0, p0, Lcom/sec/android/app/personalization/PersoLock$OemCommands;->OEM_PERSO_TYPE_NW_LOCK:C

    .line 92
    const/4 v0, 0x6

    iput-char v0, p0, Lcom/sec/android/app/personalization/PersoLock$OemCommands;->OEM_PERSO_TYPE_NW_SUB_LOCK:C

    .line 93
    const/4 v0, 0x7

    iput-char v0, p0, Lcom/sec/android/app/personalization/PersoLock$OemCommands;->OEM_PERSO_TYPE_SP_LOCK:C

    .line 94
    const/16 v0, 0x8

    iput-char v0, p0, Lcom/sec/android/app/personalization/PersoLock$OemCommands;->OEM_PERSO_TYPE_CP_LOCK:C

    .line 97
    iput-char v1, p0, Lcom/sec/android/app/personalization/PersoLock$OemCommands;->OEM_PERSO_UNLOCK_MODE:C

    .line 98
    const/4 v0, 0x1

    iput-char v0, p0, Lcom/sec/android/app/personalization/PersoLock$OemCommands;->OEM_PERSO_LOCK_MODE:C

    .line 99
    const/4 v0, 0x2

    iput-char v0, p0, Lcom/sec/android/app/personalization/PersoLock$OemCommands;->OEM_PERSO_GET_LOCK_STATUS:C

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/personalization/PersoLock;Lcom/sec/android/app/personalization/PersoLock$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/sec/android/app/personalization/PersoLock$OemCommands;-><init>(Lcom/sec/android/app/personalization/PersoLock;)V

    return-void
.end method


# virtual methods
.method PersoCPLockData(CCLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 18
    .parameter "lockType"
    .parameter "lockMode"
    .parameter "mccMnc"
    .parameter "sp"
    .parameter "cp"
    .parameter "ControlKey"

    .prologue
    .line 231
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 232
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 234
    .local v2, dos:Ljava/io/DataOutputStream;
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    int-to-char v7, v9

    .line 235
    .local v7, lengthOfMccMnc:C
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v9

    int-to-char v8, v9

    .line 236
    .local v8, lengthOfSp:C
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v9

    int-to-char v6, v9

    .line 237
    .local v6, lengthOfCp:C
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v9

    int-to-char v5, v9

    .line 238
    .local v5, lengthOfControlKey:C
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x9

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v10

    add-int v4, v9, v10

    .line 241
    .local v4, fileSize:I
    const/4 v9, 0x4

    :try_start_35
    invoke-virtual {v2, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 242
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 243
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 244
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 245
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 246
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 247
    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 249
    invoke-virtual {v2, p4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 251
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 252
    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_35 .. :try_end_5e} :catchall_81
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_5e} :catch_6d

    .line 260
    if-eqz v2, :cond_63

    .line 262
    :try_start_60
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_68

    .line 269
    :cond_63
    :goto_63
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    :cond_67
    :goto_67
    return-object v9

    .line 263
    :catch_68
    move-exception v3

    .line 264
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_63

    .line 255
    .end local v3           #e:Ljava/io/IOException;
    :catch_6d
    move-exception v3

    .line 257
    .restart local v3       #e:Ljava/io/IOException;
    :try_start_6e
    iget-object v9, p0, Lcom/sec/android/app/personalization/PersoLock$OemCommands;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    const-string v10, "IOException in PersoCP Data!!!"

    #calls: Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/sec/android/app/personalization/PersoLock;->access$000(Lcom/sec/android/app/personalization/PersoLock;Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_81

    .line 258
    const/4 v9, 0x0

    .line 260
    if-eqz v2, :cond_67

    .line 262
    :try_start_78
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_67

    .line 263
    :catch_7c
    move-exception v3

    .line 264
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_67

    .line 260
    .end local v3           #e:Ljava/io/IOException;
    :catchall_81
    move-exception v9

    if-eqz v2, :cond_87

    .line 262
    :try_start_84
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88

    .line 265
    :cond_87
    :goto_87
    throw v9

    .line 263
    :catch_88
    move-exception v3

    .line 264
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_87
.end method

.method PersoGetStatusData()[B
    .registers 7

    .prologue
    .line 308
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 309
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 311
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x4

    .line 314
    .local v3, fileSize:I
    const/4 v4, 0x4

    :try_start_c
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 315
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 316
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_39
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_25

    .line 323
    if-eqz v1, :cond_1b

    .line 325
    :try_start_18
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_20

    .line 332
    :cond_1b
    :goto_1b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    :cond_1f
    :goto_1f
    return-object v4

    .line 326
    :catch_20
    move-exception v2

    .line 327
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1b

    .line 318
    .end local v2           #e:Ljava/io/IOException;
    :catch_25
    move-exception v2

    .line 320
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_26
    iget-object v4, p0, Lcom/sec/android/app/personalization/PersoLock$OemCommands;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    const-string v5, "IOException in PersoGetStatusData Data!!!"

    #calls: Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/sec/android/app/personalization/PersoLock;->access$000(Lcom/sec/android/app/personalization/PersoLock;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_39

    .line 321
    const/4 v4, 0x0

    .line 323
    if-eqz v1, :cond_1f

    .line 325
    :try_start_30
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_1f

    .line 326
    :catch_34
    move-exception v2

    .line 327
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f

    .line 323
    .end local v2           #e:Ljava/io/IOException;
    :catchall_39
    move-exception v4

    if-eqz v1, :cond_3f

    .line 325
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    .line 328
    :cond_3f
    :goto_3f
    throw v4

    .line 326
    :catch_40
    move-exception v2

    .line 327
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3f
.end method

.method PersoNWLockData(CCLjava/lang/String;Ljava/lang/String;)[B
    .registers 13
    .parameter "lockType"
    .parameter "lockMode"
    .parameter "mccMnc"
    .parameter "ControlKey"

    .prologue
    .line 105
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 106
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 108
    .local v1, dos:Ljava/io/DataOutputStream;
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    int-to-char v5, v6

    .line 109
    .local v5, lengthOfMccMnc:C
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v6

    int-to-char v4, v6

    .line 110
    .local v4, lengthOfControlKey:C
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x7

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v7

    add-int v3, v6, v7

    .line 113
    .local v3, fileSize:I
    const/4 v6, 0x4

    :try_start_21
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 114
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 115
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 116
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 117
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 118
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 119
    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1, p4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_21 .. :try_end_3a} :catchall_5d
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_3a} :catch_49

    .line 128
    if-eqz v1, :cond_3f

    .line 130
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_44

    .line 137
    :cond_3f
    :goto_3f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    :cond_43
    :goto_43
    return-object v6

    .line 131
    :catch_44
    move-exception v2

    .line 132
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3f

    .line 123
    .end local v2           #e:Ljava/io/IOException;
    :catch_49
    move-exception v2

    .line 125
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_4a
    iget-object v6, p0, Lcom/sec/android/app/personalization/PersoLock$OemCommands;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    const-string v7, "IOException in PersoNWLock Data!!!"

    #calls: Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/sec/android/app/personalization/PersoLock;->access$000(Lcom/sec/android/app/personalization/PersoLock;Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_5d

    .line 126
    const/4 v6, 0x0

    .line 128
    if-eqz v1, :cond_43

    .line 130
    :try_start_54
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_43

    .line 131
    :catch_58
    move-exception v2

    .line 132
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_43

    .line 128
    .end local v2           #e:Ljava/io/IOException;
    :catchall_5d
    move-exception v6

    if-eqz v1, :cond_63

    .line 130
    :try_start_60
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    .line 133
    :cond_63
    :goto_63
    throw v6

    .line 131
    :catch_64
    move-exception v2

    .line 132
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_63
.end method

.method PersoSPLockData(CCLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 15
    .parameter "lockType"
    .parameter "lockMode"
    .parameter "mccMnc"
    .parameter "sp"
    .parameter "ControlKey"

    .prologue
    .line 190
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 191
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 193
    .local v1, dos:Ljava/io/DataOutputStream;
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    int-to-char v5, v7

    .line 194
    .local v5, lengthOfMccMnc:C
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v7

    int-to-char v6, v7

    .line 195
    .local v6, lengthOfSp:C
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v7

    int-to-char v4, v7

    .line 196
    .local v4, lengthOfControlKey:C
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x8

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v8

    add-int v3, v7, v8

    .line 199
    .local v3, fileSize:I
    const/4 v7, 0x4

    :try_start_2b
    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 200
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 201
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 202
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 203
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 204
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 205
    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 207
    invoke-virtual {v1, p4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v1, p5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_2b .. :try_end_4a} :catchall_6d
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_4a} :catch_59

    .line 216
    if-eqz v1, :cond_4f

    .line 218
    :try_start_4c
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_54

    .line 225
    :cond_4f
    :goto_4f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    :cond_53
    :goto_53
    return-object v7

    .line 219
    :catch_54
    move-exception v2

    .line 220
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4f

    .line 211
    .end local v2           #e:Ljava/io/IOException;
    :catch_59
    move-exception v2

    .line 213
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_5a
    iget-object v7, p0, Lcom/sec/android/app/personalization/PersoLock$OemCommands;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    const-string v8, "IOException in PersoSPLock Data!!!"

    #calls: Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/sec/android/app/personalization/PersoLock;->access$000(Lcom/sec/android/app/personalization/PersoLock;Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_5a .. :try_end_61} :catchall_6d

    .line 214
    const/4 v7, 0x0

    .line 216
    if-eqz v1, :cond_53

    .line 218
    :try_start_64
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_53

    .line 219
    :catch_68
    move-exception v2

    .line 220
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_53

    .line 216
    .end local v2           #e:Ljava/io/IOException;
    :catchall_6d
    move-exception v7

    if-eqz v1, :cond_73

    .line 218
    :try_start_70
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    .line 221
    :cond_73
    :goto_73
    throw v7

    .line 219
    :catch_74
    move-exception v2

    .line 220
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_73
.end method

.method PersoSUBLockData(CCLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 16
    .parameter "lockType"
    .parameter "lockMode"
    .parameter "mccMnc"
    .parameter "nsp"
    .parameter "ControlKey"

    .prologue
    .line 143
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 144
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 146
    .local v1, dos:Ljava/io/DataOutputStream;
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    int-to-char v5, v7

    .line 147
    .local v5, lengthOfMccMnc:C
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v7

    int-to-char v6, v7

    .line 148
    .local v6, lengthOfNsp:C
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v7

    int-to-char v4, v7

    .line 149
    .local v4, lengthOfControlKey:C
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x8

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v8

    add-int v3, v7, v8

    .line 151
    .local v3, fileSize:I
    iget-object v7, p0, Lcom/sec/android/app/personalization/PersoLock$OemCommands;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fileSize is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/sec/android/app/personalization/PersoLock;->access$000(Lcom/sec/android/app/personalization/PersoLock;Ljava/lang/String;)V

    .line 153
    iget-object v7, p0, Lcom/sec/android/app/personalization/PersoLock$OemCommands;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "lengthOfMccMnc is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/sec/android/app/personalization/PersoLock;->access$000(Lcom/sec/android/app/personalization/PersoLock;Ljava/lang/String;)V

    .line 154
    iget-object v7, p0, Lcom/sec/android/app/personalization/PersoLock$OemCommands;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "lengthOfNsp is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/sec/android/app/personalization/PersoLock;->access$000(Lcom/sec/android/app/personalization/PersoLock;Ljava/lang/String;)V

    .line 155
    iget-object v7, p0, Lcom/sec/android/app/personalization/PersoLock$OemCommands;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "lengthOfControlKey is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/sec/android/app/personalization/PersoLock;->access$000(Lcom/sec/android/app/personalization/PersoLock;Ljava/lang/String;)V

    .line 158
    const/4 v7, 0x4

    :try_start_97
    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 159
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 160
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 161
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 162
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 163
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 164
    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 166
    invoke-virtual {v1, p4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1, p5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_b6
    .catchall {:try_start_97 .. :try_end_b6} :catchall_d9
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_b6} :catch_c5

    .line 175
    if-eqz v1, :cond_bb

    .line 177
    :try_start_b8
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_c0

    .line 184
    :cond_bb
    :goto_bb
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    :cond_bf
    :goto_bf
    return-object v7

    .line 178
    :catch_c0
    move-exception v2

    .line 179
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_bb

    .line 170
    .end local v2           #e:Ljava/io/IOException;
    :catch_c5
    move-exception v2

    .line 172
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_c6
    iget-object v7, p0, Lcom/sec/android/app/personalization/PersoLock$OemCommands;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    const-string v8, "IOException in PersoSUBLock Data!!!"

    #calls: Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/sec/android/app/personalization/PersoLock;->access$000(Lcom/sec/android/app/personalization/PersoLock;Ljava/lang/String;)V
    :try_end_cd
    .catchall {:try_start_c6 .. :try_end_cd} :catchall_d9

    .line 173
    const/4 v7, 0x0

    .line 175
    if-eqz v1, :cond_bf

    .line 177
    :try_start_d0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_d4

    goto :goto_bf

    .line 178
    :catch_d4
    move-exception v2

    .line 179
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_bf

    .line 175
    .end local v2           #e:Ljava/io/IOException;
    :catchall_d9
    move-exception v7

    if-eqz v1, :cond_df

    .line 177
    :try_start_dc
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_df} :catch_e0

    .line 180
    :cond_df
    :goto_df
    throw v7

    .line 178
    :catch_e0
    move-exception v2

    .line 179
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_df
.end method

.method PersoUnLockData(CLjava/lang/String;)[B
    .registers 10
    .parameter "lockType"
    .parameter "ControlKey"

    .prologue
    .line 274
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 275
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 277
    .local v1, dos:Ljava/io/DataOutputStream;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v3, v5, 0x6

    .line 278
    .local v3, fileSize:I
    const/4 v4, 0x0

    .line 281
    .local v4, lockMode:C
    const/4 v5, 0x4

    :try_start_12
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 282
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 283
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 284
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 285
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 286
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_48
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_25} :catch_34

    .line 294
    if-eqz v1, :cond_2a

    .line 296
    :try_start_27
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2f

    .line 303
    :cond_2a
    :goto_2a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    :cond_2e
    :goto_2e
    return-object v5

    .line 297
    :catch_2f
    move-exception v2

    .line 298
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2a

    .line 289
    .end local v2           #e:Ljava/io/IOException;
    :catch_34
    move-exception v2

    .line 291
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_35
    iget-object v5, p0, Lcom/sec/android/app/personalization/PersoLock$OemCommands;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    const-string v6, "IOException in Perso unlock Data!!!"

    #calls: Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/sec/android/app/personalization/PersoLock;->access$000(Lcom/sec/android/app/personalization/PersoLock;Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_48

    .line 292
    const/4 v5, 0x0

    .line 294
    if-eqz v1, :cond_2e

    .line 296
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_2e

    .line 297
    :catch_43
    move-exception v2

    .line 298
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2e

    .line 294
    .end local v2           #e:Ljava/io/IOException;
    :catchall_48
    move-exception v5

    if-eqz v1, :cond_4e

    .line 296
    :try_start_4b
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f

    .line 299
    :cond_4e
    :goto_4e
    throw v5

    .line 297
    :catch_4f
    move-exception v2

    .line 298
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4e
.end method
