.class Lcom/sec/android/widgetapp/weatherclock/MapsActivity$26;
.super Ljava/lang/Object;
.source "MapsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->showLoadingDialog()V
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
    .line 1114
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$26;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$26;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mLoadingDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1802(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1118
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$26;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->mRequestCanceled:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$1902(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;Z)Z

    .line 1119
    const-string v0, ""

    const-string v1, "stopHttpThread"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/MapsActivity$26;->this$0:Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    #calls: Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->stopHttpThread()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;->access$2000(Lcom/sec/android/widgetapp/weatherclock/MapsActivity;)V

    .line 1122
    return-void
.end method
