.class Lcom/sec/android/widgetapp/weatherclock/MapsActivity$17;
.super Ljava/lang/Object;
.source "MapsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->showCities(Ljava/util/ArrayList;)V
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
    .line 901
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$17;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 904
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$17;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    iput p2, v0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->dialog_selected:I

    .line 905
    return-void
.end method
