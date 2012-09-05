.class public Lcom/sprint/w/installer/env/MotorolaLauncher;
.super Lcom/sprint/w/installer/env/BaseLauncherStrategy;
.source "MotorolaLauncher.java"


# static fields
.field public static final PACKAGE:Ljava/lang/String; = "com.motorola.homescreen"


# direct methods
.method constructor <init>()V
    .registers 4

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/sprint/w/installer/env/BaseLauncherStrategy;-><init>()V

    .line 13
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.motorola.homescreen"

    const-string v2, "com.motorola.homescreen.Launcher"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sprint/w/installer/env/MotorolaLauncher;->cn:Landroid/content/ComponentName;

    .line 14
    const v0, 0x7f02002e

    iput v0, p0, Lcom/sprint/w/installer/env/MotorolaLauncher;->icon:I

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Lcom/sprint/w/installer/env/MotorolaLauncher;->screenCount:I

    .line 16
    return-void
.end method
