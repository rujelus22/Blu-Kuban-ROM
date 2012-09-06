.class public final Lcom/google/android/music/athome/AtHomeUtils;
.super Ljava/lang/Object;
.source "AtHomeUtils.java"


# static fields
.field public static final LOGV:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const-string v0, "aah.Music"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/athome/AtHomeUtils;->LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apiToInternalErrorType(I)I
    .registers 5
    .parameter "atHomeApiErrorType"

    .prologue
    const/4 v0, 0x1

    .line 269
    sparse-switch p0, :sswitch_data_34

    .line 294
    const-string v1, "aah.Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized atHome error type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :goto_1c
    :sswitch_1c
    return v0

    .line 271
    :sswitch_1d
    const/4 v0, 0x0

    goto :goto_1c

    .line 275
    :sswitch_1f
    const/4 v0, 0x2

    goto :goto_1c

    .line 277
    :sswitch_21
    const/4 v0, 0x3

    goto :goto_1c

    .line 279
    :sswitch_23
    const/4 v0, 0x4

    goto :goto_1c

    .line 281
    :sswitch_25
    const/4 v0, 0x5

    goto :goto_1c

    .line 283
    :sswitch_27
    const/4 v0, 0x6

    goto :goto_1c

    .line 285
    :sswitch_29
    const/4 v0, 0x7

    goto :goto_1c

    .line 287
    :sswitch_2b
    const/16 v0, 0x8

    goto :goto_1c

    .line 289
    :sswitch_2e
    const/16 v0, 0x138c

    goto :goto_1c

    .line 291
    :sswitch_31
    const/16 v0, 0x1390

    goto :goto_1c

    .line 269
    :sswitch_data_34
    .sparse-switch
        0x0 -> :sswitch_1d
        0xbbfd1 -> :sswitch_1c
        0xbbfd2 -> :sswitch_1f
        0xbbfd3 -> :sswitch_21
        0xbbfd4 -> :sswitch_23
        0xbbfd5 -> :sswitch_25
        0xbbfd6 -> :sswitch_27
        0xbbfd7 -> :sswitch_29
        0xbbfd8 -> :sswitch_2b
        0xbc3b9 -> :sswitch_2e
        0xbc3ba -> :sswitch_31
    .end sparse-switch
.end method

