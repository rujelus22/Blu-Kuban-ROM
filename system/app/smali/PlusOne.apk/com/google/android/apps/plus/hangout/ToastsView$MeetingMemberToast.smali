.class abstract Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberToast;
.super Lcom/google/android/apps/plus/hangout/ToastsView$ToastInfo;
.source "ToastsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/ToastsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "MeetingMemberToast"
.end annotation


# instance fields
.field private final meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/ToastsView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/ToastsView;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 4
    .parameter
    .parameter "meetingMember"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberToast;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/hangout/ToastsView$ToastInfo;-><init>(Lcom/google/android/apps/plus/hangout/ToastsView;Lcom/google/android/apps/plus/hangout/ToastsView$1;)V

    .line 88
    iput-object p2, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberToast;->meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 89
    return-void
.end method


# virtual methods
.method protected abstract getMessageFormatId()I
.end method

.method populateView(Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .registers 8
    .parameter "imageView"
    .parameter "textView"

    .prologue
    .line 93
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberToast;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/ToastsView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberToast;->meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-static {v3, v4, p1}, Lcom/google/android/apps/plus/hangout/Avatars;->renderAvatar(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/MeetingMember;Landroid/widget/ImageView;)V

    .line 95
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberToast;->meetingMember:Lcom/google/android/apps/plus/hangout/MeetingMember;

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberToast;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/ToastsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberToast;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/ToastsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/ToastsView$MeetingMemberToast;->getMessageFormatId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, messageFormat:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, message:Ljava/lang/String;
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    return-void
.end method
