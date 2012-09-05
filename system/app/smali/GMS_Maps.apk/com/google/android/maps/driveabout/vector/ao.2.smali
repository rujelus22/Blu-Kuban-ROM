.class public final enum Lcom/google/android/maps/driveabout/vector/ao;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/android/maps/driveabout/vector/ao;

.field public static final enum b:Lcom/google/android/maps/driveabout/vector/ao;

.field public static final enum c:Lcom/google/android/maps/driveabout/vector/ao;

.field private static final synthetic d:[Lcom/google/android/maps/driveabout/vector/ao;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/vector/ao;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/ao;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/ao;->a:Lcom/google/android/maps/driveabout/vector/ao;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/ao;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/ao;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/ao;->b:Lcom/google/android/maps/driveabout/vector/ao;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/ao;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v4}, Lcom/google/android/maps/driveabout/vector/ao;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/ao;->c:Lcom/google/android/maps/driveabout/vector/ao;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/ao;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/ao;->a:Lcom/google/android/maps/driveabout/vector/ao;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/maps/driveabout/vector/ao;->b:Lcom/google/android/maps/driveabout/vector/ao;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/maps/driveabout/vector/ao;->c:Lcom/google/android/maps/driveabout/vector/ao;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/maps/driveabout/vector/ao;->d:[Lcom/google/android/maps/driveabout/vector/ao;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lcom/google/android/maps/driveabout/vector/ao;
    .registers 3

    packed-switch p0, :pswitch_data_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown alignment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_b
    sget-object v0, Lcom/google/android/maps/driveabout/vector/ao;->a:Lcom/google/android/maps/driveabout/vector/ao;

    :goto_d
    return-object v0

    :pswitch_e
    sget-object v0, Lcom/google/android/maps/driveabout/vector/ao;->b:Lcom/google/android/maps/driveabout/vector/ao;

    goto :goto_d

    :pswitch_11
    sget-object v0, Lcom/google/android/maps/driveabout/vector/ao;->c:Lcom/google/android/maps/driveabout/vector/ao;

    goto :goto_d

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_b
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/maps/driveabout/vector/ao;
    .registers 2

    const-class v0, Lcom/google/android/maps/driveabout/vector/ao;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ao;

    return-object v0
.end method

.method public static values()[Lcom/google/android/maps/driveabout/vector/ao;
    .registers 1

    sget-object v0, Lcom/google/android/maps/driveabout/vector/ao;->d:[Lcom/google/android/maps/driveabout/vector/ao;

    invoke-virtual {v0}, [Lcom/google/android/maps/driveabout/vector/ao;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/vector/ao;

    return-object v0
.end method
