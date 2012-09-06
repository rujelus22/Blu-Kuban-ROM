.class final enum Laqz;
.super Ljava/lang/Enum;
.source "InjectionPoint.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Laqz;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Laqz;

.field private static final synthetic a:[Laqz;

.field public static final enum b:Laqz;

.field public static final enum c:Laqz;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 521
    new-instance v0, Laqz;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v2}, Laqz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laqz;->a:Laqz;

    .line 522
    new-instance v0, Laqz;

    const-string v1, "MIDDLE"

    invoke-direct {v0, v1, v3}, Laqz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laqz;->b:Laqz;

    .line 523
    new-instance v0, Laqz;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v4}, Laqz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laqz;->c:Laqz;

    .line 520
    const/4 v0, 0x3

    new-array v0, v0, [Laqz;

    sget-object v1, Laqz;->a:Laqz;

    aput-object v1, v0, v2

    sget-object v1, Laqz;->b:Laqz;

    aput-object v1, v0, v3

    sget-object v1, Laqz;->c:Laqz;

    aput-object v1, v0, v4

    sput-object v0, Laqz;->a:[Laqz;

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
    .line 520
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Laqz;
    .registers 2
    .parameter

    .prologue
    .line 520
    const-class v0, Laqz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Laqz;

    return-object v0
.end method

.method public static values()[Laqz;
    .registers 1

    .prologue
    .line 520
    sget-object v0, Laqz;->a:[Laqz;

    invoke-virtual {v0}, [Laqz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laqz;

    return-object v0
.end method
