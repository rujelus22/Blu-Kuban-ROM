.class public Lorg/columba/ristretto/message/MessageIDGenerator;
.super Ljava/lang/Object;
.source "MessageIDGenerator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static generate()Ljava/lang/String;
    .registers 12

    .prologue
    const/16 v11, 0x24

    .line 62
    const/4 v3, 0x0

    .line 65
    .local v3, hostname:Ljava/lang/String;
    :try_start_3
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_a} :catch_54

    move-result-object v3

    .line 70
    :goto_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 71
    .local v0, currentTime:J
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 73
    .local v4, randomNumber:J
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 75
    .local v6, result:Ljava/lang/StringBuffer;
    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8, v11}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8, v11}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_58

    .line 82
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    :goto_4a
    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 66
    .end local v0           #currentTime:J
    .end local v4           #randomNumber:J
    .end local v6           #result:Ljava/lang/StringBuffer;
    :catch_54
    move-exception v2

    .line 67
    .local v2, e:Ljava/net/UnknownHostException;
    const-string v3, ""

    goto :goto_b

    .line 84
    .end local v2           #e:Ljava/net/UnknownHostException;
    .restart local v0       #currentTime:J
    .restart local v4       #randomNumber:J
    .restart local v6       #result:Ljava/lang/StringBuffer;
    :cond_58
    const-string v7, "a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    const-wide v9, 0xffffffffL

    and-long v4, v7, v9

    .line 86
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8, v11}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4a
.end method
