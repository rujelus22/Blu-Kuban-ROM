.class public Lcom/vlingo/client/widget/WidgetManager;
.super Ljava/lang/Object;
.source "WidgetManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateAllWidgets(Landroid/content/Context;Z)V
    .registers 3
    .parameter "context"
    .parameter "safereaderEnabled"

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/vlingo/client/widget/WidgetManager;->updateAllWidgets(Landroid/content/Context;ZZ)V

    .line 17
    return-void
.end method

.method public static updateAllWidgets(Landroid/content/Context;ZZ)V
    .registers 4
    .parameter "context"
    .parameter "safereaderEnabled"
    .parameter "playing"

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/vlingo/client/widget/SafeReaderWidget;->updateAllWidgets(Landroid/content/Context;Z)V

    .line 25
    invoke-static {p0}, Lcom/vlingo/client/samsung/DrivingModeUtil;->isDrivingModeEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/vlingo/client/widget/InCarWidget;->updateAllWidgets(Landroid/content/Context;Z)V

    .line 26
    if-eqz p1, :cond_10

    .line 27
    invoke-static {p2}, Lcom/vlingo/client/safereader/SafeReaderNotificationManager;->show(Z)V

    .line 30
    :goto_f
    return-void

    .line 29
    :cond_10
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderNotificationManager;->hide()V

    goto :goto_f
.end method

.method public static updateInCarWidget(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 20
    invoke-static {p0}, Lcom/vlingo/client/samsung/DrivingModeUtil;->isDrivingModeEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/vlingo/client/widget/InCarWidget;->updateAllWidgets(Landroid/content/Context;Z)V

    .line 21
    return-void
.end method
