.class Lcom/sec/android/app/clockpackage/worldclock/WCCities$11;
.super Ljava/lang/Object;
.source "WCCities.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/worldclock/WCCities;->createProgressDialog()V
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
    .line 1596
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$11;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 1600
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$100()Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->cancelLocationupdate()Z

    .line 1602
    return-void
.end method
