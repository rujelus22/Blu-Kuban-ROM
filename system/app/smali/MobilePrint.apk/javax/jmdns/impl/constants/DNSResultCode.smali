.class public final enum Ljavax/jmdns/impl/constants/DNSResultCode;
.super Ljava/lang/Enum;
.source "DNSResultCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/jmdns/impl/constants/DNSResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Ljavax/jmdns/impl/constants/DNSResultCode; = null

.field static final ExtendedRCode_MASK:I = 0xff

.field public static final enum FormErr:Ljavax/jmdns/impl/constants/DNSResultCode; = null

.field public static final enum NXDomain:Ljavax/jmdns/impl/constants/DNSResultCode; = null

.field public static final enum NXRRSet:Ljavax/jmdns/impl/constants/DNSResultCode; = null

.field public static final enum NoError:Ljavax/jmdns/impl/constants/DNSResultCode; = null

.field public static final enum NotAuth:Ljavax/jmdns/impl/constants/DNSResultCode; = null

.field public static final enum NotImp:Ljavax/jmdns/impl/constants/DNSResultCode; = null

.field public static final enum NotZone:Ljavax/jmdns/impl/constants/DNSResultCode; = null

.field static final RCode_MASK:I = 0xf

.field public static final enum Refused:Ljavax/jmdns/impl/constants/DNSResultCode;

.field public static final enum ServFail:Ljavax/jmdns/impl/constants/DNSResultCode;

.field public static final enum Unknown:Ljavax/jmdns/impl/constants/DNSResultCode;

.field public static final enum YXDomain:Ljavax/jmdns/impl/constants/DNSResultCode;

.field public static final enum YXRRSet:Ljavax/jmdns/impl/constants/DNSResultCode;


# instance fields
.field private final _externalName:Ljava/lang/String;

