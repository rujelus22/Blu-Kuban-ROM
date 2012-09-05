.class public abstract Lorg/snmp4j/smi/AbstractVariable;
.super Ljava/lang/Object;
.source "AbstractVariable.java"

# interfaces
.implements Lorg/snmp4j/smi/Variable;
.implements Ljava/io/Serializable;


# static fields
.field public static final SMISYNTAXES_PROPERTIES:Ljava/lang/String; = "org.snmp4j.smisyntaxes"

.field private static final SMISYNTAXES_PROPERTIES_DEFAULT:Ljava/lang/String; = "smisyntaxes.properties"

.field private static final SYNTAX_NAME_MAPPING:[[Ljava/lang/Object; = null

.field static class$org$snmp4j$smi$AbstractVariable:Ljava/lang/Class; = null

.field static class$org$snmp4j$smi$Variable:Ljava/lang/Class; = null

.field private static final logger:Lorg/snmp4j/log/LogAdapter; = null

.field private static registeredSyntaxes:Ljava/util/Hashtable; = null

.field private static final serialVersionUID:J = 0x135f05c4f032ae88L


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 58
    const/16 v0, 0xf

    new-array v0, v0, [[Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "Integer32"

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "BIT STRING"

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "OCTET STRING"

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "OBJECT IDENTIFIER"

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v7

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "TimeTicks"

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x43

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v7

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Counter"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x41

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Counter64"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x46

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "EndOfMibView"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x82

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Gauge"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x42

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Unsigned32"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x42

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "IpAddress"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "NoSuchInstance"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x81

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "NoSuchObject"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Null"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Opaque"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x44

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    sput-object v0, Lorg/snmp4j/smi/AbstractVariable;->SYNTAX_NAME_MAPPING:[[Ljava/lang/Object;

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lorg/snmp4j/smi/AbstractVariable;->registeredSyntaxes:Ljava/util/Hashtable;

    .line 78
    sget-object v0, Lorg/snmp4j/smi/AbstractVariable;->class$org$snmp4j$smi$AbstractVariable:Ljava/lang/Class;

    if-nez v0, :cond_129

    const-string v0, "org.snmp4j.smi.AbstractVariable"

    invoke-static {v0}, Lorg/snmp4j/smi/AbstractVariable;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/smi/AbstractVariable;->class$org$snmp4j$smi$AbstractVariable:Ljava/lang/Class;

    :goto_122
    invoke-static {v0}, Lorg/snmp4j/log/LogFactory;->getLogger(Ljava/lang/Class;)Lorg/snmp4j/log/LogAdapter;

    move-result-object v0

    sput-object v0, Lorg/snmp4j/smi/AbstractVariable;->logger:Lorg/snmp4j/log/LogAdapter;

    return-void

    :cond_129
    sget-object v0, Lorg/snmp4j/smi/AbstractVariable;->class$org$snmp4j$smi$AbstractVariable:Ljava/lang/Class;

    goto :goto_122
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "x0"

    .prologue
    .line 79
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public static createFromBER(Lorg/snmp4j/asn1/BERInputStream;)Lorg/snmp4j/smi/Variable;
    .registers 9
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p0}, Lorg/snmp4j/asn1/BERInputStream;->markSupported()Z

    move-result v5

    if-nez v5, :cond_e

    .line 139
    new-instance v5, Ljava/io/IOException;

    const-string v6, "InputStream for decoding a Variable must support marks"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 142
    :cond_e
    invoke-static {}, Lorg/snmp4j/SNMP4JSettings;->isExtensibilityEnabled()Z

    move-result v5

    if-eqz v5, :cond_1b

    sget-object v5, Lorg/snmp4j/smi/AbstractVariable;->registeredSyntaxes:Ljava/util/Hashtable;

    if-nez v5, :cond_1b

    .line 144
    invoke-static {}, Lorg/snmp4j/smi/AbstractVariable;->registerSyntaxes()V

    .line 146
    :cond_1b
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lorg/snmp4j/asn1/BERInputStream;->mark(I)V

    .line 147
    invoke-virtual {p0}, Lorg/snmp4j/asn1/BERInputStream;->read()I

    move-result v3

    .line 149
    .local v3, type:I
    invoke-static {}, Lorg/snmp4j/SNMP4JSettings;->isExtensibilityEnabled()Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 150
    sget-object v5, Lorg/snmp4j/smi/AbstractVariable;->registeredSyntaxes:Ljava/util/Hashtable;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 151
    .local v1, c:Ljava/lang/Class;
    if-nez v1, :cond_51

    .line 152
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Encountered unsupported variable syntax: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 156
    :cond_51
    :try_start_51
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/snmp4j/smi/Variable;
    :try_end_57
    .catch Ljava/lang/IllegalAccessException; {:try_start_51 .. :try_end_57} :catch_5e
    .catch Ljava/lang/InstantiationException; {:try_start_51 .. :try_end_57} :catch_7c

    .line 171
    .end local v1           #c:Ljava/lang/Class;
    .local v4, variable:Lorg/snmp4j/smi/Variable;
    :goto_57
    invoke-virtual {p0}, Lorg/snmp4j/asn1/BERInputStream;->reset()V

    .line 172
    invoke-interface {v4, p0}, Lorg/snmp4j/smi/Variable;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 173
    return-object v4

    .line 158
    .end local v4           #variable:Lorg/snmp4j/smi/Variable;
    .restart local v1       #c:Ljava/lang/Class;
    :catch_5e
    move-exception v0

    .line 159
    .local v0, aex:Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Could not access variable syntax class for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 162
    .end local v0           #aex:Ljava/lang/IllegalAccessException;
    :catch_7c
    move-exception v2

    .line 163
    .local v2, iex:Ljava/lang/InstantiationException;
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Could not instantiate variable syntax class for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 169
    .end local v1           #c:Ljava/lang/Class;
    .end local v2           #iex:Ljava/lang/InstantiationException;
    :cond_9a
    invoke-static {v3}, Lorg/snmp4j/smi/AbstractVariable;->createVariable(I)Lorg/snmp4j/smi/Variable;

    move-result-object v4

    .restart local v4       #variable:Lorg/snmp4j/smi/Variable;
    goto :goto_57
.end method

.method public static createFromSyntax(I)Lorg/snmp4j/smi/Variable;
    .registers 8
    .parameter "smiSyntax"

    .prologue
    .line 237
    invoke-static {}, Lorg/snmp4j/SNMP4JSettings;->isExtensibilityEnabled()Z

    move-result v4

    if-nez v4, :cond_b

    .line 238
    invoke-static {p0}, Lorg/snmp4j/smi/AbstractVariable;->createVariable(I)Lorg/snmp4j/smi/Variable;

    move-result-object v3

    .line 250
    :goto_a
    return-object v3

    .line 240
    :cond_b
    sget-object v4, Lorg/snmp4j/smi/AbstractVariable;->registeredSyntaxes:Ljava/util/Hashtable;

    if-nez v4, :cond_12

    .line 241
    invoke-static {}, Lorg/snmp4j/smi/AbstractVariable;->registerSyntaxes()V

    .line 243
    :cond_12
    sget-object v4, Lorg/snmp4j/smi/AbstractVariable;->registeredSyntaxes:Ljava/util/Hashtable;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 244
    .local v1, c:Ljava/lang/Class;
    if-nez v1, :cond_3a

    .line 245
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Unsupported variable syntax: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 249
    :cond_3a
    :try_start_3a
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/snmp4j/smi/Variable;
    :try_end_40
    .catch Ljava/lang/IllegalAccessException; {:try_start_3a .. :try_end_40} :catch_41
    .catch Ljava/lang/InstantiationException; {:try_start_3a .. :try_end_40} :catch_5f

    .line 250
    .local v3, variable:Lorg/snmp4j/smi/Variable;
    goto :goto_a

    .line 252
    .end local v3           #variable:Lorg/snmp4j/smi/Variable;
    :catch_41
    move-exception v0

    .line 253
    .local v0, aex:Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Could not access variable syntax class for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 256
    .end local v0           #aex:Ljava/lang/IllegalAccessException;
    :catch_5f
    move-exception v2

    .line 257
    .local v2, iex:Ljava/lang/InstantiationException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Could not instantiate variable syntax class for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static createVariable(I)Lorg/snmp4j/smi/Variable;
    .registers 4
    .parameter "smiSyntax"

    .prologue
    .line 177
    sparse-switch p0, :sswitch_data_70

    .line 218
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unsupported variable syntax: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :sswitch_1c
    new-instance v0, Lorg/snmp4j/smi/OID;

    invoke-direct {v0}, Lorg/snmp4j/smi/OID;-><init>()V

    .line 215
    :goto_21
    return-object v0

    .line 182
    :sswitch_22
    new-instance v0, Lorg/snmp4j/smi/Integer32;

    invoke-direct {v0}, Lorg/snmp4j/smi/Integer32;-><init>()V

    goto :goto_21

    .line 185
    :sswitch_28
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v0}, Lorg/snmp4j/smi/OctetString;-><init>()V

    goto :goto_21

    .line 188
    :sswitch_2e
    new-instance v0, Lorg/snmp4j/smi/Gauge32;

    invoke-direct {v0}, Lorg/snmp4j/smi/Gauge32;-><init>()V

    goto :goto_21

    .line 191
    :sswitch_34
    new-instance v0, Lorg/snmp4j/smi/Counter32;

    invoke-direct {v0}, Lorg/snmp4j/smi/Counter32;-><init>()V

    goto :goto_21

    .line 194
    :sswitch_3a
    new-instance v0, Lorg/snmp4j/smi/Counter64;

    invoke-direct {v0}, Lorg/snmp4j/smi/Counter64;-><init>()V

    goto :goto_21

    .line 197
    :sswitch_40
    new-instance v0, Lorg/snmp4j/smi/Null;

    invoke-direct {v0}, Lorg/snmp4j/smi/Null;-><init>()V

    goto :goto_21

    .line 200
    :sswitch_46
    new-instance v0, Lorg/snmp4j/smi/TimeTicks;

    invoke-direct {v0}, Lorg/snmp4j/smi/TimeTicks;-><init>()V

    goto :goto_21

    .line 203
    :sswitch_4c
    new-instance v0, Lorg/snmp4j/smi/Null;

    const/16 v1, 0x82

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/Null;-><init>(I)V

    goto :goto_21

    .line 206
    :sswitch_54
    new-instance v0, Lorg/snmp4j/smi/Null;

    const/16 v1, 0x81

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/Null;-><init>(I)V

    goto :goto_21

    .line 209
    :sswitch_5c
    new-instance v0, Lorg/snmp4j/smi/Null;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/Null;-><init>(I)V

    goto :goto_21

    .line 212
    :sswitch_64
    new-instance v0, Lorg/snmp4j/smi/Opaque;

    invoke-direct {v0}, Lorg/snmp4j/smi/Opaque;-><init>()V

    goto :goto_21

    .line 215
    :sswitch_6a
    new-instance v0, Lorg/snmp4j/smi/IpAddress;

    invoke-direct {v0}, Lorg/snmp4j/smi/IpAddress;-><init>()V

    goto :goto_21

    .line 177
    :sswitch_data_70
    .sparse-switch
        0x2 -> :sswitch_22
        0x4 -> :sswitch_28
        0x5 -> :sswitch_40
        0x6 -> :sswitch_1c
        0x40 -> :sswitch_6a
        0x41 -> :sswitch_34
        0x42 -> :sswitch_2e
        0x43 -> :sswitch_46
        0x44 -> :sswitch_64
        0x46 -> :sswitch_3a
        0x80 -> :sswitch_5c
        0x81 -> :sswitch_54
        0x82 -> :sswitch_4c
    .end sparse-switch
.end method

.method public static getSyntaxFromString(Ljava/lang/String;)I
    .registers 4
    .parameter "syntaxString"

    .prologue
    .line 433
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lorg/snmp4j/smi/AbstractVariable;->SYNTAX_NAME_MAPPING:[[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_24

    .line 434
    sget-object v1, Lorg/snmp4j/smi/AbstractVariable;->SYNTAX_NAME_MAPPING:[[Ljava/lang/Object;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 435
    sget-object v1, Lorg/snmp4j/smi/AbstractVariable;->SYNTAX_NAME_MAPPING:[[Ljava/lang/Object;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 438
    :goto_20
    return v1

    .line 433
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 438
    :cond_24
    const/4 v1, 0x5

    goto :goto_20
.end method

.method public static getSyntaxString(I)Ljava/lang/String;
    .registers 2
    .parameter "syntax"

    .prologue
    .line 378
    sparse-switch p0, :sswitch_data_30

    .line 408
    const-string v0, "?"

    :goto_5
    return-object v0

    .line 380
    :sswitch_6
    const-string v0, "Integer32"

    goto :goto_5

    .line 382
    :sswitch_9
    const-string v0, "BIT STRING"

    goto :goto_5

    .line 384
    :sswitch_c
    const-string v0, "OCTET STRING"

    goto :goto_5

    .line 386
    :sswitch_f
    const-string v0, "OBJECT IDENTIFIER"

    goto :goto_5

    .line 388
    :sswitch_12
    const-string v0, "TimeTicks"

    goto :goto_5

    .line 390
    :sswitch_15
    const-string v0, "Counter"

    goto :goto_5

    .line 392
    :sswitch_18
    const-string v0, "Counter64"

    goto :goto_5

    .line 394
    :sswitch_1b
    const-string v0, "EndOfMibView"

    goto :goto_5

    .line 396
    :sswitch_1e
    const-string v0, "Gauge"

    goto :goto_5

    .line 398
    :sswitch_21
    const-string v0, "IpAddress"

    goto :goto_5

    .line 400
    :sswitch_24
    const-string v0, "NoSuchInstance"

    goto :goto_5

    .line 402
    :sswitch_27
    const-string v0, "NoSuchObject"

    goto :goto_5

    .line 404
    :sswitch_2a
    const-string v0, "Null"

    goto :goto_5

    .line 406
    :sswitch_2d
    const-string v0, "Opaque"

    goto :goto_5

    .line 378
    :sswitch_data_30
    .sparse-switch
        0x2 -> :sswitch_6
        0x3 -> :sswitch_9
        0x4 -> :sswitch_c
        0x5 -> :sswitch_2a
        0x6 -> :sswitch_f
        0x40 -> :sswitch_21
        0x41 -> :sswitch_15
        0x42 -> :sswitch_1e
        0x43 -> :sswitch_12
        0x44 -> :sswitch_2d
        0x46 -> :sswitch_18
        0x80 -> :sswitch_27
        0x81 -> :sswitch_24
        0x82 -> :sswitch_1b
    .end sparse-switch
.end method

.method private static declared-synchronized registerSyntaxes()V
    .registers 16

    .prologue
    .line 270
    const-class v13, Lorg/snmp4j/smi/AbstractVariable;

    monitor-enter v13

    :try_start_3
    const-string v12, "org.snmp4j.smisyntaxes"

    const-string v14, "smisyntaxes.properties"

    invoke-static {v12, v14}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 272
    .local v10, syntaxes:Ljava/lang/String;
    sget-object v12, Lorg/snmp4j/smi/AbstractVariable;->class$org$snmp4j$smi$Variable:Ljava/lang/Class;

    if-nez v12, :cond_3f

    const-string v12, "org.snmp4j.smi.Variable"

    invoke-static {v12}, Lorg/snmp4j/smi/AbstractVariable;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sput-object v12, Lorg/snmp4j/smi/AbstractVariable;->class$org$snmp4j$smi$Variable:Ljava/lang/Class;

    :goto_17
    invoke-virtual {v12, v10}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 273
    .local v7, is:Ljava/io/InputStream;
    if-nez v7, :cond_42

    .line 274
    new-instance v12, Ljava/lang/InternalError;

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "Could not read \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "\' from classpath!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3c

    .line 270
    .end local v7           #is:Ljava/io/InputStream;
    :catchall_3c
    move-exception v12

    monitor-exit v13

    throw v12

    .line 272
    :cond_3f
    :try_start_3f
    sget-object v12, Lorg/snmp4j/smi/AbstractVariable;->class$org$snmp4j$smi$Variable:Ljava/lang/Class;

    goto :goto_17

    .line 277
    .restart local v7       #is:Ljava/io/InputStream;
    :cond_42
    new-instance v8, Ljava/util/Properties;

    invoke-direct {v8}, Ljava/util/Properties;-><init>()V
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_3c

    .line 279
    .local v8, props:Ljava/util/Properties;
    :try_start_47
    invoke-virtual {v8, v7}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 280
    new-instance v9, Ljava/util/Hashtable;

    invoke-virtual {v8}, Ljava/util/Properties;->size()I

    move-result v12

    invoke-direct {v9, v12}, Ljava/util/Hashtable;-><init>(I)V

    .line 281
    .local v9, regSyntaxes:Ljava/util/Hashtable;
    invoke-virtual {v8}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, en:Ljava/util/Enumeration;
    :goto_57
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_ad

    .line 282
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 283
    .local v5, id:Ljava/lang/String;
    invoke-virtual {v8, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_66
    .catchall {:try_start_47 .. :try_end_66} :catchall_a8
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_66} :catch_7b

    move-result-object v1

    .line 285
    .local v1, className:Ljava/lang/String;
    :try_start_67
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 286
    .local v0, c:Ljava/lang/Class;
    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v12, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_73
    .catchall {:try_start_67 .. :try_end_73} :catchall_a8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_67 .. :try_end_73} :catch_74
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_73} :catch_7b

    goto :goto_57

    .line 288
    .end local v0           #c:Ljava/lang/Class;
    :catch_74
    move-exception v2

    .line 289
    .local v2, cnfe:Ljava/lang/ClassNotFoundException;
    :try_start_75
    sget-object v12, Lorg/snmp4j/smi/AbstractVariable;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v12, v2}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V
    :try_end_7a
    .catchall {:try_start_75 .. :try_end_7a} :catchall_a8
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_7a} :catch_7b

    goto :goto_57

    .line 295
    .end local v1           #className:Ljava/lang/String;
    .end local v2           #cnfe:Ljava/lang/ClassNotFoundException;
    .end local v3           #en:Ljava/util/Enumeration;
    .end local v5           #id:Ljava/lang/String;
    .end local v9           #regSyntaxes:Ljava/util/Hashtable;
    :catch_7b
    move-exception v6

    .line 296
    .local v6, iox:Ljava/io/IOException;
    :try_start_7c
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "Could not read \'"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v14, "\': "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 298
    .local v11, txt:Ljava/lang/String;
    sget-object v12, Lorg/snmp4j/smi/AbstractVariable;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v12, v11}, Lorg/snmp4j/log/LogAdapter;->error(Ljava/lang/Object;)V

    .line 299
    new-instance v12, Ljava/lang/InternalError;

    invoke-direct {v12, v11}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_a8
    .catchall {:try_start_7c .. :try_end_a8} :catchall_a8

    .line 302
    .end local v6           #iox:Ljava/io/IOException;
    .end local v11           #txt:Ljava/lang/String;
    :catchall_a8
    move-exception v12

    .line 303
    :try_start_a9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_ac
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_3c
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_bb

    .line 307
    :goto_ac
    :try_start_ac
    throw v12
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_3c

    .line 293
    .restart local v3       #en:Ljava/util/Enumeration;
    .restart local v9       #regSyntaxes:Ljava/util/Hashtable;
    :cond_ad
    :try_start_ad
    sput-object v9, Lorg/snmp4j/smi/AbstractVariable;->registeredSyntaxes:Ljava/util/Hashtable;
    :try_end_af
    .catchall {:try_start_ad .. :try_end_af} :catchall_a8
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_af} :catch_7b

    .line 303
    :try_start_af
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_3c
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_b4

    .line 309
    :goto_b2
    monitor-exit v13

    return-void

    .line 305
    :catch_b4
    move-exception v4

    .line 306
    .local v4, ex:Ljava/io/IOException;
    :try_start_b5
    sget-object v12, Lorg/snmp4j/smi/AbstractVariable;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v12, v4}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V

    goto :goto_b2

    .line 305
    .end local v3           #en:Ljava/util/Enumeration;
    .end local v4           #ex:Ljava/io/IOException;
    .end local v9           #regSyntaxes:Ljava/util/Hashtable;
    :catch_bb
    move-exception v4

    .line 306
    .restart local v4       #ex:Ljava/io/IOException;
    sget-object v14, Lorg/snmp4j/smi/AbstractVariable;->logger:Lorg/snmp4j/log/LogAdapter;

    invoke-interface {v14, v4}, Lorg/snmp4j/log/LogAdapter;->warn(Ljava/lang/Object;)V
    :try_end_c1
    .catchall {:try_start_b5 .. :try_end_c1} :catchall_3c

    goto :goto_ac
.end method


# virtual methods
.method public abstract clone()Ljava/lang/Object;
.end method

.method public abstract compareTo(Ljava/lang/Object;)I
.end method

.method public abstract decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract encodeBER(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract fromSubIndex(Lorg/snmp4j/smi/OID;Z)V
.end method

.method public abstract getBERLength()I
.end method

.method public getBERPayloadLength()I
    .registers 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/snmp4j/smi/AbstractVariable;->getBERLength()I

    move-result v0

    return v0
.end method

.method public abstract getSyntax()I
.end method

.method public final getSyntaxString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 420
    invoke-virtual {p0}, Lorg/snmp4j/smi/AbstractVariable;->getSyntax()I

    move-result v0

    invoke-static {v0}, Lorg/snmp4j/smi/AbstractVariable;->getSyntaxString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract hashCode()I
.end method

.method public isDynamic()Z
    .registers 2

    .prologue
    .line 485
    const/4 v0, 0x0

    return v0
.end method

.method public isException()Z
    .registers 2

    .prologue
    .line 333
    invoke-virtual {p0}, Lorg/snmp4j/smi/AbstractVariable;->getSyntax()I

    move-result v0

    invoke-static {v0}, Lorg/snmp4j/smi/Null;->isExceptionSyntax(I)Z

    move-result v0

    return v0
.end method

.method public abstract toInt()I
.end method

.method public abstract toLong()J
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract toSubIndex(Z)Lorg/snmp4j/smi/OID;
.end method
