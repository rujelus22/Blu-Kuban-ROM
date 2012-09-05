.class public Lcom/infraware/common/util/ini/IniFile;
.super Ljava/lang/Object;
.source "IniFile.java"


# static fields
.field private static final CURRENT_PATH:Ljava/lang/String; = "/data/data/com.infraware.polarisoffice/"

.field private static final END_OF_INI:Ljava/lang/String; = "ENF OF INI"


# instance fields
.field private iniFile:Ljava/lang/String;

.field private isEndFlag:Ljava/lang/Boolean;

.field private sectionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/common/util/ini/Section;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/common/util/ini/IniFile;->iniFile:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/common/util/ini/IniFile;->isEndFlag:Ljava/lang/Boolean;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/infraware/common/util/ini/IniFile;->sectionList:Ljava/util/ArrayList;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "fileName"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/common/util/ini/IniFile;->iniFile:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/common/util/ini/IniFile;->isEndFlag:Ljava/lang/Boolean;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/infraware/common/util/ini/IniFile;->sectionList:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p0, p1}, Lcom/infraware/common/util/ini/IniFile;->open(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method private addSection(Ljava/lang/String;)Lcom/infraware/common/util/ini/Section;
    .registers 4
    .parameter "sectionName"

    .prologue
    .line 47
    const-string v1, "ENF OF INI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_11

    .line 49
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/common/util/ini/IniFile;->isEndFlag:Ljava/lang/Boolean;

    .line 50
    const/4 v0, 0x0

    .line 60
    :cond_10
    :goto_10
    return-object v0

    .line 53
    :cond_11
    invoke-direct {p0, p1}, Lcom/infraware/common/util/ini/IniFile;->getSection(Ljava/lang/String;)Lcom/infraware/common/util/ini/Section;

    move-result-object v0

    .line 54
    .local v0, section:Lcom/infraware/common/util/ini/Section;
    if-nez v0, :cond_10

    .line 57
    new-instance v0, Lcom/infraware/common/util/ini/Section;

    .end local v0           #section:Lcom/infraware/common/util/ini/Section;
    invoke-direct {v0, p1}, Lcom/infraware/common/util/ini/Section;-><init>(Ljava/lang/String;)V

    .line 58
    .restart local v0       #section:Lcom/infraware/common/util/ini/Section;
    iget-object v1, p0, Lcom/infraware/common/util/ini/IniFile;->sectionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10
.end method

.method private getSection(Ljava/lang/String;)Lcom/infraware/common/util/ini/Section;
    .registers 5
    .parameter "section"

    .prologue
    .line 36
    iget-object v2, p0, Lcom/infraware/common/util/ini/IniFile;->sectionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 37
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-lt v0, v1, :cond_b

    .line 42
    const/4 v2, 0x0

    :goto_a
    return-object v2

    .line 39
    :cond_b
    iget-object v2, p0, Lcom/infraware/common/util/ini/IniFile;->sectionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/common/util/ini/Section;

    invoke-virtual {v2}, Lcom/infraware/common/util/ini/Section;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_26

    .line 40
    iget-object v2, p0, Lcom/infraware/common/util/ini/IniFile;->sectionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/common/util/ini/Section;

    goto :goto_a

    .line 37
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method private getValue(Lcom/infraware/common/util/ini/Section;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "section"
    .parameter "key"

    .prologue
    .line 85
    if-nez p1, :cond_4

    .line 86
    const/4 v0, 0x0

    .line 88
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1, p2}, Lcom/infraware/common/util/ini/Section;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private setValue(Lcom/infraware/common/util/ini/Section;Ljava/lang/String;)V
    .registers 7
    .parameter "section"
    .parameter "keyValue"

    .prologue
    .line 73
    const/16 v3, 0x3d

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 74
    .local v0, index:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_a

    .line 81
    :goto_9
    return-void

    .line 77
    :cond_a
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, key:Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, value:Ljava/lang/String;
    invoke-direct {p0, p1, v1, v2}, Lcom/infraware/common/util/ini/IniFile;->setValue(Lcom/infraware/common/util/ini/Section;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method private setValue(Lcom/infraware/common/util/ini/Section;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "section"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 65
    if-nez p1, :cond_3

    .line 69
    :goto_2
    return-void

    .line 68
    :cond_3
    invoke-virtual {p1, p2, p3}, Lcom/infraware/common/util/ini/Section;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public flushData()V
    .registers 18

    .prologue
    .line 204
    new-instance v3, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "/data/data/com.infraware.polarisoffice/"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/infraware/common/util/ini/IniFile;->iniFile:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    .local v3, file:Ljava/io/File;
    const/4 v12, 0x0

    check-cast v12, [B

    .line 206
    .local v12, tempBuffer:[B
    const/4 v14, 0x2

    new-array v1, v14, [B

    .line 208
    .local v1, crlfBuffer:[B
    const/4 v14, 0x0

    const/16 v15, 0xd

    aput-byte v15, v1, v14

    .line 209
    const/4 v14, 0x1

    const/16 v15, 0xa

    aput-byte v15, v1, v14

    .line 211
    const/4 v7, 0x0

    .line 213
    .local v7, outputStream:Ljava/io/OutputStream;
    :try_start_29
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_2e} :catch_d0
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2e} :catch_d2

    .line 214
    .end local v7           #outputStream:Ljava/io/OutputStream;
    .local v8, outputStream:Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 215
    .local v9, section:Lcom/infraware/common/util/ini/Section;
    :try_start_2f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/common/util/ini/IniFile;->sectionList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 216
    .local v11, sectionSize:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_38
    if-lt v4, v11, :cond_5c

    .line 240
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/common/util/ini/IniFile;->isEndFlag:Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_57

    .line 242
    new-instance v14, Ljava/lang/String;

    const-string v15, "[ENF OF INI]"

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v15, "utf-8"

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    .line 243
    invoke-virtual {v8, v12}, Ljava/io/OutputStream;->write([B)V

    .line 244
    invoke-virtual {v8, v1}, Ljava/io/OutputStream;->write([B)V

    .line 246
    :cond_57
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    move-object v7, v8

    .line 252
    .end local v4           #i:I
    .end local v8           #outputStream:Ljava/io/OutputStream;
    .end local v9           #section:Lcom/infraware/common/util/ini/Section;
    .end local v11           #sectionSize:I
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    :goto_5b
    return-void

    .line 218
    .end local v7           #outputStream:Ljava/io/OutputStream;
    .restart local v4       #i:I
    .restart local v8       #outputStream:Ljava/io/OutputStream;
    .restart local v9       #section:Lcom/infraware/common/util/ini/Section;
    .restart local v11       #sectionSize:I
    :cond_5c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/common/util/ini/IniFile;->sectionList:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #section:Lcom/infraware/common/util/ini/Section;
    check-cast v9, Lcom/infraware/common/util/ini/Section;

    .line 219
    .restart local v9       #section:Lcom/infraware/common/util/ini/Section;
    invoke-virtual {v9}, Lcom/infraware/common/util/ini/Section;->getName()Ljava/lang/String;

    move-result-object v10

    .line 220
    .local v10, sectionName:Ljava/lang/String;
    new-instance v14, Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "["

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v15, "utf-8"

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    .line 221
    invoke-virtual {v8, v12}, Ljava/io/OutputStream;->write([B)V

    .line 222
    invoke-virtual {v8, v1}, Ljava/io/OutputStream;->write([B)V

    .line 224
    const/4 v5, 0x0

    .line 225
    .local v5, j:I
    invoke-virtual {v9, v5}, Lcom/infraware/common/util/ini/Section;->getValue(I)Ljava/lang/String;

    move-result-object v6

    .line 226
    .local v6, key:Ljava/lang/String;
    :goto_95
    if-nez v6, :cond_9d

    .line 237
    invoke-virtual {v8, v1}, Ljava/io/OutputStream;->write([B)V

    .line 216
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 228
    :cond_9d
    add-int/lit8 v5, v5, 0x1

    .line 229
    invoke-virtual {v9, v6}, Lcom/infraware/common/util/ini/Section;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 230
    .local v13, value:Ljava/lang/String;
    new-instance v14, Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v15, "utf-8"

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    .line 231
    invoke-virtual {v8, v12}, Ljava/io/OutputStream;->write([B)V

    .line 232
    invoke-virtual {v8, v1}, Ljava/io/OutputStream;->write([B)V

    .line 234
    invoke-virtual {v9, v5}, Lcom/infraware/common/util/ini/Section;->getValue(I)Ljava/lang/String;
    :try_end_ce
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_ce} :catch_d7
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_ce} :catch_d4

    move-result-object v6

    goto :goto_95

    .line 247
    .end local v4           #i:I
    .end local v5           #j:I
    .end local v6           #key:Ljava/lang/String;
    .end local v8           #outputStream:Ljava/io/OutputStream;
    .end local v9           #section:Lcom/infraware/common/util/ini/Section;
    .end local v10           #sectionName:Ljava/lang/String;
    .end local v11           #sectionSize:I
    .end local v13           #value:Ljava/lang/String;
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    :catch_d0
    move-exception v2

    .line 248
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_d1
    goto :goto_5b

    .line 249
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_d2
    move-exception v2

    .line 250
    .local v2, e:Ljava/io/IOException;
    :goto_d3
    goto :goto_5b

    .line 249
    .end local v2           #e:Ljava/io/IOException;
    .end local v7           #outputStream:Ljava/io/OutputStream;
    .restart local v8       #outputStream:Ljava/io/OutputStream;
    :catch_d4
    move-exception v2

    move-object v7, v8

    .end local v8           #outputStream:Ljava/io/OutputStream;
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    goto :goto_d3

    .line 247
    .end local v7           #outputStream:Ljava/io/OutputStream;
    .restart local v8       #outputStream:Ljava/io/OutputStream;
    :catch_d7
    move-exception v2

    move-object v7, v8

    .end local v8           #outputStream:Ljava/io/OutputStream;
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    goto :goto_d1
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "sectionName"
    .parameter "key"

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/infraware/common/util/ini/IniFile;->getSection(Ljava/lang/String;)Lcom/infraware/common/util/ini/Section;

    move-result-object v0

    .line 160
    .local v0, section:Lcom/infraware/common/util/ini/Section;
    invoke-direct {p0, v0, p2}, Lcom/infraware/common/util/ini/IniFile;->getValue(Lcom/infraware/common/util/ini/Section;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, value:Ljava/lang/String;
    return-object v1
.end method

.method public open(Ljava/lang/String;)V
    .registers 19
    .parameter "fileName"

    .prologue
    .line 93
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/infraware/common/util/ini/IniFile;->sectionList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 95
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/infraware/common/util/ini/IniFile;->iniFile:Ljava/lang/String;

    .line 97
    new-instance v5, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "/data/data/com.infraware.polarisoffice/"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/common/util/ini/IniFile;->iniFile:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v15

    long-to-int v10, v15

    .line 99
    .local v10, length:I
    new-array v6, v10, [B

    .line 100
    .local v6, fileBuffer:[B
    new-array v14, v10, [B

    .line 102
    .local v14, tempBuffer:[B
    const/4 v8, 0x0

    .line 104
    .local v8, inputStream:Ljava/io/InputStream;
    :try_start_31
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_36} :catch_4f
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_36} :catch_51

    .line 105
    .end local v8           #inputStream:Ljava/io/InputStream;
    .local v9, inputStream:Ljava/io/InputStream;
    :try_start_36
    invoke-virtual {v9, v6}, Ljava/io/InputStream;->read([B)I

    .line 106
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_3c} :catch_c1
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3c} :catch_be

    .line 113
    const/4 v11, 0x0

    .line 114
    .local v11, lineString:Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    .end local v11           #lineString:Ljava/lang/String;
    invoke-direct {v11, v14}, Ljava/lang/String;-><init>([B)V

    .line 115
    .restart local v11       #lineString:Ljava/lang/String;
    const/4 v13, 0x0

    .line 116
    .local v13, section:Lcom/infraware/common/util/ini/Section;
    const/4 v7, 0x0

    .local v7, index:I
    const/4 v2, 0x0

    .line 117
    .local v2, count:I
    const/4 v7, 0x0

    move v3, v2

    .end local v2           #count:I
    .local v3, count:I
    move-object v12, v11

    .end local v11           #lineString:Ljava/lang/String;
    .local v12, lineString:Ljava/lang/String;
    :goto_48
    if-lt v7, v10, :cond_53

    .line 152
    :try_start_4a
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_b9

    :goto_4d
    move-object v8, v9

    .line 155
    .end local v3           #count:I
    .end local v7           #index:I
    .end local v9           #inputStream:Ljava/io/InputStream;
    .end local v12           #lineString:Ljava/lang/String;
    .end local v13           #section:Lcom/infraware/common/util/ini/Section;
    .restart local v8       #inputStream:Ljava/io/InputStream;
    :goto_4e
    return-void

    .line 107
    :catch_4f
    move-exception v4

    .line 108
    .local v4, e:Ljava/io/FileNotFoundException;
    :goto_50
    goto :goto_4e

    .line 109
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_51
    move-exception v4

    .line 110
    .local v4, e:Ljava/io/IOException;
    :goto_52
    goto :goto_4e

    .line 119
    .end local v4           #e:Ljava/io/IOException;
    .end local v8           #inputStream:Ljava/io/InputStream;
    .restart local v3       #count:I
    .restart local v7       #index:I
    .restart local v9       #inputStream:Ljava/io/InputStream;
    .restart local v12       #lineString:Ljava/lang/String;
    .restart local v13       #section:Lcom/infraware/common/util/ini/Section;
    :cond_53
    aget-byte v15, v6, v7

    const/16 v16, 0xd

    move/from16 v0, v16

    if-ne v15, v0, :cond_65

    add-int/lit8 v15, v7, 0x1

    aget-byte v15, v6, v15

    const/16 v16, 0xa

    move/from16 v0, v16

    if-eq v15, v0, :cond_69

    :cond_65
    add-int/lit8 v15, v10, -0x1

    if-ne v7, v15, :cond_b1

    .line 121
    :cond_69
    add-int/lit8 v7, v7, 0x1

    .line 123
    if-nez v3, :cond_74

    move v2, v3

    .end local v3           #count:I
    .restart local v2       #count:I
    move-object v11, v12

    .line 117
    .end local v12           #lineString:Ljava/lang/String;
    .restart local v11       #lineString:Ljava/lang/String;
    :goto_6f
    add-int/lit8 v7, v7, 0x1

    move v3, v2

    .end local v2           #count:I
    .restart local v3       #count:I
    move-object v12, v11

    .end local v11           #lineString:Ljava/lang/String;
    .restart local v12       #lineString:Ljava/lang/String;
    goto :goto_48

    .line 127
    :cond_74
    :try_start_74
    new-instance v11, Ljava/lang/String;

    const-string v15, "utf-8"

    invoke-direct {v11, v14, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_7b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_74 .. :try_end_7b} :catch_bb

    .line 128
    .end local v12           #lineString:Ljava/lang/String;
    .restart local v11       #lineString:Ljava/lang/String;
    :try_start_7b
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 130
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_87

    .line 132
    const/4 v2, 0x0

    .end local v3           #count:I
    .restart local v2       #count:I
    goto :goto_6f

    .line 136
    .end local v2           #count:I
    .restart local v3       #count:I
    :cond_87
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x5b

    move/from16 v0, v16

    if-ne v15, v0, :cond_a9

    .line 137
    const/4 v15, 0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/infraware/common/util/ini/IniFile;->addSection(Ljava/lang/String;)Lcom/infraware/common/util/ini/Section;
    :try_end_a4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7b .. :try_end_a4} :catch_af

    move-result-object v13

    .line 144
    :goto_a5
    new-array v14, v10, [B

    move v2, v3

    .line 145
    .end local v3           #count:I
    .restart local v2       #count:I
    goto :goto_6f

    .line 139
    .end local v2           #count:I
    .restart local v3       #count:I
    :cond_a9
    :try_start_a9
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v11}, Lcom/infraware/common/util/ini/IniFile;->setValue(Lcom/infraware/common/util/ini/Section;Ljava/lang/String;)V
    :try_end_ae
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a9 .. :try_end_ae} :catch_af

    goto :goto_a5

    .line 141
    :catch_af
    move-exception v15

    goto :goto_a5

    .line 148
    .end local v11           #lineString:Ljava/lang/String;
    .restart local v12       #lineString:Ljava/lang/String;
    :cond_b1
    add-int/lit8 v2, v3, 0x1

    .end local v3           #count:I
    .restart local v2       #count:I
    aget-byte v15, v6, v7

    aput-byte v15, v14, v3

    move-object v11, v12

    .end local v12           #lineString:Ljava/lang/String;
    .restart local v11       #lineString:Ljava/lang/String;
    goto :goto_6f

    .line 153
    .end local v2           #count:I
    .end local v11           #lineString:Ljava/lang/String;
    .restart local v3       #count:I
    .restart local v12       #lineString:Ljava/lang/String;
    :catch_b9
    move-exception v15

    goto :goto_4d

    .line 141
    :catch_bb
    move-exception v15

    move-object v11, v12

    .end local v12           #lineString:Ljava/lang/String;
    .restart local v11       #lineString:Ljava/lang/String;
    goto :goto_a5

    .line 109
    .end local v3           #count:I
    .end local v7           #index:I
    .end local v11           #lineString:Ljava/lang/String;
    .end local v13           #section:Lcom/infraware/common/util/ini/Section;
    :catch_be
    move-exception v4

    move-object v8, v9

    .end local v9           #inputStream:Ljava/io/InputStream;
    .restart local v8       #inputStream:Ljava/io/InputStream;
    goto :goto_52

    .line 107
    .end local v8           #inputStream:Ljava/io/InputStream;
    .restart local v9       #inputStream:Ljava/io/InputStream;
    :catch_c1
    move-exception v4

    move-object v8, v9

    .end local v9           #inputStream:Ljava/io/InputStream;
    .restart local v8       #inputStream:Ljava/io/InputStream;
    goto :goto_50
.end method

.method public removeSection(Ljava/lang/String;)V
    .registers 4
    .parameter "sectionName"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/infraware/common/util/ini/IniFile;->getSection(Ljava/lang/String;)Lcom/infraware/common/util/ini/Section;

    move-result-object v0

    .line 188
    .local v0, section:Lcom/infraware/common/util/ini/Section;
    if-nez v0, :cond_7

    .line 195
    :cond_6
    :goto_6
    return-void

    .line 191
    :cond_7
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/common/util/ini/Section;->getValue(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    .line 194
    iget-object v1, p0, Lcom/infraware/common/util/ini/IniFile;->sectionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public removeValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "sectionName"
    .parameter "key"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/infraware/common/util/ini/IniFile;->getSection(Ljava/lang/String;)Lcom/infraware/common/util/ini/Section;

    move-result-object v0

    .line 179
    .local v0, section:Lcom/infraware/common/util/ini/Section;
    if-nez v0, :cond_7

    .line 183
    :goto_6
    return-void

    .line 182
    :cond_7
    invoke-virtual {v0, p2}, Lcom/infraware/common/util/ini/Section;->removeKey(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public setEndFlag(Z)V
    .registers 3
    .parameter "isEndFlag"

    .prologue
    .line 199
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/common/util/ini/IniFile;->isEndFlag:Ljava/lang/Boolean;

    .line 200
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "sectionName"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/infraware/common/util/ini/IniFile;->getSection(Ljava/lang/String;)Lcom/infraware/common/util/ini/Section;

    move-result-object v0

    .line 168
    .local v0, section:Lcom/infraware/common/util/ini/Section;
    if-nez v0, :cond_a

    .line 169
    invoke-direct {p0, p1}, Lcom/infraware/common/util/ini/IniFile;->addSection(Ljava/lang/String;)Lcom/infraware/common/util/ini/Section;

    move-result-object v0

    .line 171
    :cond_a
    invoke-direct {p0, v0, p2, p3}, Lcom/infraware/common/util/ini/IniFile;->setValue(Lcom/infraware/common/util/ini/Section;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method
