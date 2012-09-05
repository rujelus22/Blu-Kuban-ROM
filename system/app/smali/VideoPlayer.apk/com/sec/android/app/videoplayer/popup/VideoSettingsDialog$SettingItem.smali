.class Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$SettingItem;
.super Ljava/lang/Object;
.source "VideoSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingItem"
.end annotation


# instance fields
.field private mSettingItem:Ljava/lang/String;

.field private mSettingValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "item"
    .parameter "value"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$SettingItem;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$SettingItem;->mSettingItem:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$SettingItem;->mSettingValue:Ljava/lang/String;

    .line 84
    return-void
.end method


# virtual methods
.method public getItem()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$SettingItem;->mSettingItem:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoSettingsDialog$SettingItem;->mSettingValue:Ljava/lang/String;

    return-object v0
.end method
