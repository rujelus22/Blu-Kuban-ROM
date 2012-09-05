.class Lcom/sec/android/widgetapp/weatherclock/MapsActivity$13;
.super Ljava/lang/Object;
.source "MapsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->showConfirmDialog()V
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
    .line 781
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 784
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->performLocation()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1200(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    .line 785
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->retry:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$902(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Z)Z

    .line 786
    return-void
.end method
