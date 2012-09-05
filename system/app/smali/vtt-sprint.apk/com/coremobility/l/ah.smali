.class public final Lcom/coremobility/l/ah;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/coremobility/l/an;)Lcom/coremobility/l/aj;
    .registers 3

    if-eqz p0, :cond_e

    iget-object v0, p0, Lcom/coremobility/l/an;->b:Ljava/util/Vector;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/coremobility/l/an;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/coremobility/l/an;->b:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/l/aj;

    goto :goto_f
.end method

.method public static a(Ljava/util/Vector;)Lcom/coremobility/l/ak;
    .registers 12

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    move v3, v2

    move v4, v2

    move v6, v0

    :goto_6
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v6, v0, :cond_8e

    invoke-virtual {p0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/l/ak;

    if-nez v5, :cond_54

    :try_start_14
    iget-object v1, v0, Lcom/coremobility/l/ak;->a:Ljava/lang/String;

    if-nez v1, :cond_23

    move v1, v2

    :goto_19
    move v10, v3

    move-object v3, v0

    move v0, v10

    :goto_1c
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move-object v5, v3

    move v3, v0

    move v4, v1

    goto :goto_6

    :cond_23
    iget-object v1, v0, Lcom/coremobility/l/ak;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_30} :catch_32

    move-result v1

    goto :goto_19

    :catch_32
    move-exception v1

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NumberFormatException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v4

    move v10, v3

    move-object v3, v0

    move v0, v10

    goto :goto_1c

    :cond_54
    :try_start_54
    iget-object v1, v0, Lcom/coremobility/l/ak;->a:Ljava/lang/String;

    if-nez v1, :cond_60

    move v1, v2

    :goto_59
    cmpl-float v3, v1, v4

    if-lez v3, :cond_8f

    move-object v3, v0

    move v0, v1

    goto :goto_1c

    :cond_60
    iget-object v1, v0, Lcom/coremobility/l/ak;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_6d
    .catch Ljava/lang/NumberFormatException; {:try_start_54 .. :try_end_6d} :catch_6f

    move-result v1

    goto :goto_59

    :catch_6f
    move-exception v1

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NumberFormatException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v3

    goto :goto_59

    :cond_8e
    return-object v5

    :cond_8f
    move v0, v1

    move-object v3, v5

    move v1, v4

    goto :goto_1c
.end method

.method public static a(Ljava/lang/String;)Lcom/coremobility/l/an;
    .registers 6

    new-instance v0, Lcom/coremobility/l/an;

    invoke-direct {v0}, Lcom/coremobility/l/an;-><init>()V

    if-nez p0, :cond_8

    :goto_7
    return-object v0

    :cond_8
    const/4 v2, 0x0

    :try_start_9
    invoke-static {p0}, Lcom/coremobility/integration/file/b;->c(Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v1, v3

    new-array v2, v1, [B

    invoke-static {p0}, Lcom/coremobility/integration/file/b;->b(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1a} :catch_33

    :goto_1a
    :try_start_1a
    new-instance v1, Lcom/coremobility/l/ap;

    invoke-direct {v1}, Lcom/coremobility/l/ap;-><init>()V

    array-length v3, v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/coremobility/l/ap;->a([BILcom/coremobility/l/an;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_23} :catch_24

    goto :goto_7

    :catch_24
    move-exception v1

    const/16 v2, 0x31

    const-string v3, "XML parser exception"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :catch_33
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/l/an;
    .registers 7

    new-instance v0, Lcom/coremobility/l/an;

    invoke-direct {v0}, Lcom/coremobility/l/an;-><init>()V

    if-nez p1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    const/4 v2, 0x0

    :try_start_9
    invoke-static {p0, p1}, Lcom/coremobility/integration/file/b;->b(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v1, v3

    new-array v2, v1, [B

    invoke-static {p0, p1}, Lcom/coremobility/integration/file/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1a} :catch_33

    :goto_1a
    :try_start_1a
    new-instance v1, Lcom/coremobility/l/ap;

    invoke-direct {v1}, Lcom/coremobility/l/ap;-><init>()V

    array-length v3, v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/coremobility/l/ap;->a([BILcom/coremobility/l/an;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_23} :catch_24

    goto :goto_7

    :catch_24
    move-exception v1

    const/16 v2, 0x31

    const-string v3, "XML parser exception"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :catch_33
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a
.end method

.method public static a([B)Lcom/coremobility/l/an;
    .registers 6

    new-instance v1, Lcom/coremobility/l/an;

    invoke-direct {v1}, Lcom/coremobility/l/an;-><init>()V

    :try_start_5
    new-instance v0, Lcom/coremobility/l/ap;

    invoke-direct {v0}, Lcom/coremobility/l/ap;-><init>()V

    array-length v2, p0

    invoke-virtual {v0, p0, v2, v1}, Lcom/coremobility/l/ap;->a([BILcom/coremobility/l/an;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_f

    :goto_e
    return-object v1

    :catch_f
    move-exception v0

    const/16 v2, 0x31

    const-string v3, "XML parser exception"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method
