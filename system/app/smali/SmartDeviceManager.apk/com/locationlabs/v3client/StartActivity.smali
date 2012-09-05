.class public Lcom/locationlabs/v3client/StartActivity;
.super Landroid/app/Activity;
.source "a"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onStart()V
    .registers 3

    .prologue
    .line 12
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 16
    invoke-static {p0}, Lcom/locationlabs/util/android/Autostart;->a(Landroid/content/Context;)V

    .line 18
    const-wide/16 v0, 0x3e8

    invoke-static {p0, v0, v1}, Lcom/locationlabs/v3client/BootCompletedReceiver;->a(Landroid/content/Context;J)V

    .line 20
    const-string v0, "Smart Device Manager started."

    invoke-static {p0, v0}, Lh;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/locationlabs/v3client/StartActivity;->finish()V

    .line 24
    return-void
.end method
