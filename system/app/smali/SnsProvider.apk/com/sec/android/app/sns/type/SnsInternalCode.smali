.class public final Lcom/sec/android/app/sns/type/SnsInternalCode;
.super Ljava/lang/Object;
.source "SnsInternalCode.java"


# static fields
.field public static final FRAMEWORK_ERROR:[Ljava/lang/String;

.field public static final HTTP_LAYER_ERROR:[Ljava/lang/String;

.field public static final HTTP_LAYER_ERROR_SECOND:[Ljava/lang/String;

.field public static final REQUESTMGR_ERROR:[Ljava/lang/String;

.field public static final REQUESTMGR_ERROR_SECOND:[Ljava/lang/String;

.field public static final RESPONSE_ERROR:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Session Error"

    aput-object v1, v0, v2

    const-string v1, "Account Error"

    aput-object v1, v0, v3

    const-string v1, "Temporary Error"

    aput-object v1, v0, v4

    const-string v1, "Forwardable Error"

    aput-object v1, v0, v5

    const-string v1, "No Parsed Data"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/sns/type/SnsInternalCode;->REQUESTMGR_ERROR:[Ljava/lang/String;

    .line 105
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Http status Error"

    aput-object v1, v0, v2

    const-string v1, "Photo upload body failed"

    aput-object v1, v0, v3

    const-string v1, "Video upload body failed"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/sns/type/SnsInternalCode;->REQUESTMGR_ERROR_SECOND:[Ljava/lang/String;

    .line 111
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Composing Error"

    aput-object v1, v0, v2

    const-string v1, "Parsing Error"

    aput-object v1, v0, v3

    const-string v1, "ICCID changed"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/sns/type/SnsInternalCode;->FRAMEWORK_ERROR:[Ljava/lang/String;

    .line 117
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "Aborted"

    aput-object v1, v0, v2

    const-string v1, "Illegal state exception"

    aput-object v1, v0, v3

    const-string v1, "IO exception"

    aput-object v1, v0, v4

    const-string v1, "Interrupted IO"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/sns/type/SnsInternalCode;->HTTP_LAYER_ERROR:[Ljava/lang/String;

    .line 124
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Network unreachable"

    aput-object v1, v0, v2

    const-string v1, "Unknown host"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/app/sns/type/SnsInternalCode;->HTTP_LAYER_ERROR_SECOND:[Ljava/lang/String;

    .line 129
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "DisposeData Error"

    aput-object v1, v0, v2

    const-string v1, "DisposeData Partial Error"

    aput-object v1, v0, v3

    const-string v1, "DB Adapter Error"

    aput-object v1, v0, v4

    const-string v1, "No deleted messages"

    aput-object v1, v0, v5

    const-string v1, "Message post fail"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "People profile set fail"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/sns/type/SnsInternalCode;->RESPONSE_ERROR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static printErrorInternalCode(I)Ljava/lang/String;
    .registers 5
    .parameter "internalCode"

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, errorNumber:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v1, errorText:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " << Error occur!!! internalcode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const/16 v2, 0x1771

    if-lt p0, v2, :cond_47

    .line 145
    add-int/lit16 v0, p0, -0x1771

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sns/type/SnsInternalCode;->RESPONSE_ERROR:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :goto_42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 147
    :cond_47
    const/16 v2, 0x13ed

    if-lt p0, v2, :cond_6e

    .line 148
    add-int/lit16 v0, p0, -0x13ed

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sns/type/SnsInternalCode;->HTTP_LAYER_ERROR_SECOND:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    .line 150
    :cond_6e
    const/16 v2, 0x1389

    if-lt p0, v2, :cond_95

    .line 151
    add-int/lit16 v0, p0, -0x1389

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sns/type/SnsInternalCode;->HTTP_LAYER_ERROR:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    .line 153
    :cond_95
    const/16 v2, 0xfa1

    if-lt p0, v2, :cond_bc

    .line 154
    add-int/lit16 v0, p0, -0xfa1

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sns/type/SnsInternalCode;->FRAMEWORK_ERROR:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    .line 156
    :cond_bc
    const/16 v2, 0xc1d

    if-lt p0, v2, :cond_e4

    .line 157
    add-int/lit16 v0, p0, -0xc1d

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sns/type/SnsInternalCode;->REQUESTMGR_ERROR_SECOND:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_42

    .line 159
    :cond_e4
    const/16 v2, 0xbb9

    if-lt p0, v2, :cond_10c

    .line 160
    add-int/lit16 v0, p0, -0xbb9

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sns/type/SnsInternalCode;->REQUESTMGR_ERROR:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_42

    .line 163
    :cond_10c
    const-string v2, "-> Wrong internalcode >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_42
.end method
