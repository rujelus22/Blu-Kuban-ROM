.class Lcom/sec/android/app/clockpackage/worldclock/WCCities$10;
.super Ljava/lang/Object;
.source "WCCities.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/worldclock/WCCities;->showGPSDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)V
    .registers 2
    .parameter

    .prologue
    .line 1547
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$10;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$10;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->gpsDialShow:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$1002(Lcom/sec/android/app/clockpackage/worldclock/WCCities;Z)Z

    .line 1553
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1555
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$10;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    #calls: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->removeProgressDialog()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$1100(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)V

    .line 1557
    return-void
.end method
