.class Lcom/sec/android/widgetapp/weatherclock/MapsActivity$12;
.super Ljava/lang/Object;
.source "MapsActivity.java"

# interfaces
.implements Lcom/sec/android/widgetapp/weatherclock/view/MyMapView$Call;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 752
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 755
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->setKeyboardVisible(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1300(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Z)V

    .line 756
    return-void
.end method

.method public up(I)V
    .registers 2
    .parameter "movecount"

    .prologue
    .line 762
    return-void
.end method
