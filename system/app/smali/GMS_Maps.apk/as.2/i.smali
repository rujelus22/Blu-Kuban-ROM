.class public final enum LaS/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:LaS/i;

.field public static final enum b:LaS/i;

.field private static final synthetic c:[LaS/i;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 172
    new-instance v0, LaS/i;

    const-string v1, "COLUMN"

    invoke-direct {v0, v1, v2}, LaS/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaS/i;->a:LaS/i;

    .line 173
    new-instance v0, LaS/i;

    const-string v1, "ROW"

    invoke-direct {v0, v1, v3}, LaS/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaS/i;->b:LaS/i;

    .line 171
    const/4 v0, 0x2

    new-array v0, v0, [LaS/i;

    sget-object v1, LaS/i;->a:LaS/i;

    aput-object v1, v0, v2

    sget-object v1, LaS/i;->b:LaS/i;

    aput-object v1, v0, v3

    sput-object v0, LaS/i;->c:[LaS/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LaS/i;
    .registers 2
    .parameter

    .prologue
    .line 171
    const-class v0, LaS/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LaS/i;

    return-object v0
.end method

.method public static values()[LaS/i;
    .registers 1

    .prologue
    .line 171
    sget-object v0, LaS/i;->c:[LaS/i;

    invoke-virtual {v0}, [LaS/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LaS/i;

    return-object v0
.end method
