.class public Lcom/sprint/w/installer/env/SecLauncher;
.super Lcom/sprint/w/installer/env/BaseLauncherStrategy;
.source "SecLauncher.java"


# static fields
.field public static final PACKAGE:Ljava/lang/String; = "com.sec.android.app.launcher"


# direct methods
.method constructor <init>()V
    .registers 4

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/sprint/w/installer/env/BaseLauncherStrategy;-><init>()V

    .line 13
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.app.launcher"

    const-string v2, "com.android.launcher2.Launcher"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sprint/w/installer/env/SecLauncher;->cn:Landroid/content/ComponentName;

    .line 14
    const v0, 0x7f020032

    iput v0, p0, Lcom/sprint/w/installer/env/SecLauncher;->icon:I

    .line 15
    const/4 v0, 0x7

    iput v0, p0, Lcom/sprint/w/installer/env/SecLauncher;->screenCount:I

    .line 16
    return-void
.end method
