.class Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$1;
.super Ljava/lang/Object;
.source "CradleWeatherSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_10

    .line 142
    :goto_3
    return-void

    .line 134
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->selectAutoRefresh()V

    goto :goto_3

    .line 137
    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWeatherSettings;->selectUnit()V

    goto :goto_3

    .line 111
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_4
        :pswitch_a
    .end packed-switch
.end method
