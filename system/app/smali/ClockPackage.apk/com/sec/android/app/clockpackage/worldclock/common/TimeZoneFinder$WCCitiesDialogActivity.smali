.class public Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$WCCitiesDialogActivity;
.super Landroid/app/Activity;
.source "TimeZoneFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WCCitiesDialogActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1498
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public displayAlertDialog()V
    .registers 6

    .prologue
    .line 1516
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->access$600()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    .line 1518
    .local v1, cityList:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    array-length v3, v1

    if-ge v2, v3, :cond_1d

    .line 1520
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->access$600()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 1518
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1524
    :cond_1d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1526
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const-string v3, "Select City"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1528
    const/4 v3, 0x0

    new-instance v4, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$WCCitiesDialogActivity$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$WCCitiesDialogActivity$1;-><init>(Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$WCCitiesDialogActivity;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1553
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1555
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 1502
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1504
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$WCCitiesDialogActivity;->requestWindowFeature(I)Z

    .line 1506
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1a

    .line 1508
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$WCCitiesDialogActivity;->displayAlertDialog()V

    .line 1512
    :cond_1a
    return-void
.end method
