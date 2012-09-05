.class Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$1;
.super Ljava/lang/Object;
.source "AnalogClockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->setLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$1;->this$0:Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 159
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 160
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.app.clockpackage"

    const-string v2, "com.sec.android.app.clockpackage.ClockPackage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    iget-object v1, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$1;->this$0:Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->startActivity(Landroid/content/Intent;)V

    .line 162
    return-void
.end method
