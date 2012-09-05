.class public Lorg/snmp4j/util/ArgumentParser;
.super Ljava/lang/Object;
.source "ArgumentParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/snmp4j/util/ArgumentParser$ArgumentParseException;,
        Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;,
        Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;
    }
.end annotation


# static fields
.field public static final TYPES:[Ljava/lang/String; = null

.field public static final TYPE_INTEGER:I = 0x0

.field public static final TYPE_LONG:I = 0x1

.field public static final TYPE_OCTET_STRING:I = 0x3

.field public static final TYPE_STRING:I = 0x2


# instance fields
.field private optionFormat:Ljava/util/Map;

.field private parameterFormat:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 77
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "i"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "l"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "s"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "o"

    aput-object v2, v0, v1

    sput-object v0, Lorg/snmp4j/util/ArgumentParser;->TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "optionFormat"
    .parameter "parameterFormat"

    .prologue
    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/snmp4j/util/ArgumentParser;->parseFormat(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/util/ArgumentParser;->optionFormat:Ljava/util/Map;

    .line 95
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lorg/snmp4j/util/ArgumentParser;->parseFormat(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/snmp4j/util/ArgumentParser;->parameterFormat:Ljava/util/Map;

    .line 96
    return-void
.end method

.method public static getFirstValue(Ljava/util/List;)Ljava/lang/Object;
    .registers 2
    .parameter "optionValues"

    .prologue
    .line 460
    if-eqz p0, :cond_e

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 461
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 463
    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static getType(Ljava/lang/String;)I
    .registers 2
    .parameter "type"

    .prologue
    .line 188
    sget-object v0, Lorg/snmp4j/util/ArgumentParser;->TYPES:[Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static getValue(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;
    .registers 5
    .parameter "args"
    .parameter "name"
    .parameter "index"

    .prologue
    .line 480
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 481
    .local v0, values:Ljava/util/List;
    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_13

    .line 482
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 484
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public static main([Ljava/lang/String;)V
    .registers 7
    .parameter "args"

    .prologue
    .line 506
    new-instance v0, Lorg/snmp4j/util/ArgumentParser;

    const-string v3, "org.snmp4j.OptionFormat"

    const-string v4, "-o1[i{parameter1}] -o2[s,l]"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "org.snmp4j.ParameterFormat"

    const-string v5, "-param1[i] -param2[s<(udp|tcp):.*[/[0-9]+]?>{=udp:127.0.0.1/161}] +optParam1[l{=-100}] .."

    invoke-static {v4, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/snmp4j/util/ArgumentParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    .local v0, argumentparser:Lorg/snmp4j/util/ArgumentParser;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Option format is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lorg/snmp4j/util/ArgumentParser;->getOptionFormat()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 513
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Parameter format is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lorg/snmp4j/util/ArgumentParser;->getParameterFormat()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 514
    const/4 v2, 0x0

    .line 516
    .local v2, options:Ljava/util/Map;
    :try_start_4e
    invoke-virtual {v0, p0}, Lorg/snmp4j/util/ArgumentParser;->parse([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 517
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_57
    .catch Ljava/text/ParseException; {:try_start_4e .. :try_end_57} :catch_58

    .line 523
    :goto_57
    return-void

    .line 519
    :catch_58
    move-exception v1

    .line 520
    .local v1, ex:Ljava/text/ParseException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Failed to parse args: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 521
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_57
.end method

.method protected static parseFormat(Ljava/lang/String;Z)Ljava/util/Map;
    .registers 19
    .parameter "format"
    .parameter "parameterFormat"

    .prologue
    .line 107
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 108
    .local v6, options:Ljava/util/Map;
    const/4 v5, 0x0

    .line 109
    .local v5, last:Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;
    new-instance v12, Ljava/util/StringTokenizer;

    const-string v14, " "

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .local v12, st:Ljava/util/StringTokenizer;
    :goto_f
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_27

    .line 111
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    .line 112
    .local v13, token:Ljava/lang/String;
    const-string v14, ".."

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_30

    .line 113
    if-eqz v5, :cond_28

    .line 114
    const/4 v14, 0x1

    invoke-static {v5, v14}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->access$002(Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;Z)Z

    .line 184
    .end local v13           #token:Ljava/lang/String;
    :cond_27
    return-object v6

    .line 118
    .restart local v13       #token:Ljava/lang/String;
    :cond_28
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "\'..\' without parameter definition"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 121
    :cond_30
    new-instance v1, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;

    invoke-direct {v1}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;-><init>()V

    .line 122
    .local v1, af:Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;
    move-object v5, v1

    .line 123
    move/from16 v0, p1

    invoke-static {v1, v0}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->access$102(Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;Z)Z

    .line 124
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x2b

    if-eq v14, v15, :cond_13b

    const/4 v14, 0x1

    :goto_45
    invoke-static {v1, v14}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->access$202(Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;Z)Z

    .line 125
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 126
    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_170

    .line 127
    const/4 v14, 0x0

    const/16 v15, 0x5b

    invoke-virtual {v13, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->access$302(Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    invoke-static {v1}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->access$300(Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 129
    new-instance v10, Ljava/util/StringTokenizer;

    const-string v14, ","

    const/4 v15, 0x1

    invoke-direct {v10, v13, v14, v15}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 130
    .local v10, pt:Ljava/util/StringTokenizer;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v8, params:Ljava/util/List;
    const/4 v4, 0x0

    .line 132
    .local v4, inRegex:Ljava/lang/String;
    const/4 v3, 0x1

    .local v3, i:I
    :goto_86
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_156

    .line 133
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 134
    .local v7, param:Ljava/lang/String;
    if-eqz v4, :cond_13e

    .line 135
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 136
    move-object v7, v4

    .line 141
    :cond_a4
    const/16 v14, 0x3c

    invoke-virtual {v7, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-lez v14, :cond_ad

    .line 142
    move-object v4, v7

    .line 144
    :cond_ad
    new-instance v2, Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;

    invoke-direct {v2}, Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;-><init>()V

    .line 145
    .local v2, ap:Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;->access$402(Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    const-string v14, ">"

    invoke-virtual {v7, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_147

    .line 147
    const/4 v4, 0x0

    .line 148
    const/16 v14, 0x3c

    invoke-virtual {v7, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 149
    .local v11, regexPos:I
    add-int/lit8 v14, v11, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v7, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    invoke-static {v2, v14}, Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;->access$502(Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;

    .line 151
    const/4 v14, 0x0

    invoke-virtual {v7, v14, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 156
    .end local v11           #regexPos:I
    :cond_ef
    const-string v14, "}"

    invoke-virtual {v7, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_14e

    .line 157
    const/4 v14, 0x0

    const-string v15, "{"

    invoke-virtual {v7, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v7, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/snmp4j/util/ArgumentParser;->getType(Ljava/lang/String;)I

    move-result v14

    invoke-static {v2, v14}, Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;->access$602(Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;I)I

    .line 158
    const/16 v14, 0x7b

    invoke-virtual {v7, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v7, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 159
    const/16 v14, 0x3d

    invoke-virtual {v7, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 160
    .local v9, posEqual:I
    if-ltz v9, :cond_14a

    .line 161
    add-int/lit8 v14, v9, 0x1

    invoke-virtual {v7, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;->access$702(Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    const/4 v14, 0x0

    invoke-virtual {v7, v14, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;->access$402(Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .end local v9           #posEqual:I
    :goto_134
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v2           #ap:Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;
    :goto_137
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_86

    .line 124
    .end local v3           #i:I
    .end local v4           #inRegex:Ljava/lang/String;
    .end local v7           #param:Ljava/lang/String;
    .end local v8           #params:Ljava/util/List;
    .end local v10           #pt:Ljava/util/StringTokenizer;
    :cond_13b
    const/4 v14, 0x0

    goto/16 :goto_45

    .line 138
    .restart local v3       #i:I
    .restart local v4       #inRegex:Ljava/lang/String;
    .restart local v7       #param:Ljava/lang/String;
    .restart local v8       #params:Ljava/util/List;
    .restart local v10       #pt:Ljava/util/StringTokenizer;
    :cond_13e
    const-string v14, ","

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a4

    goto :goto_137

    .line 153
    .restart local v2       #ap:Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;
    :cond_147
    if-eqz v4, :cond_ef

    goto :goto_137

    .line 165
    .restart local v9       #posEqual:I
    :cond_14a
    invoke-static {v2, v7}, Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;->access$402(Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_134

    .line 169
    .end local v9           #posEqual:I
    :cond_14e
    invoke-static {v7}, Lorg/snmp4j/util/ArgumentParser;->getType(Ljava/lang/String;)I

    move-result v14

    invoke-static {v2, v14}, Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;->access$602(Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;I)I

    goto :goto_134

    .line 173
    .end local v2           #ap:Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;
    .end local v7           #param:Ljava/lang/String;
    :cond_156
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;

    invoke-interface {v8, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;

    check-cast v14, [Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;

    invoke-static {v1, v14}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->access$802(Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;[Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;)[Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;

    .line 182
    .end local v3           #i:I
    .end local v4           #inRegex:Ljava/lang/String;
    .end local v8           #params:Ljava/util/List;
    .end local v10           #pt:Ljava/util/StringTokenizer;
    :cond_167
    invoke-static {v1}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->access$300(Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    .line 177
    :cond_170
    invoke-static {v1, v13}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->access$302(Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    invoke-static {v1}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->access$100(Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;)Z

    move-result v14

    if-eqz v14, :cond_167

    .line 179
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "Parameter "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, " has no type"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method public static selectCommand([Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;)[Ljava/lang/String;
    .registers 11
    .parameter "args"
    .parameter "optionFormat"
    .parameter "commandSets"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 548
    new-instance v0, Lorg/snmp4j/util/ArgumentParser;

    const-string v4, "#command[s] +following[s] .."

    invoke-direct {v0, p1, v4}, Lorg/snmp4j/util/ArgumentParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    .local v0, ap:Lorg/snmp4j/util/ArgumentParser;
    invoke-virtual {v0, p0}, Lorg/snmp4j/util/ArgumentParser;->parse([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 551
    .local v3, params:Ljava/util/Map;
    const-string v4, "command"

    invoke-static {v3, v4, v7}, Lorg/snmp4j/util/ArgumentParser;->getValue(Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 552
    .local v1, command:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_15
    array-length v4, p2

    if-ge v2, v4, :cond_28

    .line 553
    aget-object v4, p2, v2

    aget-object v4, v4, v7

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 554
    aget-object v4, p2, v2

    return-object v4

    .line 552
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 557
    :cond_28
    new-instance v4, Ljava/text/ParseException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Command \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\' not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4
.end method


# virtual methods
.method protected addValues2Option(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .registers 5
    .parameter "option"
    .parameter "values"
    .parameter "options"

    .prologue
    .line 276
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 277
    .local v0, existingValues:Ljava/util/List;
    if-eqz v0, :cond_e

    if-eqz p2, :cond_e

    .line 278
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 283
    :goto_d
    return-void

    .line 281
    :cond_e
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d
.end method

.method public getOptionFormat()Ljava/util/Map;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lorg/snmp4j/util/ArgumentParser;->optionFormat:Ljava/util/Map;

    return-object v0
.end method

.method public getParameterFormat()Ljava/util/Map;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lorg/snmp4j/util/ArgumentParser;->parameterFormat:Ljava/util/Map;

    return-object v0
.end method

.method public parse([Ljava/lang/String;)Ljava/util/Map;
    .registers 24
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 206
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    .line 207
    .local v14, options:Ljava/util/Map;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/ArgumentParser;->parameterFormat:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 208
    .local v15, params:Ljava/util/Iterator;
    const/4 v11, 0x0

    .line 209
    .local v11, lastFormat:Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_15
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_131

    .line 210
    aget-object v17, p1, v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_29

    .line 209
    :goto_26
    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    .line 214
    :cond_29
    aget-object v17, p1, v9

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x2d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7c

    .line 215
    aget-object v17, p1, v9

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 216
    .local v13, option:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/ArgumentParser;->optionFormat:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;

    .line 217
    .local v8, format:Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;
    if-nez v8, :cond_b7

    .line 218
    new-instance v17, Ljava/text/ParseException;

    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    const-string v19, "Unknown option \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "\' at position "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v9}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v17

    .line 222
    .end local v8           #format:Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;
    .end local v13           #option:Ljava/lang/String;
    :cond_7c
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_ab

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;

    move-object/from16 v8, v17

    .line 224
    .restart local v8       #format:Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;
    :goto_8a
    if-nez v8, :cond_b7

    .line 225
    new-instance v17, Ljava/text/ParseException;

    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    const-string v19, "Unrecognized parameter at position "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v9}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v17

    .line 222
    .end local v8           #format:Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;
    :cond_ab
    if-eqz v11, :cond_b5

    invoke-virtual {v11}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->isVariableLength()Z

    move-result v17

    if-eqz v17, :cond_b5

    move-object v8, v11

    goto :goto_8a

    :cond_b5
    const/4 v8, 0x0

    goto :goto_8a

    .line 228
    .restart local v8       #format:Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;
    :cond_b7
    invoke-virtual {v8}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->getParameters()[Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;

    move-result-object v17

    if-eqz v17, :cond_121

    invoke-virtual {v8}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->getParameters()[Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_121

    .line 230
    invoke-virtual {v8}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->isParameter()Z

    move-result v17

    if-eqz v17, :cond_111

    const/4 v6, 0x1

    .line 231
    .local v6, diff:I
    :goto_cf
    rsub-int/lit8 v17, v6, 0x1

    add-int v17, v17, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v8}, Lorg/snmp4j/util/ArgumentParser;->parseValues([Ljava/lang/String;ILorg/snmp4j/util/ArgumentParser$ArgumentFormat;)Ljava/util/List;

    move-result-object v16

    .line 232
    .local v16, values:Ljava/util/List;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    sub-int v17, v17, v6

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    add-int v9, v9, v17

    .line 233
    invoke-virtual {v8}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->isVariableLength()Z

    move-result v17

    if-eqz v17, :cond_113

    invoke-virtual {v8}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->getOption()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_113

    .line 235
    invoke-virtual {v8}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->getOption()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 236
    .local v7, extValues:Ljava/util/List;
    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 245
    .end local v6           #diff:I
    .end local v7           #extValues:Ljava/util/List;
    .end local v16           #values:Ljava/util/List;
    :goto_10e
    move-object v11, v8

    goto/16 :goto_26

    .line 230
    :cond_111
    const/4 v6, 0x0

    goto :goto_cf

    .line 239
    .restart local v6       #diff:I
    .restart local v16       #values:Ljava/util/List;
    :cond_113
    invoke-virtual {v8}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->getOption()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2, v14}, Lorg/snmp4j/util/ArgumentParser;->addValues2Option(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_10e

    .line 243
    .end local v6           #diff:I
    .end local v16           #values:Ljava/util/List;
    :cond_121
    invoke-virtual {v8}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->getOption()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v14}, Lorg/snmp4j/util/ArgumentParser;->addValues2Option(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    goto :goto_10e

    .line 247
    .end local v8           #format:Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;
    :cond_131
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_15d

    .line 248
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;

    .line 249
    .local v4, af:Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;
    invoke-virtual {v4}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->isMandatory()Z

    move-result v17

    if-eqz v17, :cond_131

    .line 250
    new-instance v17, Lorg/snmp4j/util/ArgumentParser$ArgumentParseException;

    const/16 v18, -0x1

    const/16 v19, 0x0

    invoke-virtual {v4}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->getParameters()[Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/snmp4j/util/ArgumentParser$ArgumentParseException;-><init>(ILjava/lang/String;Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;)V

    throw v17

    .line 253
    .end local v4           #af:Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;
    :cond_15d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/snmp4j/util/ArgumentParser;->optionFormat:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, it:Ljava/util/Iterator;
    :cond_16b
    :goto_16b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1f7

    .line 254
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;

    .line 255
    .local v12, of:Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;
    invoke-virtual {v12}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->isMandatory()Z

    move-result v17

    if-eqz v17, :cond_16b

    invoke-virtual {v12}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->getOption()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_16b

    .line 256
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v5, defaults:Ljava/util/List;
    const/4 v9, 0x0

    :goto_18f
    invoke-virtual {v12}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->getParameters()[Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_1ca

    .line 258
    invoke-virtual {v12}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->getParameters()[Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;

    move-result-object v17

    aget-object v17, v17, v9

    invoke-virtual/range {v17 .. v17}, Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;->getDefaultValue()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1c7

    .line 259
    invoke-virtual {v12}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->getParameters()[Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;

    move-result-object v17

    aget-object v17, v17, v9

    invoke-virtual {v12}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->getParameters()[Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;

    move-result-object v18

    aget-object v18, v18, v9

    invoke-virtual/range {v18 .. v18}, Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;->getDefaultValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v12, v9}, Lorg/snmp4j/util/ArgumentParser;->parseParameterValue(Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;Ljava/lang/String;Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_1c7
    add-int/lit8 v9, v9, 0x1

    goto :goto_18f

    .line 264
    :cond_1ca
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v17

    if-nez v17, :cond_1ea

    .line 265
    new-instance v17, Lorg/snmp4j/util/ArgumentParser$ArgumentParseException;

    const/16 v18, -0x1

    const/16 v19, 0x0

    invoke-virtual {v12}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->getParameters()[Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v12, v3}, Lorg/snmp4j/util/ArgumentParser$ArgumentParseException;-><init>(ILjava/lang/String;Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;)V

    throw v17

    .line 268
    :cond_1ea
    invoke-virtual {v12}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->getOption()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5, v14}, Lorg/snmp4j/util/ArgumentParser;->addValues2Option(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    goto/16 :goto_16b

    .line 272
    .end local v5           #defaults:Ljava/util/List;
    .end local v12           #of:Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;
    :cond_1f7
    return-object v14
.end method

.method protected parseParameterValue(Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;Ljava/lang/String;Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;I)Ljava/lang/Object;
    .registers 12
    .parameter "type"
    .parameter "value"
    .parameter "format"
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/snmp4j/util/ArgumentParser$ArgumentParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 315
    const-string v0, "\'"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "\'"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 316
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 318
    :cond_1b
    invoke-static {p1}, Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;->access$500(Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;)Ljava/util/regex/Pattern;

    move-result-object v0

    if-eqz v0, :cond_a6

    .line 319
    invoke-static {p1}, Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;->access$500(Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 320
    .local v6, m:Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_a6

    .line 321
    new-instance v0, Lorg/snmp4j/util/ArgumentParser$ArgumentParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p3}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->isParameter()Z

    move-result v1

    if-eqz v1, :cond_a0

    const-string v1, "parameter "

    :goto_4e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p3}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->getOption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p3}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->getParameters()[Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;

    move-result-object v1

    array-length v1, v1

    if-le v1, v3, :cond_a3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, " part "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_78
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " does not match pattern \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p1}, Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;->access$500(Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move v2, p4

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/snmp4j/util/ArgumentParser$ArgumentParseException;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;)V

    throw v0

    :cond_a0
    const-string v1, "option "

    goto :goto_4e

    :cond_a3
    const-string v1, ""

    goto :goto_78

    .line 335
    .end local v6           #m:Ljava/util/regex/Matcher;
    :cond_a6
    invoke-virtual {p1}, Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_c4

    .line 343
    .end local p2
    :goto_ad
    :pswitch_ad
    return-object p2

    .line 337
    .restart local p2
    :pswitch_ae
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    goto :goto_ad

    .line 339
    :pswitch_b5
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    goto :goto_ad

    .line 341
    :pswitch_bc
    const/16 v0, 0x3a

    invoke-static {p2, v0}, Lorg/snmp4j/smi/OctetString;->fromHexString(Ljava/lang/String;C)Lorg/snmp4j/smi/OctetString;

    move-result-object p2

    goto :goto_ad

    .line 335
    nop

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_ae
        :pswitch_b5
        :pswitch_ad
        :pswitch_bc
    .end packed-switch
.end method

.method protected parseValues([Ljava/lang/String;ILorg/snmp4j/util/ArgumentParser$ArgumentFormat;)Ljava/util/List;
    .registers 13
    .parameter "args"
    .parameter "offset"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 287
    invoke-virtual {p3}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->getParameters()[Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;

    move-result-object v6

    array-length v3, v6

    .line 288
    .local v3, numParams:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 289
    .local v5, values:Ljava/util/List;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    add-int v6, v2, p2

    array-length v7, p1

    if-ge v6, v7, :cond_3e

    if-ge v2, v3, :cond_3e

    .line 291
    :try_start_12
    invoke-virtual {p3}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->getParameters()[Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;

    move-result-object v6

    aget-object v6, v6, v2

    add-int v7, v2, p2

    aget-object v7, p1, v7

    add-int v8, v2, p2

    invoke-virtual {p0, v6, v7, p3, v8}, Lorg/snmp4j/util/ArgumentParser;->parseParameterValue(Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;Ljava/lang/String;Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catch Lorg/snmp4j/util/ArgumentParser$ArgumentParseException; {:try_start_12 .. :try_end_25} :catch_28
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_25} :catch_2a

    .line 289
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 295
    :catch_28
    move-exception v0

    .line 296
    .local v0, apex:Lorg/snmp4j/util/ArgumentParser$ArgumentParseException;
    throw v0

    .line 298
    .end local v0           #apex:Lorg/snmp4j/util/ArgumentParser$ArgumentParseException;
    :catch_2a
    move-exception v1

    .line 299
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 300
    add-int v4, v2, p2

    .line 301
    .local v4, pos:I
    new-instance v6, Lorg/snmp4j/util/ArgumentParser$ArgumentParseException;

    aget-object v7, p1, v4

    invoke-virtual {p3}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->getParameters()[Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;

    move-result-object v8

    aget-object v8, v8, v2

    invoke-direct {v6, v4, v7, p3, v8}, Lorg/snmp4j/util/ArgumentParser$ArgumentParseException;-><init>(ILjava/lang/String;Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;)V

    throw v6

    .line 307
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v4           #pos:I
    :cond_3e
    return-object v5
.end method
