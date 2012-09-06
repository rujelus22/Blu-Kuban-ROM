.class public final enum LT/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:LT/g;

.field public static final enum b:LT/g;

.field private static final synthetic c:[LT/g;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, LT/g;

    const-string v1, "AUTO_SCALE_ENABLED"

    invoke-direct {v0, v1, v2}, LT/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, LT/g;->a:LT/g;

    .line 24
    new-instance v0, LT/g;

    const-string v1, "AUTO_SCALE_DISABLED"

    invoke-direct {v0, v1, v3}, LT/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, LT/g;->b:LT/g;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [LT/g;

    sget-object v1, LT/g;->a:LT/g;

    aput-object v1, v0, v2

    sget-object v1, LT/g;->b:LT/g;

    aput-object v1, v0, v3

    sput-object v0, LT/g;->c:[LT/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LT/g;
    .registers 2
    .parameter

    .prologue
    .line 22
    const-class v0, LT/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LT/g;

    return-object v0
.end method

.method public static values()[LT/g;
    .registers 1

    .prologue
    .line 22
    sget-object v0, LT/g;->c:[LT/g;

    invoke-virtual {v0}, [LT/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LT/g;

    return-object v0
.end method
