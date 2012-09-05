.class Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity$2;
.super Ljava/lang/Object;
.source "VoiceListOptionRenameActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;

    invoke-static {v0, p4, p5}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getCurrentPath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 192
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;

    const-class v3, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameDialogActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    const-string v2, "id"

    invoke-virtual {v1, v2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 194
    const-string v2, "uri"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity$2;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceListOptionRenameActivity;->startActivity(Landroid/content/Intent;)V

    .line 196
    return-void
.end method
