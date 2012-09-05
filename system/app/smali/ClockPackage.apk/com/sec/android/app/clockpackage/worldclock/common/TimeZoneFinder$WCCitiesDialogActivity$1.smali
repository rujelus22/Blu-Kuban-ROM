.class Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$WCCitiesDialogActivity$1;
.super Ljava/lang/Object;
.source "TimeZoneFinder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$WCCitiesDialogActivity;->displayAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$WCCitiesDialogActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$WCCitiesDialogActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1528
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$WCCitiesDialogActivity$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$WCCitiesDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1532
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->access$700()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->access$202(I)I

    .line 1539
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$WCCitiesDialogActivity$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$WCCitiesDialogActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$WCCitiesDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    #calls: Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->updateWorldClockDB(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->access$500(Landroid/content/Context;)V

    .line 1543
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$WCCitiesDialogActivity$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$WCCitiesDialogActivity;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->ADD_CITY:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$WCCitiesDialogActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1545
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1547
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$WCCitiesDialogActivity$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$WCCitiesDialogActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$WCCitiesDialogActivity;->finish()V

    .line 1549
    return-void
.end method
