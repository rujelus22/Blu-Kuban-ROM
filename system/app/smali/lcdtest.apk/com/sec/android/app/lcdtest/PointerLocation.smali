.class public Lcom/sec/android/app/lcdtest/PointerLocation;
.super Landroid/app/Activity;
.source "PointerLocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/lcdtest/PointerLocation$MyView;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    new-instance v1, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;

    invoke-direct {v1, p0, p0}, Lcom/sec/android/app/lcdtest/PointerLocation$MyView;-><init>(Lcom/sec/android/app/lcdtest/PointerLocation;Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/lcdtest/PointerLocation;->setContentView(Landroid/view/View;)V

    .line 43
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/PointerLocation;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 45
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/PointerLocation;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 46
    return-void
.end method
