.class public final enum Leg;
.super Ljava/lang/Enum;
.source "a"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Leg;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Leg;

.field public static final enum b:Leg;

.field private static final synthetic c:[Leg;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Leg;

    const-string v1, "SCREEN_PIXEL_DENSITY"

    invoke-direct {v0, v1, v2}, Leg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leg;->a:Leg;

    .line 5
    new-instance v0, Leg;

    const-string v1, "SCREEN_SIZE"

    invoke-direct {v0, v1, v3}, Leg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leg;->b:Leg;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Leg;

    sget-object v1, Leg;->a:Leg;

    aput-object v1, v0, v2

    sget-object v1, Leg;->b:Leg;

    aput-object v1, v0, v3

    sput-object v0, Leg;->c:[Leg;

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

.method public static valueOf(Ljava/lang/String;)Leg;
    .registers 2
    .parameter

    .prologue
    .line 3
    const-class v0, Leg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Leg;

    return-object p0
.end method

.method public static values()[Leg;
    .registers 1

    .prologue
    .line 3
    sget-object v0, Leg;->c:[Leg;

    invoke-virtual {v0}, [Leg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leg;

    return-object v0
.end method
