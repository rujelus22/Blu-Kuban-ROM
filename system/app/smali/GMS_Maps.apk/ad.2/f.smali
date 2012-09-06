.class public final enum Lad/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lad/f;

.field public static final enum b:Lad/f;

.field public static final enum c:Lad/f;

.field public static final enum d:Lad/f;

.field private static final synthetic e:[Lad/f;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 309
    new-instance v0, Lad/f;

    const-string v1, "GREEN"

    invoke-direct {v0, v1, v2}, Lad/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lad/f;->a:Lad/f;

    new-instance v0, Lad/f;

    const-string v1, "YELLOW"

    invoke-direct {v0, v1, v3}, Lad/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lad/f;->b:Lad/f;

    new-instance v0, Lad/f;

    const-string v1, "RED"

    invoke-direct {v0, v1, v4}, Lad/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lad/f;->c:Lad/f;

    new-instance v0, Lad/f;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lad/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lad/f;->d:Lad/f;

    .line 308
    const/4 v0, 0x4

    new-array v0, v0, [Lad/f;

    sget-object v1, Lad/f;->a:Lad/f;

    aput-object v1, v0, v2

    sget-object v1, Lad/f;->b:Lad/f;

    aput-object v1, v0, v3

    sget-object v1, Lad/f;->c:Lad/f;

    aput-object v1, v0, v4

    sget-object v1, Lad/f;->d:Lad/f;

    aput-object v1, v0, v5

    sput-object v0, Lad/f;->e:[Lad/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 308
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(II)Lad/f;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 329
    if-nez p1, :cond_5

    .line 330
    sget-object v0, Lad/f;->d:Lad/f;

    .line 338
    :goto_4
    return-object v0

    .line 332
    :cond_5
    mul-int/lit8 v0, p0, 0x64

    div-int/2addr v0, p1

    .line 333
    sget-object v1, Lad/f;->b:Lad/f;

    invoke-virtual {v1}, Lad/f;->a()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 334
    sget-object v0, Lad/f;->a:Lad/f;

    goto :goto_4

    .line 335
    :cond_13
    sget-object v1, Lad/f;->c:Lad/f;

    invoke-virtual {v1}, Lad/f;->a()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 336
    sget-object v0, Lad/f;->b:Lad/f;

    goto :goto_4

    .line 338
    :cond_1e
    sget-object v0, Lad/f;->c:Lad/f;

    goto :goto_4
.end method

.method public static valueOf(Ljava/lang/String;)Lad/f;
    .registers 2
    .parameter

    .prologue
    .line 308
    const-class v0, Lad/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lad/f;

    return-object v0
.end method

.method public static values()[Lad/f;
    .registers 1

    .prologue
    .line 308
    sget-object v0, Lad/f;->e:[Lad/f;

    invoke-virtual {v0}, [Lad/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lad/f;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 316
    sget-object v0, Lad/c;->a:[I

    invoke-virtual {p0}, Lad/f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 322
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 318
    :pswitch_d
    const/16 v0, 0x14

    goto :goto_c

    .line 320
    :pswitch_10
    const/16 v0, 0x28

    goto :goto_c

    .line 316
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_d
        :pswitch_10
    .end packed-switch
.end method
