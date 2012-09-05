.class Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$CalendarObserver;
.super Landroid/database/ContentObserver;
.source "CalendarAppWidgetProviderAgenda.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;


# direct methods
.method constructor <init>(Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "c"

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$CalendarObserver;->this$0:Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;

    .line 340
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 341
    iput-object p2, p0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$CalendarObserver;->mContext:Landroid/content/Context;

    .line 342
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 10
    .parameter

    .prologue
    .line 347
    const-string v0, "CalendarObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 349
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$CalendarObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 350
    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 353
    array-length v3, v2

    const/4 v0, 0x0

    :goto_3c
    if-ge v0, v3, :cond_68

    aget v4, v2, v0

    .line 355
    const-string v5, "CalendarObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onChange updateAppWidget: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v5, p0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$CalendarObserver;->this$0:Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;

    iget-object v6, p0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$CalendarObserver;->mContext:Landroid/content/Context;

    sget-boolean v7, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->mIsContactsChanged:Z

    #calls: Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->getAppWidgetUpdate(Landroid/content/Context;IZ)Landroid/widget/RemoteViews;
    invoke-static {v5, v6, v4, v7}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->access$000(Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;Landroid/content/Context;IZ)Landroid/widget/RemoteViews;

    move-result-object v5

    .line 357
    invoke-virtual {v1, v4, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 360
    :cond_68
    return-void
.end method
