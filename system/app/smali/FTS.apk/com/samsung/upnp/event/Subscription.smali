.class public Lcom/samsung/upnp/event/Subscription;
.super Ljava/lang/Object;
.source "Subscription.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createSID()Ljava/lang/String;
    .registers 1

    .prologue
    .line 66
    invoke-static {}, Lcom/samsung/upnp/UPnP;->createUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getSID(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "headerValue"

    .prologue
    .line 76
    if-nez p0, :cond_5

    .line 77
    const-string v1, ""

    .line 86
    :goto_4
    return-object v1

    .line 78
    :cond_5
    const-string v1, ""

    .line 80
    .local v1, getSID:Ljava/lang/String;
    :try_start_7
    const-string v2, "uuid:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_14} :catch_16
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_7 .. :try_end_14} :catch_1b

    move-result-object v1

    goto :goto_4

    .line 81
    :catch_16
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_4

    .line 83
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1b
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/StringIndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_4
.end method

.method public static final getTimeout(Ljava/lang/String;)J
    .registers 7
    .parameter "headerValue"

    .prologue
    .line 50
    const/16 v4, 0x2d

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 51
    .local v0, minusIdx:I
    const-wide/16 v1, -0x1

    .line 53
    .local v1, timeout:J
    add-int/lit8 v4, v0, 0x1

    :try_start_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, timeoutStr:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_17

    move-result-wide v1

    .line 57
    .end local v3           #timeoutStr:Ljava/lang/String;
    :goto_16
    return-wide v1

    .line 56
    :catch_17
    move-exception v4

    goto :goto_16
.end method

.method public static final toSIDHeaderString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "id"

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "uuid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final toTimeoutHeaderString(J)Ljava/lang/String;
    .registers 5
    .parameter "time"

    .prologue
    .line 42
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_1c

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Second-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x12c

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    :goto_1b
    return-object v0

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Second-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method
