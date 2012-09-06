.class public Lcom/google/android/apps/docs/widget/CakemixAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "CakemixAppWidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 31
    new-instance v1, LabR;

    invoke-direct {v1, p1}, LabR;-><init>(Landroid/content/Context;)V

    .line 32
    array-length v2, p2

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_11

    aget v3, p2, v0

    .line 33
    invoke-virtual {v1, v3}, LabR;->a(I)V

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 35
    :cond_11
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    new-instance v1, LabR;

    invoke-direct {v1, p1}, LabR;-><init>(Landroid/content/Context;)V

    .line 22
    const-string v0, "CakemixAppWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    array-length v2, p3

    const/4 v0, 0x0

    :goto_23
    if-ge v0, v2, :cond_31

    aget v3, p3, v0

    .line 24
    invoke-virtual {v1, v3}, LabR;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 25
    invoke-static {p2, v3, p1, v4}, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->a(Landroid/appwidget/AppWidgetManager;ILandroid/content/Context;Ljava/lang/String;)V

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 27
    :cond_31
    return-void
.end method
