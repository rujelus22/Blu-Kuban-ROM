.class Lcom/sec/android/app/clockpackage/ClockPackage$1;
.super Landroid/content/BroadcastReceiver;
.source "ClockPackage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/ClockPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/ClockPackage;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/ClockPackage;)V
    .registers 2
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/ClockPackage$1;->this$0:Lcom/sec/android/app/clockpackage/ClockPackage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/ClockPackage$1;->this$0:Lcom/sec/android/app/clockpackage/ClockPackage;

    const-string v1, "ClocksTabStatus"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/clockpackage/ClockPackage;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->pref:Landroid/content/SharedPreferences;

    .line 239
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    .line 240
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v1, "LocaleChanged"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 241
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    const-string v1, "CurrentTab"

    invoke-static {}, Lcom/sec/android/app/clockpackage/ClockPackage;->access$000()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 242
    sget-object v0, Lcom/sec/android/app/clockpackage/ClockPackage;->ed:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 243
    return-void
.end method
