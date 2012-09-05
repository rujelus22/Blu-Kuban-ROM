.class public final enum Lbe;
.super Ljava/lang/Enum;
.source "a"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbe;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbe;

.field public static final enum b:Lbe;

.field public static final enum c:Lbe;

.field private static final synthetic d:[Lbe;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lbe;

    const-string v1, "INCOMING"

    invoke-direct {v0, v1, v2}, Lbe;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbe;->a:Lbe;

    .line 5
    new-instance v0, Lbe;

    const-string v1, "OUTGOING"

    invoke-direct {v0, v1, v3}, Lbe;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbe;->b:Lbe;

    .line 6
    new-instance v0, Lbe;

    const-string v1, "EITHER"

    invoke-direct {v0, v1, v4}, Lbe;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbe;->c:Lbe;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lbe;

    sget-object v1, Lbe;->a:Lbe;

    aput-object v1, v0, v2

    sget-object v1, Lbe;->b:Lbe;

    aput-object v1, v0, v3

    sget-object v1, Lbe;->c:Lbe;

    aput-object v1, v0, v4

    sput-object v0, Lbe;->d:[Lbe;

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

.method public static valueOf(Ljava/lang/String;)Lbe;
    .registers 2
    .parameter

    .prologue
    .line 3
    const-class v0, Lbe;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbe;

    return-object p0
.end method

.method public static values()[Lbe;
    .registers 1

    .prologue
    .line 3
    sget-object v0, Lbe;->d:[Lbe;

    invoke-virtual {v0}, [Lbe;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbe;

    return-object v0
.end method
