.class public Lcom/google/android/apps/plus/phone/NotificationSettingsActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "NotificationSettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f030048

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/NotificationSettingsActivity;->setContentView(I)V

    .line 24
    return-void
.end method
