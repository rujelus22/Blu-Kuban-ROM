.class public final enum Lcom/google/android/maps/driveabout/vector/aj;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/maps/driveabout/vector/aj;

.field public static final enum b:Lcom/google/android/maps/driveabout/vector/aj;

.field public static final enum c:Lcom/google/android/maps/driveabout/vector/aj;

.field private static final synthetic d:[Lcom/google/android/maps/driveabout/vector/aj;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/google/android/maps/driveabout/vector/aj;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/aj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/aj;->a:Lcom/google/android/maps/driveabout/vector/aj;

    .line 53
    new-instance v0, Lcom/google/android/maps/driveabout/vector/aj;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/aj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/aj;->b:Lcom/google/android/maps/driveabout/vector/aj;

    .line 54
    new-instance v0, Lcom/google/android/maps/driveabout/vector/aj;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Lcom/google/android/maps/driveabout/vector/aj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/aj;->c:Lcom/google/android/maps/driveabout/vector/aj;

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/aj;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/aj;->a:Lcom/google/android/maps/driveabout/vector/aj;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/maps/driveabout/vector/aj;->b:Lcom/google/android/maps/driveabout/vector/aj;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/maps/driveabout/vector/aj;->c:Lcom/google/android/maps/driveabout/vector/aj;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/maps/driveabout/vector/aj;->d:[Lcom/google/android/maps/driveabout/vector/aj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lcom/google/android/maps/driveabout/vector/aj;
    .registers 3
    .parameter

    .prologue
    .line 57
    packed-switch p0, :pswitch_data_14

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown justification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :pswitch_b
    sget-object v0, Lcom/google/android/maps/driveabout/vector/aj;->a:Lcom/google/android/maps/driveabout/vector/aj;

    .line 60
    :goto_d
    return-object v0

    .line 59
    :pswitch_e
    sget-object v0, Lcom/google/android/maps/driveabout/vector/aj;->b:Lcom/google/android/maps/driveabout/vector/aj;

    goto :goto_d

    .line 60
    :pswitch_11
    sget-object v0, Lcom/google/android/maps/driveabout/vector/aj;->c:Lcom/google/android/maps/driveabout/vector/aj;

    goto :goto_d

    .line 57
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_b
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/maps/driveabout/vector/aj;
    .registers 2
    .parameter

    .prologue
    .line 51
    const-class v0, Lcom/google/android/maps/driveabout/vector/aj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aj;

    return-object v0
.end method

.method public static values()[Lcom/google/android/maps/driveabout/vector/aj;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/android/maps/driveabout/vector/aj;->d:[Lcom/google/android/maps/driveabout/vector/aj;

    invoke-virtual {v0}, [Lcom/google/android/maps/driveabout/vector/aj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/vector/aj;

    return-object v0
.end method
