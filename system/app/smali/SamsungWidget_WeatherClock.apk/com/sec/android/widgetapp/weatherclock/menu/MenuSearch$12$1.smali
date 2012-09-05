.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12$1;
.super Ljava/lang/Object;
.source "MenuSearch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->onReceive(IILjava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;)V
    .registers 2
    .parameter

    .prologue
    .line 609
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/16 v4, 0x3070

    .line 613
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->isActivityVisible()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 615
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->cities:Ljava/util/ArrayList;

    if-eqz v0, :cond_3c

    .line 616
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reached here !! with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mapweather:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cities"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_3c
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    const-class v2, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 620
    const-string v1, "mapweather"

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mapweather:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 621
    const-string v1, "latitude"

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->point:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 622
    const-string v1, "longitude"

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->point:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 623
    const-string v1, "tempscale"

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->tempscale:I
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$1100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 624
    const-string v1, "launcher"

    const/16 v2, -0x526c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 625
    const-string v1, "flags"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 626
    const-string v1, "appWidgetId"

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->mAppWidgetId:I
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->access$1200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 627
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 628
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;

    invoke-virtual {v1, v0, v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSearch;->startActivityForResult(Landroid/content/Intent;I)V

    .line 630
    :cond_a0
    return-void
.end method
