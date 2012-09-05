.class Lcom/google/android/apps/plus/phone/SettingsActivity$TimeoutRunnable;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeoutRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/SettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$TimeoutRunnable;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 599
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$TimeoutRunnable;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->dismissDialog(I)V

    .line 600
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$TimeoutRunnable;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->showDialog(I)V

    .line 601
    return-void
.end method
