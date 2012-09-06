.class public Lcom/google/android/apps/translate/asreditor/RecordingPopup;
.super Lcom/google/android/apps/translate/asreditor/ArrowPopup;
.source "RecordingPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/asreditor/RecordingPopup$Listener;
    }
.end annotation


# instance fields
.field private mCancel:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mImage:Landroid/widget/ImageView;

.field private mIndicator:Lcom/google/android/apps/translate/asreditor/SoundIndicator;

.field private final mLanguage:Lcom/google/android/apps/translate/Language;

.field private mListener:Lcom/google/android/apps/translate/asreditor/RecordingPopup$Listener;

.field private mSpinner:Lcom/google/android/apps/translate/asreditor/ProgressSpinner;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/google/android/apps/translate/Language;)V
    .registers 7
    .parameter "context"
    .parameter "attributes"
    .parameter "language"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput-object p1, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mContext:Landroid/content/Context;

    .line 47
    iput-object p3, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mLanguage:Lcom/google/android/apps/translate/Language;

    .line 49
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 52
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget v1, Lcom/google/android/apps/translate/R$layout;->recording_popup:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 54
    sget v1, Lcom/google/android/apps/translate/R$id;->recording_popup_text:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mText:Landroid/widget/TextView;

    .line 55
    sget v1, Lcom/google/android/apps/translate/R$id;->recording_popup_progress:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;

    iput-object v1, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mSpinner:Lcom/google/android/apps/translate/asreditor/ProgressSpinner;

    .line 56
    sget v1, Lcom/google/android/apps/translate/R$id;->recording_popup_indicator:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/asreditor/SoundIndicator;

    iput-object v1, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mIndicator:Lcom/google/android/apps/translate/asreditor/SoundIndicator;

    .line 57
    sget v1, Lcom/google/android/apps/translate/R$id;->recording_popup_image:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mImage:Landroid/widget/ImageView;

    .line 58
    sget v1, Lcom/google/android/apps/translate/R$id;->recording_popup_cancel:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mCancel:Landroid/widget/Button;

    .line 59
    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mCancel:Landroid/widget/Button;

    new-instance v2, Lcom/google/android/apps/translate/asreditor/RecordingPopup$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/translate/asreditor/RecordingPopup$1;-><init>(Lcom/google/android/apps/translate/asreditor/RecordingPopup;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->setOutsideTouchable(Z)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/translate/Language;)V
    .registers 4
    .parameter "context"
    .parameter "language"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/apps/translate/asreditor/RecordingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/google/android/apps/translate/Language;)V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/translate/asreditor/RecordingPopup;)Lcom/google/android/apps/translate/asreditor/RecordingPopup$Listener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mListener:Lcom/google/android/apps/translate/asreditor/RecordingPopup$Listener;

    return-object v0
.end method


# virtual methods
.method protected createLayoutParams(Landroid/graphics/Rect;)Landroid/view/WindowManager$LayoutParams;
    .registers 7
    .parameter "popupRect"

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-super {p0, p1}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->createLayoutParams(Landroid/graphics/Rect;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 75
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/apps/translate/R$dimen;->recording_popup_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 77
    .local v1, size:I
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ge v2, v1, :cond_27

    .line 79
    invoke-virtual {p0}, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->disableArrow()V

    .line 80
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 81
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 82
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 83
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 84
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 87
    :cond_27
    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mListener:Lcom/google/android/apps/translate/asreditor/RecordingPopup$Listener;

    if-eqz v0, :cond_10

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mListener:Lcom/google/android/apps/translate/asreditor/RecordingPopup$Listener;

    invoke-interface {v0, p0}, Lcom/google/android/apps/translate/asreditor/RecordingPopup$Listener;->onCancel(Lcom/google/android/apps/translate/asreditor/RecordingPopup;)V

    .line 97
    :cond_10
    invoke-super {p0, p1}, Lcom/google/android/apps/translate/asreditor/ArrowPopup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setLevel(F)V
    .registers 3
    .parameter "dBs"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mIndicator:Lcom/google/android/apps/translate/asreditor/SoundIndicator;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/asreditor/SoundIndicator;->setRmsdB(F)V

    .line 138
    return-void
.end method

.method public setListener(Lcom/google/android/apps/translate/asreditor/RecordingPopup$Listener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mListener:Lcom/google/android/apps/translate/asreditor/RecordingPopup$Listener;

    .line 103
    return-void
.end method

.method public showError(I)V
    .registers 7
    .parameter "res"

    .prologue
    const/16 v4, 0x8

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mLanguage:Lcom/google/android/apps/translate/Language;

    invoke-static {v1, p1, v2}, Lcom/google/android/apps/translate/Util;->getLocalizedStringId(Landroid/content/Context;ILcom/google/android/apps/translate/Language;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/apps/translate/R$string;->label_ok:I

    iget-object v3, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mLanguage:Lcom/google/android/apps/translate/Language;

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/translate/Util;->getLocalizedStringId(Landroid/content/Context;ILcom/google/android/apps/translate/Language;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 129
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mSpinner:Lcom/google/android/apps/translate/asreditor/ProgressSpinner;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mIndicator:Lcom/google/android/apps/translate/asreditor/SoundIndicator;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/translate/asreditor/SoundIndicator;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mIndicator:Lcom/google/android/apps/translate/asreditor/SoundIndicator;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/asreditor/SoundIndicator;->stop()V

    .line 133
    return-void
.end method

.method public showRecording()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    .line 107
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/apps/translate/R$string;->label_speak_now:I

    iget-object v3, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mLanguage:Lcom/google/android/apps/translate/Language;

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/translate/Util;->getLocalizedStringId(Landroid/content/Context;ILcom/google/android/apps/translate/Language;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 108
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/apps/translate/R$string;->label_cancel:I

    iget-object v3, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mLanguage:Lcom/google/android/apps/translate/Language;

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/translate/Util;->getLocalizedStringId(Landroid/content/Context;ILcom/google/android/apps/translate/Language;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mSpinner:Lcom/google/android/apps/translate/asreditor/ProgressSpinner;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mIndicator:Lcom/google/android/apps/translate/asreditor/SoundIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/asreditor/SoundIndicator;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mIndicator:Lcom/google/android/apps/translate/asreditor/SoundIndicator;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/asreditor/SoundIndicator;->start()V

    .line 113
    return-void
.end method

.method public showWorking()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/apps/translate/R$string;->working:I

    iget-object v3, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mLanguage:Lcom/google/android/apps/translate/Language;

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/translate/Util;->getLocalizedStringId(Landroid/content/Context;ILcom/google/android/apps/translate/Language;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 118
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mContext:Landroid/content/Context;

    sget v2, Lcom/google/android/apps/translate/R$string;->label_cancel:I

    iget-object v3, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mLanguage:Lcom/google/android/apps/translate/Language;

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/translate/Util;->getLocalizedStringId(Landroid/content/Context;ILcom/google/android/apps/translate/Language;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 119
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mSpinner:Lcom/google/android/apps/translate/asreditor/ProgressSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/asreditor/ProgressSpinner;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mIndicator:Lcom/google/android/apps/translate/asreditor/SoundIndicator;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/translate/asreditor/SoundIndicator;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/RecordingPopup;->mIndicator:Lcom/google/android/apps/translate/asreditor/SoundIndicator;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/asreditor/SoundIndicator;->stop()V

    .line 123
    return-void
.end method
