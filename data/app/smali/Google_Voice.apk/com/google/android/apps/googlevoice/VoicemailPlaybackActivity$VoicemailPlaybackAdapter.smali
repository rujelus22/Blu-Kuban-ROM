.class Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$VoicemailPlaybackAdapter;
.super Landroid/widget/BaseAdapter;
.source "VoicemailPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoicemailPlaybackAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$VoicemailPlaybackAdapter;->this$0:Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$VoicemailPlaybackAdapter;-><init>(Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 99
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 104
    if-nez p1, :cond_5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 109
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 115
    if-nez p2, :cond_47

    .line 116
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$VoicemailPlaybackAdapter;->this$0:Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;

    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    sget v7, Lcom/google/android/apps/googlevoice/R$layout;->voicemail_playback_item:I

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 120
    .local v3, view:Landroid/view/View;
    :goto_11
    sget v4, Lcom/google/android/apps/googlevoice/R$id;->main:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 121
    .local v1, main:Landroid/widget/TextView;
    sget v4, Lcom/google/android/apps/googlevoice/R$id;->radio:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 123
    .local v2, radio:Landroid/widget/RadioButton;
    if-nez p1, :cond_49

    move v0, v5

    .line 124
    .local v0, isSpeaker:Z
    :goto_24
    if-eqz v0, :cond_4b

    sget v4, Lcom/google/android/apps/googlevoice/R$string;->voicemail_playback_speaker:I

    :goto_28
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 127
    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 128
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$VoicemailPlaybackAdapter;->this$0:Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;

    #getter for: Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v4}, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;->access$100(Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getVoicemailPlaybackViaSpeaker()Z

    move-result v4

    if-ne v0, v4, :cond_4e

    move v4, v5

    :goto_3b
    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 129
    new-instance v4, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$VoicemailPlaybackAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$VoicemailPlaybackAdapter$1;-><init>(Lcom/google/android/apps/googlevoice/VoicemailPlaybackActivity$VoicemailPlaybackAdapter;I)V

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    return-object v3

    .line 118
    .end local v0           #isSpeaker:Z
    .end local v1           #main:Landroid/widget/TextView;
    .end local v2           #radio:Landroid/widget/RadioButton;
    .end local v3           #view:Landroid/view/View;
    :cond_47
    move-object v3, p2

    .restart local v3       #view:Landroid/view/View;
    goto :goto_11

    .restart local v1       #main:Landroid/widget/TextView;
    .restart local v2       #radio:Landroid/widget/RadioButton;
    :cond_49
    move v0, v6

    .line 123
    goto :goto_24

    .line 124
    .restart local v0       #isSpeaker:Z
    :cond_4b
    sget v4, Lcom/google/android/apps/googlevoice/R$string;->voicemail_playback_handset:I

    goto :goto_28

    :cond_4e
    move v4, v6

    .line 128
    goto :goto_3b
.end method
