.class Lcom/sec/android/app/ve/ui/DurationSettingDialog$RefreshHandler;
.super Landroid/os/Handler;
.source "DurationSettingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/ui/DurationSettingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RefreshHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/ui/DurationSettingDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/ui/DurationSettingDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sec/android/app/ve/ui/DurationSettingDialog$RefreshHandler;->this$0:Lcom/sec/android/app/ve/ui/DurationSettingDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/DurationSettingDialog$RefreshHandler;->this$0:Lcom/sec/android/app/ve/ui/DurationSettingDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/ui/DurationSettingDialog;->dismiss()V

    .line 37
    return-void
.end method
