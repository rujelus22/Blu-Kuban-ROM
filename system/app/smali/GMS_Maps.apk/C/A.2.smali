.class public final enum LC/A;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:LC/A;

.field public static final enum b:LC/A;

.field public static final enum c:LC/A;

.field private static final synthetic d:[LC/A;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, LC/A;

    const-string v1, "LOCATION_CHANGED"

    invoke-direct {v0, v1, v2}, LC/A;-><init>(Ljava/lang/String;I)V

    sput-object v0, LC/A;->a:LC/A;

    .line 21
    new-instance v0, LC/A;

    const-string v1, "OFF_ROUTE"

    invoke-direct {v0, v1, v3}, LC/A;-><init>(Ljava/lang/String;I)V

    sput-object v0, LC/A;->b:LC/A;

    .line 22
    new-instance v0, LC/A;

    const-string v1, "LOCATION_LOST"

    invoke-direct {v0, v1, v4}, LC/A;-><init>(Ljava/lang/String;I)V

    sput-object v0, LC/A;->c:LC/A;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [LC/A;

    sget-object v1, LC/A;->a:LC/A;

    aput-object v1, v0, v2

    sget-object v1, LC/A;->b:LC/A;

    aput-object v1, v0, v3

    sget-object v1, LC/A;->c:LC/A;

    aput-object v1, v0, v4

    sput-object v0, LC/A;->d:[LC/A;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LC/A;
    .registers 2
    .parameter

    .prologue
    .line 19
    const-class v0, LC/A;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LC/A;

    return-object v0
.end method

.method public static values()[LC/A;
    .registers 1

    .prologue
    .line 19
    sget-object v0, LC/A;->d:[LC/A;

    invoke-virtual {v0}, [LC/A;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LC/A;

    return-object v0
.end method
