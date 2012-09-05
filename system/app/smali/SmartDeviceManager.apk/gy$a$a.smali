.class public final enum Lgy$a$a;
.super Ljava/lang/Enum;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgy$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4031
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lgy$a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgy$a$a;

.field public static final enum BACK_REFERENCE:Lgy$a$a;

.field public static final enum MANAGED_REFERENCE:Lgy$a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lgy$a$a;

    const-string v1, "MANAGED_REFERENCE"

    invoke-direct {v0, v1, v2}, Lgy$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgy$a$a;->MANAGED_REFERENCE:Lgy$a$a;

    .line 58
    new-instance v0, Lgy$a$a;

    const-string v1, "BACK_REFERENCE"

    invoke-direct {v0, v1, v3}, Lgy$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgy$a$a;->BACK_REFERENCE:Lgy$a$a;

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Lgy$a$a;

    sget-object v1, Lgy$a$a;->MANAGED_REFERENCE:Lgy$a$a;

    aput-object v1, v0, v2

    sget-object v1, Lgy$a$a;->BACK_REFERENCE:Lgy$a$a;

    aput-object v1, v0, v3

    sput-object v0, Lgy$a$a;->$VALUES:[Lgy$a$a;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgy$a$a;
    .registers 2
    .parameter

    .prologue
    .line 42
    const-class v0, Lgy$a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgy$a$a;

    return-object p0
.end method

.method public static values()[Lgy$a$a;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lgy$a$a;->$VALUES:[Lgy$a$a;

    invoke-virtual {v0}, [Lgy$a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgy$a$a;

    return-object v0
.end method
