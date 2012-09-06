.class public Lcom/googlex/common/util/DebugUtil;
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

    invoke-static {v0}, Lcom/googlex/common/util/DebugUtil;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/16 v8, 0x5c

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuffer;

    mul-int/lit8 v0, v3, 0x2

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move v2, v1

    :goto_f
    if-ge v2, v3, :cond_5b

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const-string v5, "\\\t\u0008\n\r\u000c"

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2e

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, "\\tbnrf"

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_f

    :cond_2e
    invoke-static {v0}, Lcom/googlex/common/util/text/TextUtil;->isPrintableAscii(C)Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2a

    :cond_38
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v5, 0x75

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v5, 0x10

    invoke-static {v0, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v6, v0, 0x4

    move v0, v1

    :goto_4d
    if-ge v0, v6, :cond_57

    const/16 v7, 0x30

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    :cond_57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2a

    :cond_5b
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

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

    invoke-static {p0}, Lcom/googlex/common/util/DebugUtil;->getArrayLength(Ljava/lang/Object;)I

    move-result v3

    invoke-static {p0, v1, v2, v3}, Lcom/googlex/common/util/DebugUtil;->joinArray(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

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

    invoke-static {p0, v1, v2, p1}, Lcom/googlex/common/util/DebugUtil;->joinArray(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

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

.method public static getStackTrace(Ljava/lang/String;)Ljava/lang/Throwable;
    .registers 2

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static holdLock(Ljava/lang/Object;)Z
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static joinArray(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    invoke-static {p0}, Lcom/googlex/common/util/DebugUtil;->getArrayLength(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_36

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    if-lez p3, :cond_15

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/googlex/common/util/DebugUtil;->getArrayElement(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_15
    const/4 v0, 0x1

    :goto_16
    if-ge v0, v1, :cond_27

    if-ge v0, p3, :cond_27

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0, v0}, Lcom/googlex/common/util/DebugUtil;->getArrayElement(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_27
    if-le v1, p3, :cond_31

    if-lez p3, :cond_2e

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2e
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_31
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_35
    return-object v0

    :cond_36
    const-string v0, ""

    goto :goto_35
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 16

    const/16 v12, 0x75

    const/4 v5, 0x1

    const/4 v11, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    move v6, v1

    move v3, v1

    move v4, v1

    move v0, v1

    move v2, v1

    :goto_13
    if-ge v6, v7, :cond_b2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eqz v2, :cond_9d

    if-eqz v0, :cond_66

    if-ne v9, v12, :cond_30

    if-nez v3, :cond_30

    move v13, v3

    move v3, v0

    move v0, v13

    move v14, v4

    move v4, v2

    move v2, v14

    :goto_27
    add-int/lit8 v6, v6, 0x1

    move v13, v0

    move v0, v3

    move v3, v13

    move v14, v2

    move v2, v4

    move v4, v14

    goto :goto_13

    :cond_30
    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v9

    if-ne v9, v11, :cond_51

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

    :cond_51
    mul-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v9

    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x4

    if-ne v3, v9, :cond_5f

    int-to-char v0, v4

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    move v2, v1

    :cond_5f
    move v13, v3

    move v3, v0

    move v0, v13

    move v14, v4

    move v4, v2

    move v2, v14

    goto :goto_27

    :cond_66
    if-ne v9, v12, :cond_6d

    move v0, v1

    move v3, v5

    move v4, v2

    move v2, v1

    goto :goto_27

    :cond_6d
    const-string v2, "\\tbnrf"

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v11, :cond_8e

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown escape character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8e
    const-string v9, "\\\t\u0008\n\r\u000c"

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v4

    move v4, v1

    move v13, v0

    move v0, v3

    move v3, v13

    goto :goto_27

    :cond_9d
    const/16 v10, 0x5c

    if-ne v9, v10, :cond_a7

    move v2, v4

    move v4, v5

    move v13, v0

    move v0, v3

    move v3, v13

    goto :goto_27

    :cond_a7
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v13, v3

    move v3, v0

    move v0, v13

    move v14, v4

    move v4, v2

    move v2, v14

    goto/16 :goto_27

    :cond_b2
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
