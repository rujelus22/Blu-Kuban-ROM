.class public Lcom/google/android/maps/driveabout/app/ds;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/maps/driveabout/app/ds;->a:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/google/android/maps/driveabout/app/ds;->a:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x45

    invoke-static {v0, p0, p1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_9
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .registers 3

    if-eqz p1, :cond_8

    const-string v0, "t"

    :goto_4
    invoke-static {p0, v0}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    const-string v0, "f"

    goto :goto_4
.end method

.method public static a(Z)V
    .registers 1

    sput-boolean p0, Lcom/google/android/maps/driveabout/app/ds;->a:Z

    return-void
.end method

.method public static b(Z)V
    .registers 2

    sget-boolean v0, Lcom/google/android/maps/driveabout/app/ds;->a:Z

    if-eqz v0, :cond_b

    invoke-static {}, Laf/m;->a()Laf/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Laf/m;->a(Z)V

    :cond_b
    return-void
.end method
