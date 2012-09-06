.class public abstract Lcom/google/android/maps/driveabout/app/o;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/maps/driveabout/app/o;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 20
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/maps/driveabout/app/o;
    .registers 3
    .parameter

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/maps/driveabout/app/o;->a:Lcom/google/android/maps/driveabout/app/o;

    if-nez v0, :cond_11

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_14

    .line 36
    new-instance v0, Lcom/google/android/maps/driveabout/app/p;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/p;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/maps/driveabout/app/o;->a:Lcom/google/android/maps/driveabout/app/o;

    .line 43
    :cond_11
    :goto_11
    sget-object v0, Lcom/google/android/maps/driveabout/app/o;->a:Lcom/google/android/maps/driveabout/app/o;

    return-object v0

    .line 39
    :cond_14
    new-instance v0, Lcom/google/android/maps/driveabout/app/q;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/q;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/maps/driveabout/app/o;->a:Lcom/google/android/maps/driveabout/app/o;

    goto :goto_11
.end method
