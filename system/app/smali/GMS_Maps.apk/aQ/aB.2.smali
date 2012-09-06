.class final enum LaQ/aB;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:LaQ/aB;

.field public static final enum b:LaQ/aB;

.field public static final enum c:LaQ/aB;

.field private static final synthetic d:[LaQ/aB;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, LaQ/aB;

    const-string v1, "EndofQuestion"

    invoke-direct {v0, v1, v2}, LaQ/aB;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaQ/aB;->a:LaQ/aB;

    .line 66
    new-instance v0, LaQ/aB;

    const-string v1, "FollowupQuestion"

    invoke-direct {v0, v1, v3}, LaQ/aB;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaQ/aB;->b:LaQ/aB;

    .line 67
    new-instance v0, LaQ/aB;

    const-string v1, "AltPhonesDialog"

    invoke-direct {v0, v1, v4}, LaQ/aB;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaQ/aB;->c:LaQ/aB;

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [LaQ/aB;

    sget-object v1, LaQ/aB;->a:LaQ/aB;

    aput-object v1, v0, v2

    sget-object v1, LaQ/aB;->b:LaQ/aB;

    aput-object v1, v0, v3

    sget-object v1, LaQ/aB;->c:LaQ/aB;

    aput-object v1, v0, v4

    sput-object v0, LaQ/aB;->d:[LaQ/aB;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LaQ/aB;
    .registers 2
    .parameter

    .prologue
    .line 64
    const-class v0, LaQ/aB;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LaQ/aB;

    return-object v0
.end method

.method public static values()[LaQ/aB;
    .registers 1

    .prologue
    .line 64
    sget-object v0, LaQ/aB;->d:[LaQ/aB;

    invoke-virtual {v0}, [LaQ/aB;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LaQ/aB;

    return-object v0
.end method
