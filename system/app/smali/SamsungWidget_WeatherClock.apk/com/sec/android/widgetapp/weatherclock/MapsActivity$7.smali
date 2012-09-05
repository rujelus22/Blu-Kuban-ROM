.class Lcom/sec/android/widgetapp/weatherclock/MapsActivity$7;
.super Ljava/lang/Object;
.source "MapsActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 604
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$7;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 607
    const/4 v0, 0x3

    if-ne p2, v0, :cond_e

    .line 608
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$7;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->menu_add_search_button:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1000(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    .line 612
    :goto_d
    return v0

    .line 609
    :cond_e
    if-eqz p3, :cond_21

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_21

    .line 610
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$7;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->menu_add_search_button:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1000(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    goto :goto_d

    .line 612
    :cond_21
    const/4 v0, 0x0

    goto :goto_d
.end method
