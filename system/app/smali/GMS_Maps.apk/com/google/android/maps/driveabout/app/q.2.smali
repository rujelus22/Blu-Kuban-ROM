.class public abstract Lcom/google/android/maps/driveabout/app/q;
.super Landroid/graphics/drawable/Drawable;


# static fields
.field private static a:Lcom/google/android/maps/driveabout/app/q;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/maps/driveabout/app/q;
    .registers 3

    sget-object v0, Lcom/google/android/maps/driveabout/app/q;->a:Lcom/google/android/maps/driveabout/app/q;

    if-nez v0, :cond_11

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_14

    new-instance v0, Lcom/google/android/maps/driveabout/app/r;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/r;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/maps/driveabout/app/q;->a:Lcom/google/android/maps/driveabout/app/q;

    :cond_11
    :goto_11
    sget-object v0, Lcom/google/android/maps/driveabout/app/q;->a:Lcom/google/android/maps/driveabout/app/q;

    return-object v0

    :cond_14
    new-instance v0, Lcom/google/android/maps/driveabout/app/s;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/s;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/maps/driveabout/app/q;->a:Lcom/google/android/maps/driveabout/app/q;

    goto :goto_11
.end method
