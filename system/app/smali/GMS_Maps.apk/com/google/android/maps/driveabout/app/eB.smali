.class public Lcom/google/android/maps/driveabout/app/eB;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/android/maps/driveabout/app/eF;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_f

    new-instance v0, Lcom/google/android/maps/driveabout/app/eE;

    invoke-direct {v0, v2}, Lcom/google/android/maps/driveabout/app/eE;-><init>(Lcom/google/android/maps/driveabout/app/eC;)V

    sput-object v0, Lcom/google/android/maps/driveabout/app/eB;->a:Lcom/google/android/maps/driveabout/app/eF;

    :goto_e
    return-void

    :cond_f
    new-instance v0, Lcom/google/android/maps/driveabout/app/eD;

    invoke-direct {v0, v2}, Lcom/google/android/maps/driveabout/app/eD;-><init>(Lcom/google/android/maps/driveabout/app/eC;)V

    sput-object v0, Lcom/google/android/maps/driveabout/app/eB;->a:Lcom/google/android/maps/driveabout/app/eF;

    goto :goto_e
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/res/Configuration;)Z
    .registers 3

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/eB;->c(Landroid/content/res/Configuration;)I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static b(Landroid/content/res/Configuration;)Z
    .registers 3

    invoke-static {p0}, Lcom/google/android/maps/driveabout/app/eB;->c(Landroid/content/res/Configuration;)I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static c(Landroid/content/res/Configuration;)I
    .registers 4

    sget-object v0, Lcom/google/android/maps/driveabout/app/eB;->a:Lcom/google/android/maps/driveabout/app/eF;

    invoke-interface {v0, p0}, Lcom/google/android/maps/driveabout/app/eF;->a(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x3

    if-ne v1, v2, :cond_e

    and-int/lit8 v0, v0, 0x30

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
