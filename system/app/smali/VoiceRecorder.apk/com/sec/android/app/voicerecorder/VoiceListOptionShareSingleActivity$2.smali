.class Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity$2;
.super Ljava/lang/Object;
.source "VoiceListOptionShareSingleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionShareSingleActivity;->softkeyShare(Landroid/view/View;)V

    .line 218
    return-void
.end method
