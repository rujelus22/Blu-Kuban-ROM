.class public final Lcom/anddoes/launcher/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static a:Lcom/anddoes/launcher/u;

.field private static b:Landroid/appwidget/AppWidgetManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    sput-object v0, Lcom/anddoes/launcher/u;->b:Landroid/appwidget/AppWidgetManager;

    .line 16
    return-void
.end method

.method protected static declared-synchronized a(Landroid/content/Context;)Lcom/anddoes/launcher/u;
    .registers 3
    .parameter

    .prologue
    .line 20
    const-class v1, Lcom/anddoes/launcher/u;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/anddoes/launcher/u;->a:Lcom/anddoes/launcher/u;

    if-nez v0, :cond_e

    .line 21
    new-instance v0, Lcom/anddoes/launcher/u;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/u;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/anddoes/launcher/u;->a:Lcom/anddoes/launcher/u;

    .line 23
    :cond_e
    sget-object v0, Lcom/anddoes/launcher/u;->a:Lcom/anddoes/launcher/u;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 20
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static a(ILandroid/content/ComponentName;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 27
    sget-object v0, Lcom/anddoes/launcher/u;->b:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p0, p1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method
