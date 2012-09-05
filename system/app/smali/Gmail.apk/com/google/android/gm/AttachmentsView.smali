.class Lcom/google/android/gm/AttachmentsView;
.super Landroid/widget/LinearLayout;
.source "AttachmentsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/AttachmentsView$AttachmentChangesListener;
    }
.end annotation


# instance fields
.field private mAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/provider/Gmail$Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private mChangeListener:Lcom/google/android/gm/AttachmentsView$AttachmentChangesListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/AttachmentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/AttachmentsView;->mAttachments:Ljava/util/ArrayList;

    .line 30
    return-void
.end method


# virtual methods
.method public addAttachment(Lcom/google/android/gm/provider/Gmail$Attachment;)V
    .registers 5
    .parameter "attachment"

    .prologue
    const/4 v2, -0x1

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gm/AttachmentsView;->isShown()Z

    move-result v1

    if-nez v1, :cond_b

    .line 46
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gm/AttachmentsView;->setVisibility(I)V

    .line 48
    :cond_b
    iget-object v1, p0, Lcom/google/android/gm/AttachmentsView;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v0, Lcom/google/android/gm/AttachmentComposeView;

    invoke-virtual {p0}, Lcom/google/android/gm/AttachmentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gm/AttachmentComposeView;-><init>(Landroid/content/Context;Lcom/google/android/gm/provider/Gmail$Attachment;)V

    .line 53
    .local v0, attachmentView:Lcom/google/android/gm/AttachmentComposeView;
    new-instance v1, Lcom/google/android/gm/AttachmentsView$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gm/AttachmentsView$1;-><init>(Lcom/google/android/gm/AttachmentsView;Lcom/google/android/gm/AttachmentComposeView;Lcom/google/android/gm/provider/Gmail$Attachment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gm/AttachmentComposeView;->addDeleteListener(Landroid/view/View$OnClickListener;)V

    .line 60
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/AttachmentsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object v1, p0, Lcom/google/android/gm/AttachmentsView;->mChangeListener:Lcom/google/android/gm/AttachmentsView$AttachmentChangesListener;

    if-eqz v1, :cond_32

    .line 65
    iget-object v1, p0, Lcom/google/android/gm/AttachmentsView;->mChangeListener:Lcom/google/android/gm/AttachmentsView$AttachmentChangesListener;

    invoke-interface {v1}, Lcom/google/android/gm/AttachmentsView$AttachmentChangesListener;->onAttachmentAdded()V

    .line 67
    :cond_32
    return-void
.end method

.method public areAttachmentsSynced()Z
    .registers 5

    .prologue
    .line 102
    iget-object v2, p0, Lcom/google/android/gm/AttachmentsView;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/Gmail$Attachment;

    .line 103
    .local v0, a:Lcom/google/android/gm/provider/Gmail$Attachment;
    iget-object v2, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->origin:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    sget-object v3, Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;->SERVER_ATTACHMENT:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    if-ne v2, v3, :cond_6

    .line 104
    const/4 v2, 0x1

    .line 107
    .end local v0           #a:Lcom/google/android/gm/provider/Gmail$Attachment;
    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public deleteAllAttachments()V
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/gm/AttachmentsView;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 95
    invoke-virtual {p0}, Lcom/google/android/gm/AttachmentsView;->removeAllViews()V

    .line 96
    return-void
.end method

.method protected deleteAttachment(Lcom/google/android/gm/AttachmentComposeView;Lcom/google/android/gm/provider/Gmail$Attachment;)V
    .registers 4
    .parameter "attachmentView"
    .parameter "attachment"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/gm/AttachmentsView;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/android/gm/AttachmentsView;->removeView(Landroid/view/View;)V

    .line 74
    iget-object v0, p0, Lcom/google/android/gm/AttachmentsView;->mChangeListener:Lcom/google/android/gm/AttachmentsView$AttachmentChangesListener;

    if-eqz v0, :cond_11

    .line 75
    iget-object v0, p0, Lcom/google/android/gm/AttachmentsView;->mChangeListener:Lcom/google/android/gm/AttachmentsView$AttachmentChangesListener;

    invoke-interface {v0}, Lcom/google/android/gm/AttachmentsView$AttachmentChangesListener;->onAttachmentDeleted()V

    .line 77
    :cond_11
    iget-object v0, p0, Lcom/google/android/gm/AttachmentsView;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1e

    .line 78
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/gm/AttachmentsView;->setVisibility(I)V

    .line 80
    :cond_1e
    return-void
.end method

.method public getAttachments()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/provider/Gmail$Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/gm/AttachmentsView;->mAttachments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTotalAttachmentsSize()I
    .registers 5

    .prologue
    .line 114
    const/4 v2, 0x0

    .line 115
    .local v2, totalSize:I
    iget-object v3, p0, Lcom/google/android/gm/AttachmentsView;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/Gmail$Attachment;

    .line 116
    .local v0, attachment:Lcom/google/android/gm/provider/Gmail$Attachment;
    iget v3, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    add-int/2addr v2, v3

    goto :goto_7

    .line 118
    .end local v0           #attachment:Lcom/google/android/gm/provider/Gmail$Attachment;
    :cond_17
    return v2
.end method

.method public setAttachmentChangesListener(Lcom/google/android/gm/AttachmentsView$AttachmentChangesListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/gm/AttachmentsView;->mChangeListener:Lcom/google/android/gm/AttachmentsView$AttachmentChangesListener;

    .line 38
    return-void
.end method
