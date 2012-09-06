.class public LabQ;
.super Ljava/lang/Object;
.source "WidgetAccountChangeListener.java"

# interfaces
.implements LNW;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/Set;Ljava/util/Set;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    const-string v0, "WidgetAccountChangeListener"

    const-string v1, "Accounts changed"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v1, LabR;

    invoke-direct {v1, p1}, LabR;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 26
    new-instance v0, Landroid/content/ComponentName;

    const-class v3, Lcom/google/android/apps/docs/widget/CakemixAppWidgetProvider;

    invoke-direct {v0, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    invoke-virtual {v2, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v3

    .line 28
    array-length v4, v3

    const/4 v0, 0x0

    :goto_1d
    if-ge v0, v4, :cond_2b

    aget v5, v3, v0

    .line 29
    invoke-virtual {v1, v5}, LabR;->a(I)Ljava/lang/String;

    move-result-object v6

    .line 30
    invoke-static {v2, v5, p1, v6}, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->a(Landroid/appwidget/AppWidgetManager;ILandroid/content/Context;Ljava/lang/String;)V

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 32
    :cond_2b
    return-void
.end method
