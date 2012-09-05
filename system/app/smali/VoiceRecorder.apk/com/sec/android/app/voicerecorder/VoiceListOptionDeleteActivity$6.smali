.class Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$6;
.super Ljava/lang/Object;
.source "VoiceListOptionDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->createDeleteDialog()Landroid/app/AlertDialog;
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
    .line 289
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 291
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$6;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->mDeletePopup:Landroid/app/AlertDialog;

    .line 293
    return-void
.end method
