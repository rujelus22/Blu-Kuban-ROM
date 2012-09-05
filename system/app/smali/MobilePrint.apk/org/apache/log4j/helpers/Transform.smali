.class public Lorg/apache/log4j/helpers/Transform;
.super Ljava/lang/Object;
.source "Transform.java"


# static fields
.field private static final CDATA_EMBEDED_END:Ljava/lang/String; = "]]>]]&gt;<![CDATA["

.field private static final CDATA_END:Ljava/lang/String; = "]]>"

#the value of this static final field might be set in the static constructor
.field private static final CDATA_END_LEN:I = 0x0

.field private static final CDATA_PSEUDO_END:Ljava/lang/String; = "]]&gt;"

.field private static final CDATA_START:Ljava/lang/String; = "<![CDATA["


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-string v0, "]]>"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/apache/log4j/helpers/Transform;->CDATA_END_LEN:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendEscapingCDATA(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 5
    .parameter "buf"
    .parameter "str"

    .prologue
    .line 83
    if-nez p1, :cond_8

    .line 84
    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    :cond_7
    :goto_7
    return-void

    .line 88
    :cond_8
    const-string v2, "]]>"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 89
    .local v0, end:I
    if-gez v0, :cond_14

    .line 90
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 94
    :cond_14
    const/4 v1, 0x0

    .line 95
    .local v1, start:I
    :goto_15
    const/4 v2, -0x1

    if-gt v0, v2, :cond_20

    .line 106
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 96
    :cond_20
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    const-string v2, "]]>]]&gt;<![CDATA["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    sget v2, Lorg/apache/log4j/helpers/Transform;->CDATA_END_LEN:I

    add-int v1, v0, v2

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 100
    const-string v2, "]]>"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_15
.end method

.method public static escapeTags(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "input"

    .prologue
    .line 49
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_9

    .line 70
    .end local p0
    :cond_8
    :goto_8
    return-object p0

    .line 56
    .restart local p0
    :cond_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 57
    .local v0, buf:Ljava/lang/StringBuffer;
    const/16 v1, 0x20

    .line 59
    .local v1, ch:C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 60
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1b
    if-lt v2, v3, :cond_22

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    .line 61
    :cond_22
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 62
    const/16 v4, 0x3c

    if-ne v1, v4, :cond_32

    .line 63
    const-string v4, "&lt;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 64
    :cond_32
    const/16 v4, 0x3e

    if-ne v1, v4, :cond_3c

    .line 65
    const-string v4, "&gt;"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2f

    .line 67
    :cond_3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2f
.end method
