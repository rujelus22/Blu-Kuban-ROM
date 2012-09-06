.class public final enum Lcom/google/android/maps/driveabout/vector/am;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/maps/driveabout/vector/am;

.field public static final enum b:Lcom/google/android/maps/driveabout/vector/am;

.field public static final enum c:Lcom/google/android/maps/driveabout/vector/am;

.field private static final synthetic d:[Lcom/google/android/maps/driveabout/vector/am;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/google/android/maps/driveabout/vector/am;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/am;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/am;->a:Lcom/google/android/maps/driveabout/vector/am;

    .line 37
    new-instance v0, Lcom/google/android/maps/driveabout/vector/am;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/am;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/am;->b:Lcom/google/android/maps/driveabout/vector/am;

    .line 38
    new-instance v0, Lcom/google/android/maps/driveabout/vector/am;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v4}, Lcom/google/android/maps/driveabout/vector/am;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/am;->c:Lcom/google/android/maps/driveabout/vector/am;

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/am;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/am;->a:Lcom/google/android/maps/driveabout/vector/am;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/maps/driveabout/vector/am;->b:Lcom/google/android/maps/driveabout/vector/am;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/maps/driveabout/vector/am;->c:Lcom/google/android/maps/driveabout/vector/am;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/maps/driveabout/vector/am;->d:[Lcom/google/android/maps/driveabout/vector/am;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lcom/google/android/maps/driveabout/vector/am;
    .registers 3
    .parameter

    .prologue
    .line 41
    packed-switch p0, :pswitch_data_14

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown alignment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :pswitch_b
    sget-object v0, Lcom/google/android/maps/driveabout/vector/am;->a:Lcom/google/android/maps/driveabout/vector/am;

    .line 44
    :goto_d
    return-object v0

    .line 43
    :pswitch_e
    sget-object v0, Lcom/google/android/maps/driveabout/vector/am;->b:Lcom/google/android/maps/driveabout/vector/am;

    goto :goto_d

    .line 44
    :pswitch_11
    sget-object v0, Lcom/google/android/maps/driveabout/vector/am;->c:Lcom/google/android/maps/driveabout/vector/am;

    goto :goto_d

    .line 41
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_b
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/maps/driveabout/vector/am;
    .registers 2
    .parameter

    .prologue
    .line 35
    const-class v0, Lcom/google/android/maps/driveabout/vector/am;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/am;

    return-object v0
.end method

.method public static values()[Lcom/google/android/maps/driveabout/vector/am;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/maps/driveabout/vector/am;->d:[Lcom/google/android/maps/driveabout/vector/am;

    invoke-virtual {v0}, [Lcom/google/android/maps/driveabout/vector/am;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/vector/am;

    return-object v0
.end method
