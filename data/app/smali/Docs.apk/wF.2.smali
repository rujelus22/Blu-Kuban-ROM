.class public final enum LwF;
.super Ljava/lang/Enum;
.source "BulletType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LwF;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LwF;

.field private static final synthetic a:[LwF;

.field public static final enum b:LwF;

.field public static final enum c:LwF;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, LwF;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, LwF;-><init>(Ljava/lang/String;I)V

    sput-object v0, LwF;->a:LwF;

    .line 14
    new-instance v0, LwF;

    const-string v1, "BULLET"

    invoke-direct {v0, v1, v3}, LwF;-><init>(Ljava/lang/String;I)V

    sput-object v0, LwF;->b:LwF;

    .line 15
    new-instance v0, LwF;

    const-string v1, "NUMBER"

    invoke-direct {v0, v1, v4}, LwF;-><init>(Ljava/lang/String;I)V

    sput-object v0, LwF;->c:LwF;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [LwF;

    sget-object v1, LwF;->a:LwF;

    aput-object v1, v0, v2

    sget-object v1, LwF;->b:LwF;

    aput-object v1, v0, v3

    sget-object v1, LwF;->c:LwF;

    aput-object v1, v0, v4

    sput-object v0, LwF;->a:[LwF;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)LwF;
    .registers 2
    .parameter

    .prologue
    .line 18
    invoke-static {}, LwF;->values()[LwF;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LwF;
    .registers 2
    .parameter

    .prologue
    .line 12
    const-class v0, LwF;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LwF;

    return-object v0
.end method

.method public static values()[LwF;
    .registers 1

    .prologue
    .line 12
    sget-object v0, LwF;->a:[LwF;

    invoke-virtual {v0}, [LwF;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LwF;

    return-object v0
.end method
