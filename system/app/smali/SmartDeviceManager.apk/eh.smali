.class public final enum Leh;
.super Ljava/lang/Enum;
.source "a"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Leh;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Leh;

.field public static final enum b:Leh;

.field private static final synthetic c:[Leh;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Leh;

    const-string v1, "TEXT_RESOURCE"

    invoke-direct {v0, v1, v2}, Leh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leh;->a:Leh;

    .line 5
    new-instance v0, Leh;

    const-string v1, "PNG_RESOURCE"

    invoke-direct {v0, v1, v3}, Leh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leh;->b:Leh;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Leh;

    sget-object v1, Leh;->a:Leh;

    aput-object v1, v0, v2

    sget-object v1, Leh;->b:Leh;

    aput-object v1, v0, v3

    sput-object v0, Leh;->c:[Leh;

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

.method public static valueOf(Ljava/lang/String;)Leh;
    .registers 2
    .parameter

    .prologue
    .line 3
    const-class v0, Leh;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Leh;

    return-object p0
.end method

.method public static values()[Leh;
    .registers 1

    .prologue
    .line 3
    sget-object v0, Leh;->c:[Leh;

    invoke-virtual {v0}, [Leh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leh;

    return-object v0
.end method
