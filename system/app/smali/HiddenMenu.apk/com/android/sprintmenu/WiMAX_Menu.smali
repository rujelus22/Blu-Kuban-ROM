.class public Lcom/android/sprintmenu/WiMAX_Menu;
.super Landroid/app/Activity;
.source "WiMAX_Menu.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 24
    const-string v0, "WiMAX_Menu"

    const-string v1, "WiMAX_Menu :: onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/android/sprintmenu/WiMAX_Menu;->setContentView(I)V

    .line 67
    return-void
.end method
