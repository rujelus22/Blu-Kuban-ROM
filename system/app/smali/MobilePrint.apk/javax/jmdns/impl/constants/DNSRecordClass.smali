.class public final enum Ljavax/jmdns/impl/constants/DNSRecordClass;
.super Ljava/lang/Enum;
.source "DNSRecordClass.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/jmdns/impl/constants/DNSRecordClass;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass; = null

.field public static final enum CLASS_CH:Ljavax/jmdns/impl/constants/DNSRecordClass; = null

.field public static final enum CLASS_CS:Ljavax/jmdns/impl/constants/DNSRecordClass; = null

.field public static final enum CLASS_HS:Ljavax/jmdns/impl/constants/DNSRecordClass; = null

.field public static final enum CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass; = null

.field public static final CLASS_MASK:I = 0x7fff

.field public static final enum CLASS_NONE:Ljavax/jmdns/impl/constants/DNSRecordClass; = null

.field public static final CLASS_UNIQUE:I = 0x8000

.field public static final enum CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass; = null

.field private static final synthetic ENUM$VALUES:[Ljavax/jmdns/impl/constants/DNSRecordClass; = null

.field public static final NOT_UNIQUE:Z = false

.field public static final UNIQUE:Z = true

.field private static logger:Ljava/util/logging/Logger;


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

    .line 18
    new-instance v0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    const-string v1, "CLASS_UNKNOWN"

    const-string v2, "?"

    invoke-direct {v0, v1, v5, v2, v5}, Ljavax/jmdns/impl/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 22
    new-instance v0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    const-string v1, "CLASS_IN"

    const-string v2, "in"

    invoke-direct {v0, v1, v6, v2, v6}, Ljavax/jmdns/impl/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 26
    new-instance v0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    const-string v1, "CLASS_CS"

    const-string v2, "cs"

    invoke-direct {v0, v1, v7, v2, v7}, Ljavax/jmdns/impl/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_CS:Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 30
    new-instance v0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    const-string v1, "CLASS_CH"

    const-string v2, "ch"

    invoke-direct {v0, v1, v8, v2, v8}, Ljavax/jmdns/impl/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_CH:Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 34
    new-instance v0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    const-string v1, "CLASS_HS"

    const-string v2, "hs"

    invoke-direct {v0, v1, v9, v2, v9}, Ljavax/jmdns/impl/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_HS:Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 38
    new-instance v0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    const-string v1, "CLASS_NONE"

    const/4 v2, 0x5

    const-string v3, "none"

    const/16 v4, 0xfe

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_NONE:Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 42
    new-instance v0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    const-string v1, "CLASS_ANY"

    const/4 v2, 0x6

    const-string v3, "any"

    const/16 v4, 0xff

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/jmdns/impl/constants/DNSRecordClass;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    const/4 v0, 0x7

    new-array v0, v0, [Ljavax/jmdns/impl/constants/DNSRecordClass;

    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    aput-object v1, v0, v5

    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    aput-object v1, v0, v6

    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_CS:Ljavax/jmdns/impl/constants/DNSRecordClass;

    aput-object v1, v0, v7

    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_CH:Ljavax/jmdns/impl/constants/DNSRecordClass;

    aput-object v1, v0, v8

    sget-object v1, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_HS:Ljavax/jmdns/impl/constants/DNSRecordClass;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_NONE:Ljavax/jmdns/impl/constants/DNSRecordClass;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_ANY:Ljavax/jmdns/impl/constants/DNSRecordClass;

    aput-object v2, v0, v1

    sput-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->ENUM$VALUES:[Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 44
    const-class v0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->logger:Ljava/util/logging/Logger;

    .line 14
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .parameter
    .parameter
    .parameter "name"
    .parameter "index"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput-object p3, p0, Ljavax/jmdns/impl/constants/DNSRecordClass;->_externalName:Ljava/lang/String;

    .line 74
    iput p4, p0, Ljavax/jmdns/impl/constants/DNSRecordClass;->_index:I

    .line 75
    return-void
.end method

.method public static classForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordClass;
    .registers 7
    .parameter "index"

    .prologue
    .line 125
    and-int/lit16 v1, p0, 0x7fff

    .line 126
    .local v1, maskedIndex:I
    invoke-static {}, Ljavax/jmdns/impl/constants/DNSRecordClass;->values()[Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_8
    if-lt v2, v4, :cond_23

    .line 129
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not find record class for index: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 130
    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    :cond_22
    return-object v0

    .line 126
    :cond_23
    aget-object v0, v3, v2

    .line 127
    .local v0, aClass:Ljavax/jmdns/impl/constants/DNSRecordClass;
    iget v5, v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->_index:I

    if-eq v5, v1, :cond_22

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method

.method public static classForName(Ljava/lang/String;)Ljavax/jmdns/impl/constants/DNSRecordClass;
    .registers 7
    .parameter "name"

    .prologue
    .line 110
    if-eqz p0, :cond_e

    .line 111
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, aName:Ljava/lang/String;
    invoke-static {}, Ljavax/jmdns/impl/constants/DNSRecordClass;->values()[Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_c
    if-lt v2, v4, :cond_27

    .line 116
    .end local v1           #aName:Ljava/lang/String;
    :cond_e
    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not find record class for name: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 117
    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    :cond_26
    return-object v0

    .line 112
    .restart local v1       #aName:Ljava/lang/String;
    :cond_27
    aget-object v0, v3, v2

    .line 113
    .local v0, aClass:Ljavax/jmdns/impl/constants/DNSRecordClass;
    iget-object v5, v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->_externalName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_c
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/jmdns/impl/constants/DNSRecordClass;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/constants/DNSRecordClass;

    return-object v0
.end method

.method public static values()[Ljavax/jmdns/impl/constants/DNSRecordClass;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->ENUM$VALUES:[Ljavax/jmdns/impl/constants/DNSRecordClass;

    array-length v1, v0

    new-array v2, v1, [Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public externalName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Ljavax/jmdns/impl/constants/DNSRecordClass;->_externalName:Ljava/lang/String;

    return-object v0
.end method

.method public indexValue()I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Ljavax/jmdns/impl/constants/DNSRecordClass;->_index:I

    return v0
.end method

.method public isUnique(I)Z
    .registers 3
    .parameter "index"

    .prologue
    .line 102
    sget-object v0, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    if-eq p0, v0, :cond_c

    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/constants/DNSRecordClass;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/constants/DNSRecordClass;->indexValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
