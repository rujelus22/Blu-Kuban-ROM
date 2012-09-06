.class final enum LaB/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:LaB/c;

.field public static final enum b:LaB/c;

.field private static final synthetic c:[LaB/c;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 341
    new-instance v0, LaB/c;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v2}, LaB/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaB/c;->a:LaB/c;

    .line 347
    new-instance v0, LaB/c;

    const-string v1, "REMOVE"

    invoke-direct {v0, v1, v3}, LaB/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, LaB/c;->b:LaB/c;

    .line 335
    const/4 v0, 0x2

    new-array v0, v0, [LaB/c;

    sget-object v1, LaB/c;->a:LaB/c;

    aput-object v1, v0, v2

    sget-object v1, LaB/c;->b:LaB/c;

    aput-object v1, v0, v3

    sput-object v0, LaB/c;->c:[LaB/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 335
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LaB/c;
    .registers 2
    .parameter

    .prologue
    .line 335
    const-class v0, LaB/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LaB/c;

    return-object v0
.end method

.method public static values()[LaB/c;
    .registers 1

    .prologue
    .line 335
    sget-object v0, LaB/c;->c:[LaB/c;

    invoke-virtual {v0}, [LaB/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LaB/c;

    return-object v0
.end method
