.class Lcom/google/android/apps/plus/hangout/ToastsView$MediaBlockToast;
.super Lcom/google/android/apps/plus/hangout/ToastsView$ToastInfo;
.source "ToastsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/ToastsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaBlockToast"
.end annotation


# instance fields
.field private final blockee:Lcom/google/android/apps/plus/hangout/MeetingMember;

.field private final blocker:Lcom/google/android/apps/plus/hangout/MeetingMember;

.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/ToastsView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/ToastsView;Lcom/google/android/apps/plus/hangout/MeetingMember;Lcom/google/android/apps/plus/hangout/MeetingMember;)V
    .registers 5
    .parameter
    .parameter "blockee"
    .parameter "blocker"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MediaBlockToast;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/hangout/ToastsView$ToastInfo;-><init>(Lcom/google/android/apps/plus/hangout/ToastsView;Lcom/google/android/apps/plus/hangout/ToastsView$1;)V

    .line 170
    iput-object p2, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MediaBlockToast;->blockee:Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 171
    iput-object p3, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MediaBlockToast;->blocker:Lcom/google/android/apps/plus/hangout/MeetingMember;

    .line 172
    return-void
.end method


# virtual methods
.method populateView(Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .registers 11
    .parameter "imageView"
    .parameter "textView"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 176
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MediaBlockToast;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/ToastsView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MediaBlockToast;->blockee:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-static {v3, v4, p1}, Lcom/google/android/apps/plus/hangout/Avatars;->renderAvatar(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/MeetingMember;Landroid/widget/ImageView;)V

    .line 178
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MediaBlockToast;->blockee:Lcom/google/android/apps/plus/hangout/MeetingMember;

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MediaBlockToast;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/ToastsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, blockeeName:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MediaBlockToast;->blocker:Lcom/google/android/apps/plus/hangout/MeetingMember;

    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MediaBlockToast;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/hangout/ToastsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/hangout/MeetingMember;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, blockerName:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MediaBlockToast;->blocker:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 182
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MediaBlockToast;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/ToastsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080383

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, message:Ljava/lang/String;
    :goto_3e
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    return-void

    .line 184
    .end local v2           #message:Ljava/lang/String;
    :cond_42
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MediaBlockToast;->blockee:Lcom/google/android/apps/plus/hangout/MeetingMember;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/MeetingMember;->isSelf()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 185
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MediaBlockToast;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/ToastsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080384

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #message:Ljava/lang/String;
    goto :goto_3e

    .line 188
    .end local v2           #message:Ljava/lang/String;
    :cond_5c
    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/ToastsView$MediaBlockToast;->this$0:Lcom/google/android/apps/plus/hangout/ToastsView;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/ToastsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080385

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    aput-object v0, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #message:Ljava/lang/String;
    goto :goto_3e
.end method
