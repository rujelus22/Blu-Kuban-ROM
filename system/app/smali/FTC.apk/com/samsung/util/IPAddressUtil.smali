.class public Lcom/samsung/util/IPAddressUtil;
.super Ljava/lang/Object;
.source "IPAddressUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIPAsByteArray(Ljava/lang/String;)[B
    .registers 7
    .parameter "ipAddr"

    .prologue
    .line 8
    :try_start_0
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, "."

    invoke-direct {v3, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .local v3, st:Ljava/util/StringTokenizer;
    const/4 v5, 0x4

    new-array v2, v5, [B

    .line 10
    .local v2, ip:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    array-length v5, v2

    if-lt v1, v5, :cond_13

    .line 13
    const/4 v1, 0x0

    :goto_f
    array-length v5, v2

    if-lt v1, v5, :cond_19

    .line 28
    .end local v1           #i:I
    .end local v2           #ip:[B
    .end local v3           #st:Ljava/util/StringTokenizer;
    :cond_12
    :goto_12
    return-object v2

    .line 11
    .restart local v1       #i:I
    .restart local v2       #ip:[B
    .restart local v3       #st:Ljava/util/StringTokenizer;
    :cond_13
    const/4 v5, 0x0

    aput-byte v5, v2, v1

    .line 10
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 14
    :cond_19
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 15
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 16
    .local v4, temp:I
    const/16 v5, 0xff

    if-le v4, v5, :cond_33

    .line 17
    const/16 v4, 0xff

    .line 21
    :cond_2d
    :goto_2d
    int-to-byte v5, v4

    aput-byte v5, v2, v1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_37

    .line 13
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 18
    :cond_33
    if-gez v4, :cond_2d

    .line 19
    const/4 v4, 0x0

    goto :goto_2d

    .line 26
    .end local v1           #i:I
    .end local v2           #ip:[B
    .end local v3           #st:Ljava/util/StringTokenizer;
    .end local v4           #temp:I
    :catch_37
    move-exception v0

    .line 27
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    const/4 v2, 0x0

    goto :goto_12
.end method
