.class public final enum Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;
.super Ljava/lang/Enum;
.source "ConnectionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

.field public static final enum Manual:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

.field public static final enum Profile_Imported:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

.field private static mTypes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 18
    new-instance v5, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    const-string v6, "Manual"

    invoke-direct {v5, v6, v7}, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Manual:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    .line 19
    new-instance v5, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    const-string v6, "Profile_Imported"

    invoke-direct {v5, v6, v8}, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Profile_Imported:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    .line 16
    const/4 v5, 0x2

    new-array v5, v5, [Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    sget-object v6, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Manual:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    aput-object v6, v5, v7

    sget-object v6, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Profile_Imported:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    aput-object v6, v5, v8

    sput-object v5, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    .line 25
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->values()[Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [Ljava/lang/String;

    sput-object v5, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->mTypes:[Ljava/lang/String;

    .line 26
    const/4 v1, 0x0

    .line 27
    .local v1, i:I
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->values()[Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    move-result-object v0

    .local v0, arr$:[Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_31
    if-ge v2, v3, :cond_42

    aget-object v4, v0, v2

    .line 29
    .local v4, type:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->mTypes:[Ljava/lang/String;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 27
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 32
    .end local v4           #type:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;
    :cond_42
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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;
    .registers 2
    .parameter "name"

    .prologue
    .line 16
    const-class v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    return-object v0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    return-object v0
.end method
