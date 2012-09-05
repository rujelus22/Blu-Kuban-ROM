.class public Lcom/android/internal/telephony/DataCallState;
.super Ljava/lang/Object;
.source "DataCallState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataCallState$SetupResult;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private final LOG_TAG:Ljava/lang/String;

.field public active:I

.field public addresses:[Ljava/lang/String;

.field public cid:I

.field public dnses:[Ljava/lang/String;

.field public gateways:[Ljava/lang/String;

.field public ifname:Ljava/lang/String;

.field public status:I

.field public suggestedRetryTime:I

.field public type:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataCallState;->DBG:Z

    .line 39
    const-string v0, "GSM"

    iput-object v0, p0, Lcom/android/internal/telephony/DataCallState;->LOG_TAG:Ljava/lang/String;

    .line 41
    iput v1, p0, Lcom/android/internal/telephony/DataCallState;->version:I

    .line 42
    iput v1, p0, Lcom/android/internal/telephony/DataCallState;->status:I

    .line 43
    iput v1, p0, Lcom/android/internal/telephony/DataCallState;->cid:I

    .line 44
    iput v1, p0, Lcom/android/internal/telephony/DataCallState;->active:I

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/DataCallState;->type:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    .line 47
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    .line 48
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    .line 49
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/DataCallState;->gateways:[Ljava/lang/String;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/DataCallState;->suggestedRetryTime:I

    .line 55
    return-void
.end method


# virtual methods
.method public setLinkProperties(Landroid/net/LinkProperties;Z)Lcom/android/internal/telephony/DataCallState$SetupResult;
    .registers 21
    .parameter "linkProperties"
    .parameter "okToUseSystemPropertyDns"

    .prologue
    .line 114
    if-nez p1, :cond_b0

    .line 115
    new-instance p1, Landroid/net/LinkProperties;

    .end local p1
    invoke-direct/range {p1 .. p1}, Landroid/net/LinkProperties;-><init>()V

    .line 119
    .restart local p1
    :goto_7
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/DataCallState;->status:I

    sget-object v16, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/DataConnection$FailCause;->getErrorCode()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_280

    .line 120
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "net."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 124
    .local v12, propertyPrefix:Ljava/lang/String;
    :try_start_34
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    if-eqz v15, :cond_129

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    array-length v15, v15

    if-lez v15, :cond_129

    .line 128
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    .local v4, arr$:[Ljava/lang/String;
    array-length v11, v4

    .local v11, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_50
    if-ge v8, v11, :cond_148

    aget-object v1, v4, v8

    .line 132
    .local v1, addr:Ljava/lang/String;
    const-string v15, "/"

    invoke-virtual {v1, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, ap:[Ljava/lang/String;
    array-length v15, v3

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_b5

    .line 134
    const/4 v15, 0x0

    aget-object v1, v3, v15

    .line 135
    const/4 v15, 0x1

    aget-object v15, v3, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/net/UnknownHostException; {:try_start_34 .. :try_end_6a} :catch_d3

    move-result v2

    .line 141
    .local v2, addrPrefixLen:I
    :goto_6b
    :try_start_6b
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_6e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6b .. :try_end_6e} :catch_b7
    .catch Ljava/net/UnknownHostException; {:try_start_6b .. :try_end_6e} :catch_d3

    move-result-object v9

    .line 145
    .local v9, ia:Ljava/net/InetAddress;
    :try_start_6f
    invoke-virtual {v9}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v15

    if-nez v15, :cond_ad

    .line 146
    if-nez v2, :cond_7d

    .line 148
    instance-of v15, v9, Ljava/net/Inet4Address;

    if-eqz v15, :cond_125

    const/16 v2, 0x20

    .line 150
    :cond_7d
    :goto_7d
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "addr/pl="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v10, Landroid/net/LinkAddress;

    invoke-direct {v10, v9, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 152
    .local v10, la:Landroid/net/LinkAddress;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V
    :try_end_ad
    .catch Ljava/net/UnknownHostException; {:try_start_6f .. :try_end_ad} :catch_d3

    .line 128
    .end local v10           #la:Landroid/net/LinkAddress;
    :cond_ad
    add-int/lit8 v8, v8, 0x1

    goto :goto_50

    .line 117
    .end local v1           #addr:Ljava/lang/String;
    .end local v2           #addrPrefixLen:I
    .end local v3           #ap:[Ljava/lang/String;
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #ia:Ljava/net/InetAddress;
    .end local v11           #len$:I
    .end local v12           #propertyPrefix:Ljava/lang/String;
    :cond_b0
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->clear()V

    goto/16 :goto_7

    .line 137
    .restart local v1       #addr:Ljava/lang/String;
    .restart local v3       #ap:[Ljava/lang/String;
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v11       #len$:I
    .restart local v12       #propertyPrefix:Ljava/lang/String;
    :cond_b5
    const/4 v2, 0x0

    .restart local v2       #addrPrefixLen:I
    goto :goto_6b

    .line 142
    :catch_b7
    move-exception v7

    .line 143
    .local v7, e:Ljava/lang/IllegalArgumentException;
    :try_start_b8
    new-instance v15, Ljava/net/UnknownHostException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Non-numeric ip addr="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_d3
    .catch Ljava/net/UnknownHostException; {:try_start_b8 .. :try_end_d3} :catch_d3

    .line 213
    .end local v1           #addr:Ljava/lang/String;
    .end local v2           #addrPrefixLen:I
    .end local v3           #ap:[Ljava/lang/String;
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    .end local v8           #i$:I
    .end local v11           #len$:I
    :catch_d3
    move-exception v7

    .line 214
    .local v7, e:Ljava/net/UnknownHostException;
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setLinkProperties: UnknownHostException "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {v7}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 216
    sget-object v13, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_UnacceptableParameter:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .line 227
    .end local v7           #e:Ljava/net/UnknownHostException;
    .end local v12           #propertyPrefix:Ljava/lang/String;
    .local v13, result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    :goto_f3
    sget-object v15, Lcom/android/internal/telephony/DataCallState$SetupResult;->SUCCESS:Lcom/android/internal/telephony/DataCallState$SetupResult;

    if-eq v13, v15, :cond_124

    .line 229
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setLinkProperties: error clearing LinkProperties status="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/DataCallState;->status:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " result="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->clear()V

    .line 235
    :cond_124
    return-object v13

    .line 148
    .end local v13           #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    .restart local v1       #addr:Ljava/lang/String;
    .restart local v2       #addrPrefixLen:I
    .restart local v3       #ap:[Ljava/lang/String;
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v9       #ia:Ljava/net/InetAddress;
    .restart local v11       #len$:I
    .restart local v12       #propertyPrefix:Ljava/lang/String;
    :cond_125
    const/16 v2, 0x80

    goto/16 :goto_7d

    .line 156
    .end local v1           #addr:Ljava/lang/String;
    .end local v2           #addrPrefixLen:I
    .end local v3           #ap:[Ljava/lang/String;
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #ia:Ljava/net/InetAddress;
    .end local v11           #len$:I
    :cond_129
    :try_start_129
    new-instance v15, Ljava/net/UnknownHostException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "no address for ifname="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 160
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v11       #len$:I
    :cond_148
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    if-eqz v15, :cond_18d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    array-length v15, v15

    if-lez v15, :cond_18d

    .line 161
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    array-length v11, v4

    const/4 v8, 0x0

    :goto_15b
    if-ge v8, v11, :cond_207

    aget-object v1, v4, v8
    :try_end_15f
    .catch Ljava/net/UnknownHostException; {:try_start_129 .. :try_end_15f} :catch_d3

    .line 164
    .restart local v1       #addr:Ljava/lang/String;
    :try_start_15f
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_162
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15f .. :try_end_162} :catch_171
    .catch Ljava/net/UnknownHostException; {:try_start_15f .. :try_end_162} :catch_d3

    move-result-object v9

    .line 168
    .restart local v9       #ia:Ljava/net/InetAddress;
    :try_start_163
    invoke-virtual {v9}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v15

    if-nez v15, :cond_16e

    .line 169
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 161
    :cond_16e
    add-int/lit8 v8, v8, 0x1

    goto :goto_15b

    .line 165
    .end local v9           #ia:Ljava/net/InetAddress;
    :catch_171
    move-exception v7

    .line 166
    .local v7, e:Ljava/lang/IllegalArgumentException;
    new-instance v15, Ljava/net/UnknownHostException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Non-numeric dns addr="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 172
    .end local v1           #addr:Ljava/lang/String;
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :cond_18d
    if-eqz p2, :cond_1ff

    .line 173
    const/4 v15, 0x2

    new-array v6, v15, [Ljava/lang/String;

    .line 174
    .local v6, dnsServers:[Ljava/lang/String;
    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "dns1"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v15

    .line 175
    const/4 v15, 0x1

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "dns2"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v15

    .line 176
    move-object v4, v6

    array-length v11, v4

    const/4 v8, 0x0

    :goto_1cd
    if-ge v8, v11, :cond_207

    aget-object v5, v4, v8
    :try_end_1d1
    .catch Ljava/net/UnknownHostException; {:try_start_163 .. :try_end_1d1} :catch_d3

    .line 179
    .local v5, dnsAddr:Ljava/lang/String;
    :try_start_1d1
    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_1d4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d1 .. :try_end_1d4} :catch_1e3
    .catch Ljava/net/UnknownHostException; {:try_start_1d1 .. :try_end_1d4} :catch_d3

    move-result-object v9

    .line 183
    .restart local v9       #ia:Ljava/net/InetAddress;
    :try_start_1d5
    invoke-virtual {v9}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v15

    if-nez v15, :cond_1e0

    .line 184
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 176
    :cond_1e0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1cd

    .line 180
    .end local v9           #ia:Ljava/net/InetAddress;
    :catch_1e3
    move-exception v7

    .line 181
    .restart local v7       #e:Ljava/lang/IllegalArgumentException;
    new-instance v15, Ljava/net/UnknownHostException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Non-numeric dns addr="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 188
    .end local v5           #dnsAddr:Ljava/lang/String;
    .end local v6           #dnsServers:[Ljava/lang/String;
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :cond_1ff
    new-instance v15, Ljava/net/UnknownHostException;

    const-string v16, "Empty dns response and no system default dns"

    invoke-direct/range {v15 .. v16}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 192
    :cond_207
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/DataCallState;->gateways:[Ljava/lang/String;

    if-eqz v15, :cond_214

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/DataCallState;->gateways:[Ljava/lang/String;

    array-length v15, v15

    if-nez v15, :cond_237

    .line 193
    :cond_214
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "gw"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 194
    .local v14, sysGateways:Ljava/lang/String;
    if-eqz v14, :cond_258

    .line 195
    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/telephony/DataCallState;->gateways:[Ljava/lang/String;

    .line 200
    .end local v14           #sysGateways:Ljava/lang/String;
    :cond_237
    :goto_237
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/DataCallState;->gateways:[Ljava/lang/String;

    array-length v11, v4

    const/4 v8, 0x0

    :goto_23d
    if-ge v8, v11, :cond_27c

    aget-object v1, v4, v8
    :try_end_241
    .catch Ljava/net/UnknownHostException; {:try_start_1d5 .. :try_end_241} :catch_d3

    .line 203
    .restart local v1       #addr:Ljava/lang/String;
    :try_start_241
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_244
    .catch Ljava/lang/IllegalArgumentException; {:try_start_241 .. :try_end_244} :catch_260
    .catch Ljava/net/UnknownHostException; {:try_start_241 .. :try_end_244} :catch_d3

    move-result-object v9

    .line 207
    .restart local v9       #ia:Ljava/net/InetAddress;
    :try_start_245
    invoke-virtual {v9}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v15

    if-nez v15, :cond_255

    .line 208
    new-instance v15, Landroid/net/RouteInfo;

    invoke-direct {v15, v9}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    .line 200
    :cond_255
    add-int/lit8 v8, v8, 0x1

    goto :goto_23d

    .line 197
    .end local v1           #addr:Ljava/lang/String;
    .end local v9           #ia:Ljava/net/InetAddress;
    .restart local v14       #sysGateways:Ljava/lang/String;
    :cond_258
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/telephony/DataCallState;->gateways:[Ljava/lang/String;

    goto :goto_237

    .line 204
    .end local v14           #sysGateways:Ljava/lang/String;
    .restart local v1       #addr:Ljava/lang/String;
    :catch_260
    move-exception v7

    .line 205
    .restart local v7       #e:Ljava/lang/IllegalArgumentException;
    new-instance v15, Ljava/net/UnknownHostException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Non-numeric gateway addr="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 212
    .end local v1           #addr:Ljava/lang/String;
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :cond_27c
    sget-object v13, Lcom/android/internal/telephony/DataCallState$SetupResult;->SUCCESS:Lcom/android/internal/telephony/DataCallState$SetupResult;
    :try_end_27e
    .catch Ljava/net/UnknownHostException; {:try_start_245 .. :try_end_27e} :catch_d3

    .restart local v13       #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    goto/16 :goto_f3

    .line 219
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v11           #len$:I
    .end local v12           #propertyPrefix:Ljava/lang/String;
    .end local v13           #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    :cond_280
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/DataCallState;->version:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ge v15, v0, :cond_28e

    .line 220
    sget-object v13, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_GetLastErrorFromRil:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .restart local v13       #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    goto/16 :goto_f3

    .line 222
    .end local v13           #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    :cond_28e
    sget-object v13, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_RilError:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .restart local v13       #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    goto/16 :goto_f3
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    .line 77
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 78
    .local v4, sb:Ljava/lang/StringBuffer;
    const-string v5, "DataCallState: {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "version="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/DataCallState;->version:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/DataCallState;->status:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " retry="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/DataCallState;->suggestedRetryTime:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " cid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/DataCallState;->cid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " active="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/DataCallState;->active:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataCallState;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\' ifname=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const-string v5, "\' addresses=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    iget-object v1, p0, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_67
    if-ge v2, v3, :cond_76

    aget-object v0, v1, v2

    .line 88
    .local v0, addr:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    .line 91
    .end local v0           #addr:Ljava/lang/String;
    :cond_76
    iget-object v5, p0, Lcom/android/internal/telephony/DataCallState;->addresses:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_84

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 92
    :cond_84
    const-string v5, "] dnses=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    iget-object v1, p0, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_8d
    if-ge v2, v3, :cond_9c

    aget-object v0, v1, v2

    .line 94
    .restart local v0       #addr:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_8d

    .line 97
    .end local v0           #addr:Ljava/lang/String;
    :cond_9c
    iget-object v5, p0, Lcom/android/internal/telephony/DataCallState;->dnses:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_aa

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 98
    :cond_aa
    const-string v5, "] gateways=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    iget-object v1, p0, Lcom/android/internal/telephony/DataCallState;->gateways:[Ljava/lang/String;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_b3
    if-ge v2, v3, :cond_c2

    aget-object v0, v1, v2

    .line 100
    .restart local v0       #addr:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_b3

    .line 103
    .end local v0           #addr:Ljava/lang/String;
    :cond_c2
    iget-object v5, p0, Lcom/android/internal/telephony/DataCallState;->gateways:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_d0

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 104
    :cond_d0
    const-string v5, "]}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
