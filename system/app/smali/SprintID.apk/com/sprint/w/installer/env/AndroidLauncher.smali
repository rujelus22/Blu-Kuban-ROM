.class public Lcom/sprint/w/installer/env/AndroidLauncher;
.super Lcom/sprint/w/installer/env/BaseLauncherStrategy;
.source "AndroidLauncher.java"


# static fields
.field public static final PACKAGE:Ljava/lang/String; = "com.android.launcher"


# direct methods
.method constructor <init>()V
    .registers 5

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/sprint/w/installer/env/BaseLauncherStrategy;-><init>()V

    .line 14
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.launcher"

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-ge v0, v3, :cond_1d

    const-string v0, "com.android.launcher.Launcher"

    :goto_f
    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sprint/w/installer/env/AndroidLauncher;->cn:Landroid/content/ComponentName;

    .line 15
    const v0, 0x7f02002f

    iput v0, p0, Lcom/sprint/w/installer/env/AndroidLauncher;->icon:I

    .line 16
    const/4 v0, 0x5

    iput v0, p0, Lcom/sprint/w/installer/env/AndroidLauncher;->screenCount:I

    .line 17
    return-void

    .line 14
    :cond_1d
    const-string v0, "com.android.launcher2.Launcher"

    goto :goto_f
.end method
