.class public final enum Lu/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lu/g;

.field public static final enum b:Lu/g;

.field public static final enum c:Lu/g;

.field private static final synthetic d:[Lu/g;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lu/g;

    const-string v1, "FADE_IN"

    invoke-direct {v0, v1, v2}, Lu/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/g;->a:Lu/g;

    new-instance v0, Lu/g;

    const-string v1, "FADE_OUT"

    invoke-direct {v0, v1, v3}, Lu/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/g;->b:Lu/g;

    new-instance v0, Lu/g;

    const-string v1, "FADE_BETWEEN"

    invoke-direct {v0, v1, v4}, Lu/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/g;->c:Lu/g;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Lu/g;

    sget-object v1, Lu/g;->a:Lu/g;

    aput-object v1, v0, v2

    sget-object v1, Lu/g;->b:Lu/g;

    aput-object v1, v0, v3

    sget-object v1, Lu/g;->c:Lu/g;

    aput-object v1, v0, v4

    sput-object v0, Lu/g;->d:[Lu/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/g;
    .registers 2
    .parameter

    .prologue
    .line 14
    const-class v0, Lu/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/g;

    return-object v0
.end method

.method public static values()[Lu/g;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lu/g;->d:[Lu/g;

    invoke-virtual {v0}, [Lu/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/g;

    return-object v0
.end method
