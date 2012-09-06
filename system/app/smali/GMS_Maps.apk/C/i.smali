.class public final enum LC/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:LC/i;

.field public static final enum b:LC/i;

.field public static final enum c:LC/i;

.field private static final synthetic d:[LC/i;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    new-instance v0, LC/i;

    const-string v1, "FORWARD"

    invoke-direct {v0, v1, v2}, LC/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LC/i;->a:LC/i;

    .line 93
    new-instance v0, LC/i;

    const-string v1, "NOT_SURE"

    invoke-direct {v0, v1, v3}, LC/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LC/i;->b:LC/i;

    .line 98
    new-instance v0, LC/i;

    const-string v1, "BACKWARD"

    invoke-direct {v0, v1, v4}, LC/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LC/i;->c:LC/i;

    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [LC/i;

    sget-object v1, LC/i;->a:LC/i;

    aput-object v1, v0, v2

    sget-object v1, LC/i;->b:LC/i;

    aput-object v1, v0, v3

    sget-object v1, LC/i;->c:LC/i;

    aput-object v1, v0, v4

    sput-object v0, LC/i;->d:[LC/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LC/i;
    .registers 2
    .parameter

    .prologue
    .line 84
    const-class v0, LC/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LC/i;

    return-object v0
.end method

.method public static values()[LC/i;
    .registers 1

    .prologue
    .line 84
    sget-object v0, LC/i;->d:[LC/i;

    invoke-virtual {v0}, [LC/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LC/i;

    return-object v0
.end method