.method public static areAtHomeAppsInstalled(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-static {p0}, Landroid/support/place/connector/BrokerConnection;->isBrokerInstalled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 69
    :cond_7
    :goto_7
    return v2

    .line 66
    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, i:Landroid/content/Intent;
    const-string v3, "vnd.android.cursor.item/vnd.google.android.athome.audiooutput"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 69
    .local v1, pacMan:Landroid/content/pm/PackageManager;
    const/high16 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_7

    const/4 v2, 0x1

    goto :goto_7
.end method

.method static atHomeToPlaybackServiceRepeatMode(I)I
    .registers 5
    .parameter "repeatMode"

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, playbackServiceRepeatMode:I
    packed-switch p0, :pswitch_data_24

    .line 192
    const-string v1, "aah.Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected atHome repeat mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_1c
    return v0

    .line 183
    :pswitch_1d
    const/4 v0, 0x0

    .line 184
    goto :goto_1c

    .line 186
    :pswitch_1f
    const/4 v0, 0x1

    .line 187
    goto :goto_1c

    .line 189
    :pswitch_21
    const/4 v0, 0x2

    .line 190
    goto :goto_1c

    .line 181
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1f
        :pswitch_21
    .end packed-switch
.end method

.method public static getAtHomeDeviceAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .registers 7
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 127
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 128
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const-string v2, "android.athome"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 129
    .local v1, atHomeAccounts:[Landroid/accounts/Account;
    if-eqz v1, :cond_3c

    array-length v2, v1

    if-lez v2, :cond_3c

    .line 130
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1b

    .line 131
    const-string v2, "aah.Music"

    const-string v3, "Multiple athome accounts found. Could be using wrong one."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_1b
    sget-boolean v2, Lcom/google/android/music/athome/AtHomeUtils;->LOGV:Z

    if-eqz v2, :cond_39

    .line 134
    const-string v2, "aah.Music"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found at home account: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_39
    aget-object v2, v1, v5

    .line 139
    :goto_3b
    return-object v2

    .line 138
    :cond_3c
    const-string v2, "aah.Music"

    const-string v3, "No athome accounts found."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v2, 0x0

    goto :goto_3b
.end method

.method static getShuffleMode(Z)I
    .registers 2
    .parameter "shuffle"

    .prologue
    .line 210
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method static internalToApiErrorType(I)I
    .registers 5
    .parameter "internalErrorType"

    .prologue
    const v1, 0xbbfd1

    .line 221
    sparse-switch p0, :sswitch_data_4a

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized internal error type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, message:Ljava/lang/String;
    const-string v2, "aah.Music"

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    .end local v0           #message:Ljava/lang/String;
    :goto_23
    :sswitch_23
    return v1

    .line 224
    :sswitch_24
    const/4 v1, 0x0

    goto :goto_23

    .line 228
    :sswitch_26
    const v1, 0xbbfd2

    goto :goto_23

    .line 230
    :sswitch_2a
    const v1, 0xbbfd3

    goto :goto_23

    .line 232
    :sswitch_2e
    const v1, 0xbbfd4

    goto :goto_23

    .line 234
    :sswitch_32
    const v1, 0xbbfd5

    goto :goto_23

    .line 236
    :sswitch_36
    const v1, 0xbbfd6

    goto :goto_23

    .line 238
    :sswitch_3a
    const v1, 0xbbfd7

    goto :goto_23

    .line 240
    :sswitch_3e
    const v1, 0xbbfd8

    goto :goto_23

    .line 244
    :sswitch_42
    const v1, 0xbc3b9

    goto :goto_23

    .line 246
    :sswitch_46
    const v1, 0xbc3ba

    goto :goto_23

    .line 221
    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_24
        0x1 -> :sswitch_23
        0x2 -> :sswitch_26
        0x3 -> :sswitch_2a
        0x4 -> :sswitch_2e
        0x5 -> :sswitch_32
        0x6 -> :sswitch_36
        0x7 -> :sswitch_3a
        0x8 -> :sswitch_3e
        0x138c -> :sswitch_42
        0x1390 -> :sswitch_46
    .end sparse-switch
.end method

.method static isShuffle(I)Z
    .registers 5
    .parameter "shuffleMode"

    .prologue
    const/4 v0, 0x0

    .line 198
    packed-switch p0, :pswitch_data_20

    .line 204
    const-string v1, "aah.Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected shuffle mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :goto_1c
    :pswitch_1c
    return v0

    .line 202
    :pswitch_1d
    const/4 v0, 0x1

    goto :goto_1c

    .line 198
    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method

.method static playbackServiceToAtHomeRepeatMode(I)I
    .registers 5
    .parameter "repeatMode"

    .prologue
    const/4 v0, 0x0

    .line 162
    packed-switch p0, :pswitch_data_22

    .line 170
    const-string v1, "aah.Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected repeat mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_1c
    :pswitch_1c
    return v0

    .line 166
    :pswitch_1d
    const/4 v0, 0x1

    goto :goto_1c

    .line 168
    :pswitch_1f
    const/4 v0, 0x2

    goto :goto_1c

    .line 162
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1d
        :pswitch_1f
    .end packed-switch
.end method

.method public static readEndpoint([B)Landroid/support/place/rpc/EndpointInfo;
    .registers 3
    .parameter "config"

    .prologue
    .line 144
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 145
    .local v0, data:Landroid/support/place/rpc/RpcData;
    invoke-virtual {v0, p0}, Landroid/support/place/rpc/RpcData;->deserialize([B)V

    .line 146
    new-instance v1, Landroid/support/place/rpc/EndpointInfo;

    invoke-direct {v1, v0}, Landroid/support/place/rpc/EndpointInfo;-><init>(Landroid/support/place/rpc/RpcData;)V

    return-object v1
.end method

.method public static sendUserToGetAtHomeApps(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, i:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 75
    const v2, 0x8000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    const/high16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    const-string v2, "bazaar://search?q=pname:com.google.android.setupwarlock"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 83
    .local v1, pacMan:Landroid/content/pm/PackageManager;
    const/high16 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_35

    .line 84
    const-string v2, "https://market.android.com/details?id=com.google.android.setupwarlock&rdid=com.google.android.setupwarlock&rdot=1"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 86
    :cond_35
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 87
    return-void
.end method

.method public static startAtHomeApp(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    .line 90
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 92
    .local v1, i:Landroid/content/Intent;
    :try_start_5
    const-string v2, "com.google.android.setupwarlock.SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v2, "com.google.android.setupwarlock"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 95
    const v2, 0x8000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 96
    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_22
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_22} :catch_24

    .line 102
    const/4 v2, 0x1

    :goto_23
    return v2

    .line 98
    :catch_24
    move-exception v0

    .line 99
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "aah.Music"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityNotFoundException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v2, 0x0

    goto :goto_23
.end method

.method public static writeEndPoint(Landroid/support/place/rpc/EndpointInfo;)[B
    .registers 3
    .parameter "endpoint"

    .prologue
    .line 152
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 153
    .local v0, data:Landroid/support/place/rpc/RpcData;
    invoke-virtual {p0, v0}, Landroid/support/place/rpc/EndpointInfo;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 154
    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v1

    return-object v1
.end method
