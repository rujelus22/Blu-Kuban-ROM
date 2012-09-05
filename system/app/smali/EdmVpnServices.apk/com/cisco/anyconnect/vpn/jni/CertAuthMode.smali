.class public final enum Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;
.super Ljava/lang/Enum;
.source "CertAuthMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

.field public static final enum Automatic:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

.field public static final enum Disabled:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

.field public static final enum Manual:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

.field private static mModes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 5
    new-instance v6, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    const-string v7, "Automatic"

    invoke-direct {v6, v7, v8}, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Automatic:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    .line 6
    new-instance v6, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    const-string v7, "Disabled"

    invoke-direct {v6, v7, v9}, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Disabled:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    .line 7
    new-instance v6, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    const-string v7, "Manual"

    invoke-direct {v6, v7, v10}, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Manual:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    .line 3
    const/4 v6, 0x3

    new-array v6, v6, [Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    sget-object v7, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Automatic:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    aput-object v7, v6, v8

    sget-object v7, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Disabled:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    aput-object v7, v6, v9

    sget-object v7, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Manual:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    aput-object v7, v6, v10

    sput-object v6, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    .line 13
    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->values()[Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [Ljava/lang/String;

    sput-object v6, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->mModes:[Ljava/lang/String;

    .line 14
    const/4 v1, 0x0

    .line 15
    .local v1, i:I
    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->values()[Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    move-result-object v0

    .local v0, arr$:[Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_40
    if-ge v3, v4, :cond_52

    aget-object v5, v0, v3

    .line 17
    .local v5, mode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;
    sget-object v6, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->mModes:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 15
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_40

    .line 19
    .end local v5           #mode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;
    :cond_52
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;
    .registers 2
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    return-object v0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;
    .registers 1

    .prologue
    .line 3
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    return-object v0
.end method
