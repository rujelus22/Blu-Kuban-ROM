.class Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsItem;
.super Ljava/lang/Object;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/SettingsActivity;

.field public title:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/voicerecorder/SettingsActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "_title"
    .parameter "_value"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsItem;->this$0:Lcom/sec/android/app/voicerecorder/SettingsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p2, p0, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsItem;->title:Ljava/lang/String;

    .line 250
    iput-object p3, p0, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsItem;->value:Ljava/lang/String;

    .line 251
    return-void
.end method
