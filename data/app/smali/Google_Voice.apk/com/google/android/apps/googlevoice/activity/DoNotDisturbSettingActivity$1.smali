.class final Lcom/google/android/apps/googlevoice/activity/DoNotDisturbSettingActivity$1;
.super Ljava/lang/Object;
.source "DoNotDisturbSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/activity/DoNotDisturbSettingActivity;->createErrorDialog(Landroid/content/Context;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 69
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 70
    return-void
.end method
