.class public Lcom/google/android/apps/googlevoice/VoiceCallWithRecordingView;
.super Landroid/widget/LinearLayout;
.source "VoiceCallWithRecordingView.java"


# instance fields
.field private editedTranscriptView:Landroid/widget/TextView;

.field private noTranscriptView:Landroid/widget/TextView;

.field private transcriptView:Lcom/google/android/apps/googlevoice/TranscriptView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public static inflate(Landroid/content/Context;)Lcom/google/android/apps/googlevoice/VoiceCallWithRecordingView;
    .registers 5
    .parameter "context"

    .prologue
    .line 29
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$layout;->voice_call_with_recording_view:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/VoiceCallWithRecordingView;

    return-object v0
.end method


# virtual methods
.method public getTranscriptView()Lcom/google/android/apps/googlevoice/TranscriptView;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoiceCallWithRecordingView;->transcriptView:Lcom/google/android/apps/googlevoice/TranscriptView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 39
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 40
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->transcript:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/VoiceCallWithRecordingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/TranscriptView;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/VoiceCallWithRecordingView;->transcriptView:Lcom/google/android/apps/googlevoice/TranscriptView;

    .line 41
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->no_transcript:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/VoiceCallWithRecordingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/VoiceCallWithRecordingView;->noTranscriptView:Landroid/widget/TextView;

    .line 42
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->edited_transcript:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/VoiceCallWithRecordingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/VoiceCallWithRecordingView;->editedTranscriptView:Landroid/widget/TextView;

    .line 43
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoiceCallWithRecordingView;->transcriptView:Lcom/google/android/apps/googlevoice/TranscriptView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/googlevoice/TranscriptView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoiceCallWithRecordingView;->noTranscriptView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/VoiceCallWithRecordingView;->editedTranscriptView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 75
    return-void
.end method

.method public setPhoneCall(Lcom/google/android/apps/googlevoice/core/PhoneCall;)V
    .registers 7
    .parameter "phoneCall"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 46
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->getTranscript()Lcom/google/android/apps/googlevoice/core/Transcript;

    move-result-object v0

    .line 47
    .local v0, transcript:Lcom/google/android/apps/googlevoice/core/Transcript;
    if-eqz v0, :cond_38

    .line 48
    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Transcript;->isEdited()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 49
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoiceCallWithRecordingView;->editedTranscriptView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/core/Transcript;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoiceCallWithRecordingView;->editedTranscriptView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoiceCallWithRecordingView;->transcriptView:Lcom/google/android/apps/googlevoice/TranscriptView;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/googlevoice/TranscriptView;->setVisibility(I)V

    .line 57
    :goto_22
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoiceCallWithRecordingView;->noTranscriptView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    :goto_27
    return-void

    .line 53
    :cond_28
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoiceCallWithRecordingView;->transcriptView:Lcom/google/android/apps/googlevoice/TranscriptView;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/googlevoice/TranscriptView;->setTranscript(Lcom/google/android/apps/googlevoice/core/Transcript;)V

    .line 54
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoiceCallWithRecordingView;->transcriptView:Lcom/google/android/apps/googlevoice/TranscriptView;

    invoke-virtual {v1, v4}, Lcom/google/android/apps/googlevoice/TranscriptView;->setVisibility(I)V

    .line 55
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoiceCallWithRecordingView;->editedTranscriptView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_22

    .line 59
    :cond_38
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoiceCallWithRecordingView;->noTranscriptView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoiceCallWithRecordingView;->transcriptView:Lcom/google/android/apps/googlevoice/TranscriptView;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/googlevoice/TranscriptView;->setVisibility(I)V

    .line 61
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/VoiceCallWithRecordingView;->editedTranscriptView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_27
.end method
