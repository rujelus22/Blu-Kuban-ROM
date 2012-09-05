.class public Lcom/google/android/apps/uploader/googlemobile/common/util/DebugUtil;
.super Ljava/lang/Object;


# static fields
.field private static final ESCAPE_KEYS:Ljava/lang/String; = "\\tbnrf"

.field private static final ESCAPE_VALUES:Ljava/lang/String; = "\\\t\u0008\n\r\u000c"

.field private static final UNICODE_ESCAPE_LENGTH:I = 0x4

.field private static final UNICODE_ESCAPE_RADIX:I = 0x10


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escape(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/DebugUtil;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/16 v8, 0x5c

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    move v2, v7

    :goto_f
    if-ge v2, v0, :cond_5a

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const-string v4, "\\\t\u0008\n\r\u000c"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2d

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v3, "\\tbnrf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_2d
    invoke-static {v3}, Lcom/google/android/apps/uploader/googlemobile/common/util/text/TextUtil;->isPrintableAscii(C)Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2a

    :cond_37
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v4, 0x75

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    move v5, v7

    :goto_4c
    if-ge v5, v4, :cond_56

    const/16 v6, 0x30

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4c

    :cond_56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2a

    :cond_5a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatArray(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    const-string v2, "..."

    invoke-static {p0}, Lcom/google/android/apps/uploader/googlemobile/common/util/DebugUtil;->getArrayLength(Ljava/lang/Object;)I

    move-result v3

    invoke-static {p0, v1, v2, v3}, Lcom/google/android/apps/uploader/googlemobile/common/util/DebugUtil;->joinArray(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatArray(Ljava/lang/Object;I)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    const-string v2, "..."

    invoke-static {p0, v1, v2, p1}, Lcom/google/android/apps/uploader/googlemobile/common/util/DebugUtil;->joinArray(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getArrayElement(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_10
    instance-of v0, p0, [Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/Boolean;

    check-cast p0, [Z

    check-cast p0, [Z

    aget-boolean v1, p0, p1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    :goto_1f
    return-object v0

    :cond_20
    instance-of v0, p0, [B

    if-eqz v0, :cond_30

    new-instance v0, Ljava/lang/Byte;

    check-cast p0, [B

    check-cast p0, [B

    aget-byte v1, p0, p1

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    goto :goto_1f

    :cond_30
    instance-of v0, p0, [S

    if-eqz v0, :cond_40

    new-instance v0, Ljava/lang/Short;

    check-cast p0, [S

    check-cast p0, [S

    aget-short v1, p0, p1

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    goto :goto_1f

    :cond_40
    instance-of v0, p0, [C

    if-eqz v0, :cond_50

    new-instance v0, Ljava/lang/Character;

    check-cast p0, [C

    check-cast p0, [C

    aget-char v1, p0, p1

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    goto :goto_1f

    :cond_50
    instance-of v0, p0, [I

    if-eqz v0, :cond_60

    new-instance v0, Ljava/lang/Integer;

    check-cast p0, [I

    check-cast p0, [I

    aget v1, p0, p1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1f

    :cond_60
    instance-of v0, p0, [J

    if-eqz v0, :cond_70

    new-instance v0, Ljava/lang/Long;

    check-cast p0, [J

    check-cast p0, [J

    aget-wide v1, p0, p1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto :goto_1f

    :cond_70
    instance-of v0, p0, [F

    if-eqz v0, :cond_80

    new-instance v0, Ljava/lang/Float;

    check-cast p0, [F

    check-cast p0, [F

    aget v1, p0, p1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    goto :goto_1f

    :cond_80
    instance-of v0, p0, [D

    if-eqz v0, :cond_90

    new-instance v0, Ljava/lang/Double;

    check-cast p0, [D

    check-cast p0, [D

    aget-wide v1, p0, p1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto :goto_1f

    :cond_90
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    aget-object v0, p0, p1

    goto :goto_1f
.end method

.method public static getArrayLength(Ljava/lang/Object;)I
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_10
    instance-of v0, p0, [Z

    if-eqz v0, :cond_1a

    check-cast p0, [Z

    check-cast p0, [Z

    array-length v0, p0

    :goto_19
    return v0

    :cond_1a
    instance-of v0, p0, [B

    if-eqz v0, :cond_24

    check-cast p0, [B

    check-cast p0, [B

    array-length v0, p0

    goto :goto_19

    :cond_24
    instance-of v0, p0, [S

    if-eqz v0, :cond_2e

    check-cast p0, [S

    check-cast p0, [S

    array-length v0, p0

    goto :goto_19

    :cond_2e
    instance-of v0, p0, [C

    if-eqz v0, :cond_38

    check-cast p0, [C

    check-cast p0, [C

    array-length v0, p0

    goto :goto_19

    :cond_38
    instance-of v0, p0, [I

    if-eqz v0, :cond_42

    check-cast p0, [I

    check-cast p0, [I

    array-length v0, p0

    goto :goto_19

    :cond_42
    instance-of v0, p0, [J

    if-eqz v0, :cond_4c

    check-cast p0, [J

    check-cast p0, [J

    array-length v0, p0

    goto :goto_19

    :cond_4c
    instance-of v0, p0, [F

    if-eqz v0, :cond_56

    check-cast p0, [F

    check-cast p0, [F

    array-length v0, p0

    goto :goto_19

    :cond_56
    instance-of v0, p0, [D

    if-eqz v0, :cond_60

    check-cast p0, [D

    check-cast p0, [D

    array-length v0, p0

    goto :goto_19

    :cond_60
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    array-length v0, p0

    goto :goto_19
.end method

.method public static joinArray(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    invoke-static {p0}, Lcom/google/android/apps/uploader/googlemobile/common/util/DebugUtil;->getArrayLength(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_36

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-lez p3, :cond_15

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/google/android/apps/uploader/googlemobile/common/util/DebugUtil;->getArrayElement(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_15
    const/4 v2, 0x1

    :goto_16
    if-ge v2, v0, :cond_27

    if-ge v2, p3, :cond_27

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0, v2}, Lcom/google/android/apps/uploader/googlemobile/common/util/DebugUtil;->getArrayElement(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_27
    if-le v0, p3, :cond_31

    if-lez p3, :cond_2e

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_31
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_35
    return-object v0

    :cond_36
    const-string v0, ""

    goto :goto_35
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    const/16 v12, 0x75

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move v2, v9

    move v3, v9

    move v4, v9

    move v5, v9

    move v6, v9

    :goto_13
    if-ge v2, v0, :cond_90

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eqz v6, :cond_86

    if-eqz v5, :cond_54

    if-ne v7, v12, :cond_24

    if-nez v3, :cond_24

    :cond_21
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_24
    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    if-ne v7, v10, :cond_45

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid unicode escape in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    mul-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v7

    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x4

    if-ne v3, v7, :cond_21

    int-to-char v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v5, v9

    move v6, v9

    goto :goto_21

    :cond_54
    if-ne v7, v12, :cond_5a

    move v3, v9

    move v4, v9

    move v5, v11

    goto :goto_21

    :cond_5a
    const-string v6, "\\tbnrf"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v10, :cond_7b

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown escape character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7b
    const-string v7, "\\\t\u0008\n\r\u000c"

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v6, v9

    goto :goto_21

    :cond_86
    const/16 v8, 0x5c

    if-ne v7, v8, :cond_8c

    move v6, v11

    goto :goto_21

    :cond_8c
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_21

    :cond_90
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
