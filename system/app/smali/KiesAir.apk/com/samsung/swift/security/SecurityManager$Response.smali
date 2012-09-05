.class public final enum Lcom/samsung/swift/security/SecurityManager$Response;
.super Ljava/lang/Enum;
.source "SecurityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/swift/security/SecurityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/swift/security/SecurityManager$Response;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/swift/security/SecurityManager$Response;

.field public static final enum AUTHORIZED:Lcom/samsung/swift/security/SecurityManager$Response;

.field public static final enum DONT_KNOW:Lcom/samsung/swift/security/SecurityManager$Response;

.field public static final enum UNAUTHORISED:Lcom/samsung/swift/security/SecurityManager$Response;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    new-instance v0, Lcom/samsung/swift/security/SecurityManager$Response;

    const-string v1, "AUTHORIZED"

    invoke-direct {v0, v1, v2}, Lcom/samsung/swift/security/SecurityManager$Response;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/swift/security/SecurityManager$Response;->AUTHORIZED:Lcom/samsung/swift/security/SecurityManager$Response;

    .line 102
    new-instance v0, Lcom/samsung/swift/security/SecurityManager$Response;

    const-string v1, "UNAUTHORISED"

    invoke-direct {v0, v1, v3}, Lcom/samsung/swift/security/SecurityManager$Response;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/swift/security/SecurityManager$Response;->UNAUTHORISED:Lcom/samsung/swift/security/SecurityManager$Response;

    .line 103
    new-instance v0, Lcom/samsung/swift/security/SecurityManager$Response;

    const-string v1, "DONT_KNOW"

    invoke-direct {v0, v1, v4}, Lcom/samsung/swift/security/SecurityManager$Response;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/swift/security/SecurityManager$Response;->DONT_KNOW:Lcom/samsung/swift/security/SecurityManager$Response;

    .line 98
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/swift/security/SecurityManager$Response;

    sget-object v1, Lcom/samsung/swift/security/SecurityManager$Response;->AUTHORIZED:Lcom/samsung/swift/security/SecurityManager$Response;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/swift/security/SecurityManager$Response;->UNAUTHORISED:Lcom/samsung/swift/security/SecurityManager$Response;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/swift/security/SecurityManager$Response;->DONT_KNOW:Lcom/samsung/swift/security/SecurityManager$Response;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/swift/security/SecurityManager$Response;->$VALUES:[Lcom/samsung/swift/security/SecurityManager$Response;

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
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static convert(I)Lcom/samsung/swift/security/SecurityManager$Response;
    .registers 2
    .parameter "response"

    .prologue
    .line 107
    sget-object v0, Lcom/samsung/swift/security/SecurityManager$Response;->AUTHORIZED:Lcom/samsung/swift/security/SecurityManager$Response;

    invoke-virtual {v0}, Lcom/samsung/swift/security/SecurityManager$Response;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_b

    .line 109
    sget-object v0, Lcom/samsung/swift/security/SecurityManager$Response;->AUTHORIZED:Lcom/samsung/swift/security/SecurityManager$Response;

    .line 117
    :goto_a
    return-object v0

    .line 111
    :cond_b
    sget-object v0, Lcom/samsung/swift/security/SecurityManager$Response;->UNAUTHORISED:Lcom/samsung/swift/security/SecurityManager$Response;

    invoke-virtual {v0}, Lcom/samsung/swift/security/SecurityManager$Response;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_16

    .line 113
    sget-object v0, Lcom/samsung/swift/security/SecurityManager$Response;->UNAUTHORISED:Lcom/samsung/swift/security/SecurityManager$Response;

    goto :goto_a

    .line 115
    :cond_16
    sget-object v0, Lcom/samsung/swift/security/SecurityManager$Response;->DONT_KNOW:Lcom/samsung/swift/security/SecurityManager$Response;

    invoke-virtual {v0}, Lcom/samsung/swift/security/SecurityManager$Response;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_21

    .line 117
    sget-object v0, Lcom/samsung/swift/security/SecurityManager$Response;->DONT_KNOW:Lcom/samsung/swift/security/SecurityManager$Response;

    goto :goto_a

    .line 119
    :cond_21
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/swift/security/SecurityManager$Response;
    .registers 2
    .parameter "name"

    .prologue
    .line 98
    const-class v0, Lcom/samsung/swift/security/SecurityManager$Response;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/swift/security/SecurityManager$Response;

    return-object v0
.end method

.method public static values()[Lcom/samsung/swift/security/SecurityManager$Response;
    .registers 1

    .prologue
    .line 98
    sget-object v0, Lcom/samsung/swift/security/SecurityManager$Response;->$VALUES:[Lcom/samsung/swift/security/SecurityManager$Response;

    invoke-virtual {v0}, [Lcom/samsung/swift/security/SecurityManager$Response;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/swift/security/SecurityManager$Response;

    return-object v0
.end method
