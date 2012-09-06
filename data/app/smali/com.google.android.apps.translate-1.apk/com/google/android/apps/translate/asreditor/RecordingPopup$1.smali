.class Lcom/google/android/apps/translate/asreditor/RecordingPopup$1;
.super Ljava/lang/Object;
.source "RecordingPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/asreditor/RecordingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/google/android/apps/translate/Language;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/asreditor/RecordingPopup;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/asreditor/RecordingPopup;)V
    .registers 2
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup$1;->this$0:Lcom/google/android/apps/translate/asreditor/RecordingPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup$1;->this$0:Lcom/google/android/apps/translate/asreditor/RecordingPopup;

    #getter for: Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mListener:Lcom/google/android/apps/translate/asreditor/RecordingPopup$Listener;
    invoke-static {v0}, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->access$000(Lcom/google/android/apps/translate/asreditor/RecordingPopup;)Lcom/google/android/apps/translate/asreditor/RecordingPopup$Listener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup$1;->this$0:Lcom/google/android/apps/translate/asreditor/RecordingPopup;

    #getter for: Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mListener:Lcom/google/android/apps/translate/asreditor/RecordingPopup$Listener;
    invoke-static {v0}, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->access$000(Lcom/google/android/apps/translate/asreditor/RecordingPopup;)Lcom/google/android/apps/translate/asreditor/RecordingPopup$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup$1;->this$0:Lcom/google/android/apps/translate/asreditor/RecordingPopup;

    invoke-interface {v0, v1}, Lcom/google/android/apps/translate/asreditor/RecordingPopup$Listener;->onCancel(Lcom/google/android/apps/translate/asreditor/RecordingPopup;)V

    .line 63
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup$1;->this$0:Lcom/google/android/apps/translate/asreditor/RecordingPopup;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->dismiss()V

    .line 65
    :cond_18
    return-void
.end method
