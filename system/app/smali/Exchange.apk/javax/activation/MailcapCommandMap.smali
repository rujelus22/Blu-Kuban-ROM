.class public Ljavax/activation/MailcapCommandMap;
.super Ljavax/activation/CommandMap;
.source "MailcapCommandMap.java"


# static fields
.field private static debug:Z


# instance fields
.field private mailcaps:[[Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Ljavax/activation/MailcapCommandMap;->debug:Z

    .line 77
    :try_start_3
    const-string v0, "javax.activation.debug"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Ljavax/activation/MailcapCommandMap;->debug:Z
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_13} :catch_14

    .line 83
    :goto_13
    return-void

    .line 80
    :catch_14
    move-exception v0

    goto :goto_13
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 91
    invoke-direct {p0}, Ljavax/activation/CommandMap;-><init>()V

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavax/activation/MailcapCommandMap;->init(Ljava/io/Reader;)V

    .line 93
    return-void
.end method

.method private addField(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 705
    if-nez p3, :cond_16

    .line 707
    const/16 v0, 0x3d

    invoke-virtual {p4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 708
    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    .line 710
    const/4 v1, 0x0

    invoke-virtual {p4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 711
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p4

    .line 714
    :cond_16
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_24

    if-eqz p3, :cond_24

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_25

    .line 732
    :cond_24
    :goto_24
    return-void

    .line 719
    :cond_25
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 720
    if-nez v0, :cond_4a

    .line 722
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 723
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 725
    :goto_36
    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 726
    if-nez v0, :cond_46

    .line 728
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 729
    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    :cond_46
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_4a
    move-object v1, v0

    goto :goto_36
.end method

.method private getCommands(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x2f

    .line 736
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 737
    new-instance v1, Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 741
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 742
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 743
    if-nez v1, :cond_2d

    .line 767
    :goto_2c
    return-object v0

    .line 747
    :cond_2d
    if-nez v0, :cond_31

    move-object v0, v1

    .line 749
    goto :goto_2c

    .line 751
    :cond_31
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 752
    invoke-interface {v4, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 753
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_41
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 755
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 756
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 757
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 758
    if-nez v3, :cond_5f

    .line 760
    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41

    .line 764
    :cond_5f
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_41

    :cond_63
    move-object v0, v4

    .line 767
    goto :goto_2c
.end method

.method private getSystemResources(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .parameter

    .prologue
    .line 774
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 777
    :try_start_5
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 778
    :goto_9
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 780
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_16} :catch_17

    goto :goto_9

    .line 783
    :catch_17
    move-exception v1

    .line 786
    :cond_18
    return-object v0
.end method

.method private init(Ljava/io/Reader;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 134
    filled-new-array {v7, v5}, [I

    move-result-object v0

    const-class v2, Ljava/util/Map;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/util/Map;

    iput-object v0, p0, Ljavax/activation/MailcapCommandMap;->mailcaps:[[Ljava/util/Map;

    move v2, v1

    .line 135
    :goto_13
    if-ge v2, v7, :cond_2a

    move v0, v1

    .line 137
    :goto_16
    if-ge v0, v5, :cond_26

    .line 139
    iget-object v3, p0, Ljavax/activation/MailcapCommandMap;->mailcaps:[[Ljava/util/Map;

    aget-object v3, v3, v2

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    aput-object v4, v3, v0

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 135
    :cond_26
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_13

    .line 142
    :cond_2a
    if-eqz p1, :cond_3b

    .line 144
    sget-boolean v0, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v0, :cond_37

    .line 146
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "MailcapCommandMap: load PROG"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    :cond_37
    const/4 v0, 0x0

    :try_start_38
    invoke-direct {p0, v0, p1}, Ljavax/activation/MailcapCommandMap;->parse(ILjava/io/Reader;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_147

    .line 157
    :cond_3b
    :goto_3b
    sget-boolean v0, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v0, :cond_46

    .line 159
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "MailcapCommandMap: load HOME"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 163
    :cond_46
    :try_start_46
    const-string v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_67

    .line 166
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ".mailcap"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Ljavax/activation/MailcapCommandMap;->parseFile(ILjava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/SecurityException; {:try_start_46 .. :try_end_67} :catch_157

    .line 176
    :cond_67
    :goto_67
    sget-boolean v0, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v0, :cond_72

    .line 178
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "MailcapCommandMap: load SYS"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 182
    :cond_72
    const/4 v0, 0x2

    :try_start_73
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "java.home"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "mailcap"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Ljavax/activation/MailcapCommandMap;->parseFile(ILjava/lang/String;)V
    :try_end_9d
    .catch Ljava/lang/SecurityException; {:try_start_73 .. :try_end_9d} :catch_154

    .line 193
    :goto_9d
    sget-boolean v0, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v0, :cond_a8

    .line 195
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "MailcapCommandMap: load JAR"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 197
    :cond_a8
    const-string v0, "META-INF/mailcap"

    invoke-direct {p0, v0}, Ljavax/activation/MailcapCommandMap;->getSystemResources(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 198
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 199
    if-lez v5, :cond_130

    move v3, v1

    .line 201
    :goto_b5
    if-ge v3, v5, :cond_135

    .line 203
    const/4 v1, 0x0

    .line 204
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 207
    :try_start_be
    sget-boolean v2, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v2, :cond_de

    .line 209
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 211
    :cond_de
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_e7
    .catchall {:try_start_be .. :try_end_e7} :catchall_129
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_e7} :catch_f4

    .line 212
    const/4 v0, 0x3

    :try_start_e8
    invoke-direct {p0, v0, v2}, Ljavax/activation/MailcapCommandMap;->parse(ILjava/io/Reader;)V
    :try_end_eb
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_14e
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_eb} :catch_151

    .line 224
    if-eqz v2, :cond_f0

    .line 228
    :try_start_ed
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f0} :catch_14a

    .line 201
    :cond_f0
    :goto_f0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_b5

    .line 214
    :catch_f4
    move-exception v0

    .line 216
    :goto_f5
    :try_start_f5
    sget-boolean v2, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v2, :cond_121

    .line 218
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_121
    .catchall {:try_start_f5 .. :try_end_121} :catchall_129

    .line 224
    :cond_121
    if-eqz v1, :cond_f0

    .line 228
    :try_start_123
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_126} :catch_127

    goto :goto_f0

    .line 230
    :catch_127
    move-exception v0

    goto :goto_f0

    .line 224
    :catchall_129
    move-exception v0

    :goto_12a
    if-eqz v1, :cond_12f

    .line 228
    :try_start_12c
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_12f
    .catch Ljava/io/IOException; {:try_start_12c .. :try_end_12f} :catch_14c

    .line 232
    :cond_12f
    :goto_12f
    throw v0

    .line 239
    :cond_130
    const-string v0, "/META-INF/mailcap"

    invoke-direct {p0, v6, v0}, Ljavax/activation/MailcapCommandMap;->parseResource(ILjava/lang/String;)V

    .line 242
    :cond_135
    sget-boolean v0, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v0, :cond_140

    .line 244
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "MailcapCommandMap: load DEF"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 246
    :cond_140
    const/4 v0, 0x4

    const-string v1, "/META-INF/mailcap.default"

    invoke-direct {p0, v0, v1}, Ljavax/activation/MailcapCommandMap;->parseResource(ILjava/lang/String;)V

    .line 247
    return-void

    .line 152
    :catch_147
    move-exception v0

    goto/16 :goto_3b

    .line 230
    :catch_14a
    move-exception v0

    goto :goto_f0

    :catch_14c
    move-exception v1

    goto :goto_12f

    .line 224
    :catchall_14e
    move-exception v0

    move-object v1, v2

    goto :goto_12a

    .line 214
    :catch_151
    move-exception v0

    move-object v1, v2

    goto :goto_f5

    .line 189
    :catch_154
    move-exception v0

    goto/16 :goto_9d

    .line 172
    :catch_157
    move-exception v0

    goto/16 :goto_67
.end method

.method private static nameOf(I)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 515
    packed-switch p0, :pswitch_data_16

    .line 528
    const-string v0, "ERR"

    :goto_5
    return-object v0

    .line 518
    :pswitch_6
    const-string v0, "PROG"

    goto :goto_5

    .line 520
    :pswitch_9
    const-string v0, "HOME"

    goto :goto_5

    .line 522
    :pswitch_c
    const-string v0, "SYS"

    goto :goto_5

    .line 524
    :pswitch_f
    const-string v0, "JAR"

    goto :goto_5

    .line 526
    :pswitch_12
    const-string v0, "DEF"

    goto :goto_5

    .line 515
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method private parse(ILjava/io/Reader;)V
    .registers 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 609
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 611
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    :goto_d
    if-eqz v2, :cond_53

    .line 613
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 614
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 615
    if-eqz v4, :cond_21

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-ne v5, v6, :cond_26

    .line 611
    :cond_21
    :goto_21
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    .line 619
    :cond_26
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_41

    .line 621
    if-nez v0, :cond_37

    .line 623
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 625
    :cond_37
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_21

    .line 627
    :cond_41
    if-eqz v0, :cond_4f

    .line 629
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 630
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljavax/activation/MailcapCommandMap;->parseEntry(ILjava/lang/String;)V

    move-object v0, v1

    .line 631
    goto :goto_21

    .line 635
    :cond_4f
    invoke-direct {p0, p1, v2}, Ljavax/activation/MailcapCommandMap;->parseEntry(ILjava/lang/String;)V

    goto :goto_21

    .line 638
    :cond_53
    return-void
.end method

.method private parseEntry(ILjava/lang/String;)V
    .registers 15
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 643
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 644
    array-length v8, v7

    .line 647
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 648
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v6, v3

    move v0, v3

    move v2, v3

    .line 649
    :goto_15
    if-ge v6, v8, :cond_4e

    .line 651
    aget-char v5, v7, v6

    .line 652
    const/16 v11, 0x5c

    if-ne v5, v11, :cond_21

    .line 654
    add-int/lit8 v6, v6, 0x1

    aget-char v5, v7, v6

    .line 656
    :cond_21
    const/16 v11, 0x3b

    if-ne v5, v11, :cond_41

    if-nez v2, :cond_41

    .line 658
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 659
    const-string v11, "x-java-fallback-entry"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_38

    move v0, v1

    .line 663
    :cond_38
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 649
    :goto_3e
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 668
    :cond_41
    const/16 v11, 0x22

    if-ne v5, v11, :cond_48

    .line 670
    if-nez v2, :cond_4c

    move v2, v1

    .line 672
    :cond_48
    :goto_48
    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3e

    :cond_4c
    move v2, v3

    .line 670
    goto :goto_48

    .line 675
    :cond_4e
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 676
    const-string v5, "x-java-fallback-entry"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    move v0, v1

    .line 680
    :cond_5f
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    .line 683
    if-ge v5, v4, :cond_85

    .line 685
    sget-boolean v0, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v0, :cond_84

    .line 687
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mailcap entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 700
    :cond_84
    return-void

    .line 692
    :cond_85
    if-eqz v0, :cond_b0

    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->mailcaps:[[Ljava/util/Map;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    move-object v2, v0

    .line 694
    :goto_8e
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 695
    const-string v3, "view-command"

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v2, v0, v3, v1}, Ljavax/activation/MailcapCommandMap;->addField(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 696
    :goto_a0
    if-ge v3, v5, :cond_84

    .line 698
    const/4 v4, 0x0

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v2, v0, v4, v1}, Ljavax/activation/MailcapCommandMap;->addField(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_a0

    .line 692
    :cond_b0
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->mailcaps:[[Ljava/util/Map;

    aget-object v0, v0, p1

    aget-object v0, v0, v3

    move-object v2, v0

    goto :goto_8e
.end method

.method private parseFile(ILjava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 534
    const/4 v1, 0x0

    .line 537
    :try_start_1
    sget-boolean v0, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v0, :cond_1d

    .line 539
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 541
    :cond_1d
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_60
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_22} :catch_2b

    .line 542
    :try_start_22
    invoke-direct {p0, p1, v2}, Ljavax/activation/MailcapCommandMap;->parse(ILjava/io/Reader;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_6b
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_6e

    .line 554
    if-eqz v2, :cond_2a

    .line 558
    :try_start_27
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_67

    .line 565
    :cond_2a
    :goto_2a
    return-void

    .line 544
    :catch_2b
    move-exception v0

    .line 546
    :goto_2c
    :try_start_2c
    sget-boolean v2, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v2, :cond_58

    .line 548
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_2c .. :try_end_58} :catchall_60

    .line 554
    :cond_58
    if-eqz v1, :cond_2a

    .line 558
    :try_start_5a
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_2a

    .line 560
    :catch_5e
    move-exception v0

    goto :goto_2a

    .line 554
    :catchall_60
    move-exception v0

    :goto_61
    if-eqz v1, :cond_66

    .line 558
    :try_start_63
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_69

    .line 562
    :cond_66
    :goto_66
    throw v0

    .line 560
    :catch_67
    move-exception v0

    goto :goto_2a

    :catch_69
    move-exception v1

    goto :goto_66

    .line 554
    :catchall_6b
    move-exception v0

    move-object v1, v2

    goto :goto_61

    .line 544
    :catch_6e
    move-exception v0

    move-object v1, v2

    goto :goto_2c
.end method

.method private parseResource(ILjava/lang/String;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 569
    const/4 v1, 0x0

    .line 572
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 573
    if-eqz v0, :cond_7b

    .line 575
    sget-boolean v2, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v2, :cond_27

    .line 577
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 579
    :cond_27
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_6a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2c} :catch_35

    .line 580
    :try_start_2c
    invoke-direct {p0, p1, v2}, Ljavax/activation/MailcapCommandMap;->parse(ILjava/io/Reader;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_75
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_78

    .line 593
    :goto_2f
    if-eqz v2, :cond_34

    .line 597
    :try_start_31
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_71

    .line 604
    :cond_34
    :goto_34
    return-void

    .line 583
    :catch_35
    move-exception v0

    .line 585
    :goto_36
    :try_start_36
    sget-boolean v2, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v2, :cond_62

    .line 587
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_36 .. :try_end_62} :catchall_6a

    .line 593
    :cond_62
    if-eqz v1, :cond_34

    .line 597
    :try_start_64
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_34

    .line 599
    :catch_68
    move-exception v0

    goto :goto_34

    .line 593
    :catchall_6a
    move-exception v0

    :goto_6b
    if-eqz v1, :cond_70

    .line 597
    :try_start_6d
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_73

    .line 601
    :cond_70
    :goto_70
    throw v0

    .line 599
    :catch_71
    move-exception v0

    goto :goto_34

    :catch_73
    move-exception v1

    goto :goto_70

    .line 593
    :catchall_75
    move-exception v0

    move-object v1, v2

    goto :goto_6b

    .line 583
    :catch_78
    move-exception v0

    move-object v1, v2

    goto :goto_36

    :cond_7b
    move-object v2, v1

    goto :goto_2f
.end method


# virtual methods
.method public declared-synchronized addMailcap(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 357
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v0, :cond_c

    .line 359
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "MailcapCommandMap: add to PROG"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_17

    .line 363
    :cond_c
    const/4 v0, 0x0

    :try_start_d
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Ljavax/activation/MailcapCommandMap;->parse(ILjava/io/Reader;)V
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_17
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_15} :catch_1a

    .line 368
    :goto_15
    monitor-exit p0

    return-void

    .line 357
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    .line 365
    :catch_1a
    move-exception v0

    goto :goto_15
.end method

.method public declared-synchronized createDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 377
    monitor-enter p0

    :try_start_2
    sget-boolean v0, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v0, :cond_1e

    .line 379
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MailcapCommandMap: createDataContentHandler for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1e
    move v3, v2

    .line 382
    :goto_1f
    const/4 v0, 0x2

    if-ge v3, v0, :cond_c6

    move v1, v2

    .line 384
    :goto_23
    const/4 v0, 0x5

    if-ge v1, v0, :cond_c1

    .line 386
    sget-boolean v0, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v0, :cond_42

    .line 388
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  search DB #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 390
    :cond_42
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->mailcaps:[[Ljava/util/Map;

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    invoke-direct {p0, v0, p1}, Ljavax/activation/MailcapCommandMap;->getCommands(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 391
    if-eqz v4, :cond_a7

    .line 393
    const-string v0, "content-handler"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 394
    if-nez v0, :cond_60

    .line 396
    const-string v0, "x-java-content-handler"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 398
    :cond_60
    if-eqz v0, :cond_a7

    .line 400
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 401
    sget-boolean v4, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v4, :cond_93

    .line 403
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  In "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljavax/activation/MailcapCommandMap;->nameOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", content-handler="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_93
    .catchall {:try_start_2 .. :try_end_93} :catchall_b5

    .line 408
    :cond_93
    :try_start_93
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 409
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/activation/DataContentHandler;
    :try_end_9d
    .catchall {:try_start_93 .. :try_end_9d} :catchall_b5
    .catch Ljava/lang/IllegalAccessException; {:try_start_93 .. :try_end_9d} :catch_9f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_93 .. :try_end_9d} :catch_ac
    .catch Ljava/lang/InstantiationException; {:try_start_93 .. :try_end_9d} :catch_b8

    .line 436
    :goto_9d
    monitor-exit p0

    return-object v0

    .line 411
    :catch_9f
    move-exception v0

    .line 413
    :try_start_a0
    sget-boolean v4, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v4, :cond_a7

    .line 415
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 384
    :cond_a7
    :goto_a7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_23

    .line 418
    :catch_ac
    move-exception v0

    .line 420
    sget-boolean v4, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v4, :cond_a7

    .line 422
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_b4
    .catchall {:try_start_a0 .. :try_end_b4} :catchall_b5

    goto :goto_a7

    .line 377
    :catchall_b5
    move-exception v0

    monitor-exit p0

    throw v0

    .line 425
    :catch_b8
    move-exception v0

    .line 427
    :try_start_b9
    sget-boolean v4, Ljavax/activation/MailcapCommandMap;->debug:Z

    if-eqz v4, :cond_a7

    .line 429
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V
    :try_end_c0
    .catchall {:try_start_b9 .. :try_end_c0} :catchall_b5

    goto :goto_a7

    .line 382
    :cond_c1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1f

    .line 436
    :cond_c6
    const/4 v0, 0x0

    goto :goto_9d
.end method
