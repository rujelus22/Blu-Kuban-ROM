.class public final enum Lau/f;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lau/f;

.field public static final enum b:Lau/f;

.field public static final enum c:Lau/f;

.field public static final enum d:Lau/f;

.field private static final synthetic e:[Lau/f;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lau/f;

    const-string v1, "GREEN"

    invoke-direct {v0, v1, v2}, Lau/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lau/f;->a:Lau/f;

    new-instance v0, Lau/f;

    const-string v1, "YELLOW"

    invoke-direct {v0, v1, v3}, Lau/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lau/f;->b:Lau/f;

    new-instance v0, Lau/f;

    const-string v1, "RED"

    invoke-direct {v0, v1, v4}, Lau/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lau/f;->c:Lau/f;

    new-instance v0, Lau/f;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lau/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lau/f;->d:Lau/f;

    const/4 v0, 0x4

    new-array v0, v0, [Lau/f;

    sget-object v1, Lau/f;->a:Lau/f;

    aput-object v1, v0, v2

    sget-object v1, Lau/f;->b:Lau/f;

    aput-object v1, v0, v3

    sget-object v1, Lau/f;->c:Lau/f;

    aput-object v1, v0, v4

    sget-object v1, Lau/f;->d:Lau/f;

    aput-object v1, v0, v5

    sput-object v0, Lau/f;->e:[Lau/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(II)Lau/f;
    .registers 4

    if-nez p1, :cond_5

    sget-object v0, Lau/f;->d:Lau/f;

    :goto_4
    return-object v0

    :cond_5
    mul-int/lit8 v0, p0, 0x64

    div-int/2addr v0, p1

    sget-object v1, Lau/f;->b:Lau/f;

    invoke-virtual {v1}, Lau/f;->a()I

    move-result v1

    if-ge v0, v1, :cond_13

    sget-object v0, Lau/f;->a:Lau/f;

    goto :goto_4

    :cond_13
    sget-object v1, Lau/f;->c:Lau/f;

    invoke-virtual {v1}, Lau/f;->a()I

    move-result v1

    if-ge v0, v1, :cond_1e

    sget-object v0, Lau/f;->b:Lau/f;

    goto :goto_4

    :cond_1e
    sget-object v0, Lau/f;->c:Lau/f;

    goto :goto_4
.end method

.method public static valueOf(Ljava/lang/String;)Lau/f;
    .registers 2

    const-class v0, Lau/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lau/f;

    return-object v0
.end method

.method public static values()[Lau/f;
    .registers 1

    sget-object v0, Lau/f;->e:[Lau/f;

    invoke-virtual {v0}, [Lau/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lau/f;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 3

    sget-object v0, Lau/c;->a:[I

    invoke-virtual {p0}, Lau/f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    const/4 v0, 0x0

    :goto_c
    return v0

    :pswitch_d
    const/16 v0, 0x14

    goto :goto_c

    :pswitch_10
    const/16 v0, 0x28

    goto :goto_c

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_d
        :pswitch_10
    .end packed-switch
.end method
