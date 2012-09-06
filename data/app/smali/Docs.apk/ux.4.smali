.class public final enum Lux;
.super Ljava/lang/Enum;
.source "AllDiscussionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lux;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lux;

.field private static final synthetic a:[Lux;

.field public static final enum b:Lux;

.field public static final enum c:Lux;

.field public static final enum d:Lux;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lux;

    const-string v1, "NOT_INITIALIZED"

    invoke-direct {v0, v1, v2}, Lux;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lux;->a:Lux;

    .line 48
    new-instance v0, Lux;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v3}, Lux;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lux;->b:Lux;

    .line 49
    new-instance v0, Lux;

    const-string v1, "NO_COMMENTS"

    invoke-direct {v0, v1, v4}, Lux;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lux;->c:Lux;

    .line 50
    new-instance v0, Lux;

    const-string v1, "LIST"

    invoke-direct {v0, v1, v5}, Lux;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lux;->d:Lux;

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Lux;

    sget-object v1, Lux;->a:Lux;

    aput-object v1, v0, v2

    sget-object v1, Lux;->b:Lux;

    aput-object v1, v0, v3

    sget-object v1, Lux;->c:Lux;

    aput-object v1, v0, v4

    sget-object v1, Lux;->d:Lux;

    aput-object v1, v0, v5

    sput-object v0, Lux;->a:[Lux;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lux;
    .registers 2
    .parameter

    .prologue
    .line 46
    const-class v0, Lux;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lux;

    return-object v0
.end method

.method public static values()[Lux;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lux;->a:[Lux;

    invoke-virtual {v0}, [Lux;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lux;

    return-object v0
.end method
