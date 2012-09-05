.class Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$5;
.super Ljava/lang/Object;
.source "VoiceListOptionDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$5;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->finish()V

    .line 241
    return-void
.end method
