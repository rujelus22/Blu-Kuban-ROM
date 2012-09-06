.class Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberToast;
.super Lcom/google/android/apps/plus/hangout/ToastsView$ToastInfo;
.source "ToastsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/ToastsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeetingMemberToast"
.end annotation


# instance fields
.field private final meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

.field private final messageId:I

.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/ToastsView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/ToastsView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 6
    .parameter
    .parameter "meetingMember"

    .prologue
    const/4 v2, -0x1

    .line 94
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberToast;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/hangout/ToastsView$ToastInfo;-><init>(Lcom/google/android/apps/plus/hangout/ToastsView;Lcom/google/android/apps/plus/hangout/ToastsView$1;)V

    .line 95
    iput-object p2, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberToast;->meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 97
    sget-object v0, Lcom/google/android/apps/plus/hangout/ToastsView$4;->$SwitchMap$com$google$android$apps$plus$hangout$MeetingMember$Status:[I

    invoke-virtual {p2}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getCurrentStatus()Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    .line 113
    iput v2, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberToast;->messageId:I

    .line 116
    :goto_1a
    return-void

    .line 99
    :pswitch_1b
    invoke-virtual {p2}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getPreviousStatus()Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;->CONNECTING:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    if-ne v0, v1, :cond_29

    .line 101
    const v0, 0x7f08037f

    iput v0, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberToast;->messageId:I

    goto :goto_1a

    .line 104
    :cond_29
    const v0, 0x7f08037e

    iput v0, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberToast;->messageId:I

    goto :goto_1a

    .line 107
    :pswitch_2f
    iput v2, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberToast;->messageId:I

    goto :goto_1a

    .line 110
    :pswitch_32
    const v0, 0x7f08037d

    iput v0, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberToast;->messageId:I

    goto :goto_1a

    .line 97
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_2f
        :pswitch_32
    .end packed-switch
.end method


# virtual methods
.method populateView(Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .registers 8
    .parameter "imageView"
    .parameter "textView"

    .prologue
    .line 120
    iget v3, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberToast;->messageId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    .line 130
    :goto_5
    return-void

    .line 124
    :cond_6
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberToast;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/ToastsView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberToast;->meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-static {v3, v4, p1}, Lcom/google/android/apps/plus/hangout/Avatars;->renderAvatar(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/MeetingMember;Landroid/widget/ImageView;)V

    .line 126
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberToast;->meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberToast;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/ToastsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberToast;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/ToastsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberToast;->messageId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, messageFormat:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, message:Ljava/lang/String;
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method
