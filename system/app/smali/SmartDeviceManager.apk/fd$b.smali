.class public final enum Lfd$b;
.super Ljava/lang/Enum;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4031
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lfd$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfd$b;

.field public static final enum BIG_DECIMAL:Lfd$b;

.field public static final enum BIG_INTEGER:Lfd$b;

.field public static final enum DOUBLE:Lfd$b;

.field public static final enum FLOAT:Lfd$b;

.field public static final enum INT:Lfd$b;

.field public static final enum LONG:Lfd$b;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    new-instance v0, Lfd$b;

    const-string v1, "INT"

    invoke-direct {v0, v1, v3}, Lfd$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfd$b;->INT:Lfd$b;

    new-instance v0, Lfd$b;

    const-string v1, "LONG"

    invoke-direct {v0, v1, v4}, Lfd$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfd$b;->LONG:Lfd$b;

    new-instance v0, Lfd$b;

    const-string v1, "BIG_INTEGER"

    invoke-direct {v0, v1, v5}, Lfd$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfd$b;->BIG_INTEGER:Lfd$b;

    new-instance v0, Lfd$b;

    const-string v1, "FLOAT"

    invoke-direct {v0, v1, v6}, Lfd$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfd$b;->FLOAT:Lfd$b;

    new-instance v0, Lfd$b;

    const-string v1, "DOUBLE"

    invoke-direct {v0, v1, v7}, Lfd$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfd$b;->DOUBLE:Lfd$b;

    new-instance v0, Lfd$b;

    const-string v1, "BIG_DECIMAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lfd$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfd$b;->BIG_DECIMAL:Lfd$b;

    .line 44
    const/4 v0, 0x6

    new-array v0, v0, [Lfd$b;

    sget-object v1, Lfd$b;->INT:Lfd$b;

    aput-object v1, v0, v3

    sget-object v1, Lfd$b;->LONG:Lfd$b;

    aput-object v1, v0, v4

    sget-object v1, Lfd$b;->BIG_INTEGER:Lfd$b;

    aput-object v1, v0, v5

    sget-object v1, Lfd$b;->FLOAT:Lfd$b;

    aput-object v1, v0, v6

    sget-object v1, Lfd$b;->DOUBLE:Lfd$b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lfd$b;->BIG_DECIMAL:Lfd$b;

    aput-object v2, v0, v1

    sput-object v0, Lfd$b;->$VALUES:[Lfd$b;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfd$b;
    .registers 2
    .parameter

    .prologue
    .line 44
    const-class v0, Lfd$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfd$b;

    return-object p0
.end method

.method public static values()[Lfd$b;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lfd$b;->$VALUES:[Lfd$b;

    invoke-virtual {v0}, [Lfd$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfd$b;

    return-object v0
.end method
