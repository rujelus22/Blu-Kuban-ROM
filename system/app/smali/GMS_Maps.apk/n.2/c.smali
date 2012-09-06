.class public final enum LN/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:LN/c;

.field public static final enum b:LN/c;

.field public static final enum c:LN/c;

.field private static final synthetic d:[LN/c;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    new-instance v0, LN/c;

    const-string v1, "POI"

    invoke-direct {v0, v1, v2}, LN/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LN/c;->a:LN/c;

    .line 69
    new-instance v0, LN/c;

    const-string v1, "PLACEMARK"

    invoke-direct {v0, v1, v3}, LN/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LN/c;->b:LN/c;

    .line 70
    new-instance v0, LN/c;

    const-string v1, "MY_LOCATION"

    invoke-direct {v0, v1, v4}, LN/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LN/c;->c:LN/c;

    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [LN/c;

    sget-object v1, LN/c;->a:LN/c;

    aput-object v1, v0, v2

    sget-object v1, LN/c;->b:LN/c;

    aput-object v1, v0, v3

    sget-object v1, LN/c;->c:LN/c;

    aput-object v1, v0, v4

    sput-object v0, LN/c;->d:[LN/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LN/c;
    .registers 2
    .parameter

    .prologue
    .line 67
    const-class v0, LN/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LN/c;

    return-object v0
.end method

.method public static values()[LN/c;
    .registers 1

    .prologue
    .line 67
    sget-object v0, LN/c;->d:[LN/c;

    invoke-virtual {v0}, [LN/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LN/c;

    return-object v0
.end method
