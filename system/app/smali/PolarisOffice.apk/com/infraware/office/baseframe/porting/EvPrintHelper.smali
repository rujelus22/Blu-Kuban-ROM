.class public Lcom/infraware/office/baseframe/porting/EvPrintHelper;
.super Ljava/lang/Object;
.source "EvPrintHelper.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static isSupportPrint(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 14
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.app.mobileprint"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_b} :catch_d

    .line 15
    const/4 v1, 0x1

    .line 18
    :goto_c
    return v1

    .line 16
    :catch_d
    move-exception v0

    .line 18
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_c
.end method
