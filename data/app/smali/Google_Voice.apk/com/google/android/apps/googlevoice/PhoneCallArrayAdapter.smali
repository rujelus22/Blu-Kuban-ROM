.class public Lcom/google/android/apps/googlevoice/PhoneCallArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PhoneCallArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/google/android/apps/googlevoice/core/PhoneCall;",
        ">;"
    }
.end annotation


# instance fields
.field private final activity:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

.field private currentParent:Landroid/view/ViewGroup;

.field private smsInfoRetriever:Lcom/google/android/apps/googlevoice/sms/SmsInfoRetriever;

.field private views:[Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/PhoneCallListActivity;I[Lcom/google/android/apps/googlevoice/core/PhoneCall;Lcom/google/android/apps/googlevoice/sms/SmsInfoRetriever;)V
    .registers 6
    .parameter "activity"
    .parameter "resourceId"
    .parameter "objects"
    .parameter "smsInfoRetriever"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallArrayAdapter;->currentParent:Landroid/view/ViewGroup;

    .line 29
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/PhoneCallArrayAdapter;->activity:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    .line 30
    iput-object p4, p0, Lcom/google/android/apps/googlevoice/PhoneCallArrayAdapter;->smsInfoRetriever:Lcom/google/android/apps/googlevoice/sms/SmsInfoRetriever;

    .line 31
    return-void
.end method

.method private onParentChanged()V
    .registers 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/PhoneCallArrayAdapter;->getCount()I

    move-result v0

    new-array v0, v0, [Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/PhoneCallArrayAdapter;->views:[Landroid/widget/LinearLayout;

    .line 84
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 93
    const/4 v0, -0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 35
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/PhoneCallArrayAdapter;->currentParent:Landroid/view/ViewGroup;

    if-eq p3, v3, :cond_9

    .line 36
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/PhoneCallArrayAdapter;->onParentChanged()V

    .line 37
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/PhoneCallArrayAdapter;->currentParent:Landroid/view/ViewGroup;

    .line 40
    :cond_9
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_29

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneCallArrayAdapter.getView("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 45
    :cond_29
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/PhoneCallArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/googlevoice/core/PhoneCall;

    .line 49
    .local v1, phoneCall:Lcom/google/android/apps/googlevoice/core/PhoneCall;
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/PhoneCallArrayAdapter;->views:[Landroid/widget/LinearLayout;

    aget-object v0, v3, p1

    .line 51
    .local v0, existingView:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->isTextMessage()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 52
    if-eqz v0, :cond_54

    instance-of v3, v0, Lcom/google/android/apps/googlevoice/TextMessageView;

    if-eqz v3, :cond_54

    check-cast v0, Lcom/google/android/apps/googlevoice/TextMessageView;

    .end local v0           #existingView:Landroid/widget/LinearLayout;
    move-object v2, v0

    .line 56
    .local v2, view:Lcom/google/android/apps/googlevoice/TextMessageView;
    :goto_42
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/PhoneCallArrayAdapter;->views:[Landroid/widget/LinearLayout;

    aput-object v2, v3, p1

    .line 57
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/PhoneCallArrayAdapter;->activity:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/TextMessageView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 58
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/PhoneCallArrayAdapter;->smsInfoRetriever:Lcom/google/android/apps/googlevoice/sms/SmsInfoRetriever;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/apps/googlevoice/TextMessageView;->setPhoneCall(Lcom/google/android/apps/googlevoice/core/PhoneCall;Lcom/google/android/apps/googlevoice/sms/SmsInfoRetriever;)V

    .line 59
    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/TextMessageView;->postInvalidate()V

    .line 77
    .end local v2           #view:Lcom/google/android/apps/googlevoice/TextMessageView;
    :goto_53
    return-object v2

    .line 52
    .restart local v0       #existingView:Landroid/widget/LinearLayout;
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/PhoneCallArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/TextMessageView;->inflate(Landroid/content/Context;)Lcom/google/android/apps/googlevoice/TextMessageView;

    move-result-object v2

    goto :goto_42

    .line 61
    :cond_5d
    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/core/PhoneCall;->isAudibleRecording()Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 62
    if-eqz v0, :cond_85

    instance-of v3, v0, Lcom/google/android/apps/googlevoice/VoiceCallWithRecordingView;

    if-eqz v3, :cond_85

    check-cast v0, Lcom/google/android/apps/googlevoice/VoiceCallWithRecordingView;

    .end local v0           #existingView:Landroid/widget/LinearLayout;
    move-object v2, v0

    .line 66
    .local v2, view:Lcom/google/android/apps/googlevoice/VoiceCallWithRecordingView;
    :goto_6c
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/PhoneCallArrayAdapter;->views:[Landroid/widget/LinearLayout;

    aput-object v2, v3, p1

    .line 67
    invoke-virtual {v2, v1}, Lcom/google/android/apps/googlevoice/VoiceCallWithRecordingView;->setPhoneCall(Lcom/google/android/apps/googlevoice/core/PhoneCall;)V

    .line 68
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/PhoneCallArrayAdapter;->activity:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/googlevoice/VoiceCallWithRecordingView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 69
    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/VoiceCallWithRecordingView;->postInvalidate()V

    .line 70
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/PhoneCallArrayAdapter;->activity:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/VoiceCallWithRecordingView;->getTranscriptView()Lcom/google/android/apps/googlevoice/TranscriptView;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/google/android/apps/googlevoice/PhoneCallListActivity;->onCreatedTranscriptView(Lcom/google/android/apps/googlevoice/TranscriptView;Lcom/google/android/apps/googlevoice/core/PhoneCall;)V

    goto :goto_53

    .line 62
    .end local v2           #view:Lcom/google/android/apps/googlevoice/VoiceCallWithRecordingView;
    .restart local v0       #existingView:Landroid/widget/LinearLayout;
    :cond_85
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/PhoneCallArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/VoiceCallWithRecordingView;->inflate(Landroid/content/Context;)Lcom/google/android/apps/googlevoice/VoiceCallWithRecordingView;

    move-result-object v2

    goto :goto_6c

    .line 76
    :cond_8e
    const-string v3, "PhoneCallArrayAdapter: unexpected non-text and non-recording phone call!"

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V

    .line 77
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/PhoneCallArrayAdapter;->activity:Lcom/google/android/apps/googlevoice/PhoneCallListActivity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_53
.end method
