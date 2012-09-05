.class Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$3;
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
    .line 213
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    #calls: Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->selectAll()V
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->access$500(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)V

    .line 216
    return-void
.end method
