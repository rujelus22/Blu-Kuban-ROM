.class Lcom/sec/android/widgetapp/dualclock/WCCities2$6;
.super Ljava/lang/Object;
.source "WCCities2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/dualclock/WCCities2;->createProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/dualclock/WCCities2;)V
    .registers 2
    .parameter

    .prologue
    .line 709
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities2$6;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 711
    invoke-static {}, Lcom/sec/android/widgetapp/dualclock/WCCities2;->access$100()Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->stopLocationUpdate()Z

    .line 712
    return-void
.end method
