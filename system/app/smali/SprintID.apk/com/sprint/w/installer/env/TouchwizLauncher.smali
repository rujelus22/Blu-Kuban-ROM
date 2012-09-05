.class public Lcom/sprint/w/installer/env/TouchwizLauncher;
.super Lcom/sprint/w/installer/env/BaseLauncherStrategy;
.source "TouchwizLauncher.java"


# static fields
.field public static final PACKAGE:Ljava/lang/String; = "com.sec.android.app.twlauncher"


# direct methods
.method constructor <init>()V
    .registers 4

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/sprint/w/installer/env/BaseLauncherStrategy;-><init>()V

    .line 13
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.app.twlauncher"

    const-string v2, "com.sec.android.app.twlauncher.Launcher"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sprint/w/installer/env/TouchwizLauncher;->cn:Landroid/content/ComponentName;

    .line 14
    const v0, 0x7f020032

    iput v0, p0, Lcom/sprint/w/installer/env/TouchwizLauncher;->icon:I

    .line 15
    const/4 v0, 0x7

    iput v0, p0, Lcom/sprint/w/installer/env/TouchwizLauncher;->screenCount:I

    .line 16
    return-void
.end method
