.class Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$SendAppItem;
.super Ljava/lang/Object;
.source "VoiceListOptionShareAppListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendAppItem"
.end annotation


# instance fields
.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAppName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "appicon"
    .parameter "appname"

    .prologue
    .line 619
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$SendAppItem;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 620
    iput-object p2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$SendAppItem;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 621
    iput-object p3, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$SendAppItem;->mAppName:Ljava/lang/String;

    .line 622
    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$SendAppItem;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareAppListActivity$SendAppItem;->mAppName:Ljava/lang/String;

    return-object v0
.end method
