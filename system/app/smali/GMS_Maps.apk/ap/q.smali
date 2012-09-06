.class public final enum LaP/q;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:LaP/q;

.field public static final enum b:LaP/q;

.field public static final enum c:LaP/q;

.field public static final enum d:LaP/q;

.field public static final enum e:LaP/q;

.field private static final synthetic f:[LaP/q;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, LaP/q;

    const-string v1, "FIRST_WALK"

    invoke-direct {v0, v1, v2}, LaP/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaP/q;->a:LaP/q;

    .line 48
    new-instance v0, LaP/q;

    const-string v1, "BOARD"

    invoke-direct {v0, v1, v3}, LaP/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaP/q;->b:LaP/q;

    .line 49
    new-instance v0, LaP/q;

    const-string v1, "STAY"

    invoke-direct {v0, v1, v4}, LaP/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaP/q;->c:LaP/q;

    .line 50
    new-instance v0, LaP/q;

    const-string v1, "GET_OFF"

    invoke-direct {v0, v1, v5}, LaP/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaP/q;->d:LaP/q;

    .line 51
    new-instance v0, LaP/q;

    const-string v1, "DESTINATION"

    invoke-direct {v0, v1, v6}, LaP/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaP/q;->e:LaP/q;

    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [LaP/q;

    sget-object v1, LaP/q;->a:LaP/q;

    aput-object v1, v0, v2

    sget-object v1, LaP/q;->b:LaP/q;

    aput-object v1, v0, v3

    sget-object v1, LaP/q;->c:LaP/q;

    aput-object v1, v0, v4

    sget-object v1, LaP/q;->d:LaP/q;

    aput-object v1, v0, v5

    sget-object v1, LaP/q;->e:LaP/q;

    aput-object v1, v0, v6

    sput-object v0, LaP/q;->f:[LaP/q;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LaP/q;
    .registers 2
    .parameter

    .prologue
    .line 46
    const-class v0, LaP/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LaP/q;

    return-object v0
.end method

.method public static values()[LaP/q;
    .registers 1

    .prologue
    .line 46
    sget-object v0, LaP/q;->f:[LaP/q;

    invoke-virtual {v0}, [LaP/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LaP/q;

    return-object v0
.end method