.field private final _index:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 15
    new-instance v0, Ljavax/jmdns/impl/constants/DNSResultCode;

    const-string v1, "Unknown"

    const-string v2, "Unknown"

    const v3, 0xffff

    invoke-direct {v0, v1, v5, v2, v3}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSResultCode;->Unknown:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 19
    new-instance v0, Ljavax/jmdns/impl/constants/DNSResultCode;

    const-string v1, "NoError"

    const-string v2, "No Error"

    invoke-direct {v0, v1, v6, v2, v5}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSResultCode;->NoError:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 23
    new-instance v0, Ljavax/jmdns/impl/constants/DNSResultCode;

    const-string v1, "FormErr"

    const-string v2, "Format Error"

    invoke-direct {v0, v1, v7, v2, v6}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSResultCode;->FormErr:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 27
    new-instance v0, Ljavax/jmdns/impl/constants/DNSResultCode;

    const-string v1, "ServFail"

    const-string v2, "Server Failure"

    invoke-direct {v0, v1, v8, v2, v7}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSResultCode;->ServFail:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 31
    new-instance v0, Ljavax/jmdns/impl/constants/DNSResultCode;

    const-string v1, "NXDomain"

    const-string v2, "Non-Existent Domain"

    invoke-direct {v0, v1, v9, v2, v8}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSResultCode;->NXDomain:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 35
    new-instance v0, Ljavax/jmdns/impl/constants/DNSResultCode;

    const-string v1, "NotImp"

    const/4 v2, 0x5

    const-string v3, "Not Implemented"

    invoke-direct {v0, v1, v2, v3, v9}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSResultCode;->NotImp:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 39
    new-instance v0, Ljavax/jmdns/impl/constants/DNSResultCode;

    const-string v1, "Refused"

    const/4 v2, 0x6

    const-string v3, "Query Refused"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSResultCode;->Refused:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 43
    new-instance v0, Ljavax/jmdns/impl/constants/DNSResultCode;

    const-string v1, "YXDomain"

    const/4 v2, 0x7

    const-string v3, "Name Exists when it should not"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSResultCode;->YXDomain:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 47
    new-instance v0, Ljavax/jmdns/impl/constants/DNSResultCode;

    const-string v1, "YXRRSet"

    const/16 v2, 0x8

    const-string v3, "RR Set Exists when it should not"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSResultCode;->YXRRSet:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 51
    new-instance v0, Ljavax/jmdns/impl/constants/DNSResultCode;

    const-string v1, "NXRRSet"

    const/16 v2, 0x9

    const-string v3, "RR Set that should exist does not"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSResultCode;->NXRRSet:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 55
    new-instance v0, Ljavax/jmdns/impl/constants/DNSResultCode;

    const-string v1, "NotAuth"

    const/16 v2, 0xa

    const-string v3, "Server Not Authoritative for zone"

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSResultCode;->NotAuth:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 59
    new-instance v0, Ljavax/jmdns/impl/constants/DNSResultCode;

    const-string v1, "NotZone"

    const/16 v2, 0xb

    const-string v3, "NotZone Name not contained in zone"

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/constants/DNSResultCode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSResultCode;->NotZone:Ljavax/jmdns/impl/constants/DNSResultCode;

    .line 11
    const/16 v0, 0xc

    new-array v0, v0, [Ljavax/jmdns/impl/constants/DNSResultCode;

    sget-object v1, Ljavax/jmdns/impl/constants/DNSResultCode;->Unknown:Ljavax/jmdns/impl/constants/DNSResultCode;

    aput-object v1, v0, v5

    sget-object v1, Ljavax/jmdns/impl/constants/DNSResultCode;->NoError:Ljavax/jmdns/impl/constants/DNSResultCode;

    aput-object v1, v0, v6

    sget-object v1, Ljavax/jmdns/impl/constants/DNSResultCode;->FormErr:Ljavax/jmdns/impl/constants/DNSResultCode;

    aput-object v1, v0, v7

    sget-object v1, Ljavax/jmdns/impl/constants/DNSResultCode;->ServFail:Ljavax/jmdns/impl/constants/DNSResultCode;

    aput-object v1, v0, v8

    sget-object v1, Ljavax/jmdns/impl/constants/DNSResultCode;->NXDomain:Ljavax/jmdns/impl/constants/DNSResultCode;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Ljavax/jmdns/impl/constants/DNSResultCode;->NotImp:Ljavax/jmdns/impl/constants/DNSResultCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljavax/jmdns/impl/constants/DNSResultCode;->Refused:Ljavax/jmdns/impl/constants/DNSResultCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljavax/jmdns/impl/constants/DNSResultCode;->YXDomain:Ljavax/jmdns/impl/constants/DNSResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ljavax/jmdns/impl/constants/DNSResultCode;->YXRRSet:Ljavax/jmdns/impl/constants/DNSResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Ljavax/jmdns/impl/constants/DNSResultCode;->NXRRSet:Ljavax/jmdns/impl/constants/DNSResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Ljavax/jmdns/impl/constants/DNSResultCode;->NotAuth:Ljavax/jmdns/impl/constants/DNSResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Ljavax/jmdns/impl/constants/DNSResultCode;->NotZone:Ljavax/jmdns/impl/constants/DNSResultCode;

    aput-object v2, v0, v1

    sput-object v0, Ljavax/jmdns/impl/constants/DNSResultCode;->ENUM$VALUES:[Ljavax/jmdns/impl/constants/DNSResultCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .parameter
    .parameter
    .parameter "name"
    .parameter "index"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 102
    iput-object p3, p0, Ljavax/jmdns/impl/constants/DNSResultCode;->_externalName:Ljava/lang/String;

    .line 103
    iput p4, p0, Ljavax/jmdns/impl/constants/DNSResultCode;->_index:I

    .line 104
    return-void
.end method

.method public static resultCodeForFlags(I)Ljavax/jmdns/impl/constants/DNSResultCode;
    .registers 7
    .parameter "flags"

    .prologue
    .line 129
    and-int/lit8 v1, p0, 0xf

    .line 130
    .local v1, maskedIndex:I
    invoke-static {}, Ljavax/jmdns/impl/constants/DNSResultCode;->values()[Ljavax/jmdns/impl/constants/DNSResultCode;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_8
    if-lt v2, v4, :cond_d

    .line 133
    sget-object v0, Ljavax/jmdns/impl/constants/DNSResultCode;->Unknown:Ljavax/jmdns/impl/constants/DNSResultCode;

    :cond_c
    return-object v0

    .line 130
    :cond_d
    aget-object v0, v3, v2

    .line 131
    .local v0, aCode:Ljavax/jmdns/impl/constants/DNSResultCode;
    iget v5, v0, Ljavax/jmdns/impl/constants/DNSResultCode;->_index:I

    if-eq v5, v1, :cond_c

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method

.method public static resultCodeForFlags(II)Ljavax/jmdns/impl/constants/DNSResultCode;
    .registers 8
    .parameter "flags"
    .parameter "extendedRCode"

    .prologue
    .line 137
    shr-int/lit8 v2, p1, 0x1c

    and-int/lit16 v2, v2, 0xff

    and-int/lit8 v3, p0, 0xf

    or-int v1, v2, v3

    .line 138
    .local v1, maskedIndex:I
    invoke-static {}, Ljavax/jmdns/impl/constants/DNSResultCode;->values()[Ljavax/jmdns/impl/constants/DNSResultCode;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_e
    if-lt v2, v4, :cond_13

    .line 141
    sget-object v0, Ljavax/jmdns/impl/constants/DNSResultCode;->Unknown:Ljavax/jmdns/impl/constants/DNSResultCode;

    :cond_12
    return-object v0

    .line 138
    :cond_13
    aget-object v0, v3, v2

    .line 139
    .local v0, aCode:Ljavax/jmdns/impl/constants/DNSResultCode;
    iget v5, v0, Ljavax/jmdns/impl/constants/DNSResultCode;->_index:I

    if-eq v5, v1, :cond_12

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_e
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/jmdns/impl/constants/DNSResultCode;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Ljavax/jmdns/impl/constants/DNSResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/constants/DNSResultCode;

    return-object v0
.end method

.method public static values()[Ljavax/jmdns/impl/constants/DNSResultCode;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Ljavax/jmdns/impl/constants/DNSResultCode;->ENUM$VALUES:[Ljavax/jmdns/impl/constants/DNSResultCode;

    array-length v1, v0

    new-array v2, v1, [Ljavax/jmdns/impl/constants/DNSResultCode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public externalName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSResultCode;->_externalName:Ljava/lang/String;

    return-object v0
.end method

.method public indexValue()I
    .registers 2

    .prologue
    .line 121
    iget v0, p0, Ljavax/jmdns/impl/constants/DNSResultCode;->_index:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/constants/DNSResultCode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/constants/DNSResultCode;->indexValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
