.class public Lcom/google/googlenav/appwidget/traffic/TrafficAppWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidget;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private a(Lcom/google/googlenav/appwidget/traffic/i;[I)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-virtual {p1}, Lcom/google/googlenav/appwidget/traffic/i;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 67
    array-length v1, p2

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    const-string v3, "c"

    invoke-static {v3, v0, v2}, LaT/k;->a(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 71
    const-string v0, "dc"

    invoke-static {v0, v1, v2}, LaT/k;->a(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 73
    array-length v1, p2

    const/4 v0, 0x0

    :goto_1a
    if-ge v0, v1, :cond_26

    aget v3, p2, v0

    .line 74
    const-string v4, "id"

    invoke-static {v4, v3, v2}, LaT/k;->a(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 77
    :cond_26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 42
    new-instance v1, Lcom/google/googlenav/appwidget/traffic/i;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/googlenav/appwidget/traffic/i;-><init>(Landroid/content/ContentResolver;)V

    .line 46
    invoke-direct {p0, v1, p2}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidget;->a(Lcom/google/googlenav/appwidget/traffic/i;[I)Ljava/lang/String;

    move-result-object v0

    .line 47
    const/16 v2, 0x48

    const-string v3, "wd"

    invoke-static {v2, v3, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    array-length v2, p2

    const/4 v0, 0x0

    :goto_16
    if-ge v0, v2, :cond_32

    aget v3, p2, v0

    .line 52
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;

    invoke-direct {v4, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v3}, Lcom/google/googlenav/appwidget/traffic/k;->d(I)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    .line 55
    invoke-virtual {p1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 57
    invoke-virtual {v1, v3}, Lcom/google/googlenav/appwidget/traffic/i;->a(I)V

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 59
    :cond_32
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 84
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    array-length v1, p3

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_1b

    aget v2, p3, v0

    .line 33
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetUpdateService;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v2}, Lcom/google/googlenav/appwidget/traffic/k;->b(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 36
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 38
    :cond_1b
    return-void
.end method
