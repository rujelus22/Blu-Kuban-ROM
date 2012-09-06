.class Lcom/google/googlenav/appwidget/traffic/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/googlenav/appwidget/traffic/c;->a:Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/c;->a:Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->c(Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;)V

    .line 142
    return-void
.end method
