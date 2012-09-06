.class public Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView$AudienceInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "TypeableAudienceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudienceInputConnection"
.end annotation


# instance fields
.field private mAudienceTextView:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;

.field final synthetic this$0:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;Landroid/view/inputmethod/InputConnection;Z)V
    .registers 4
    .parameter
    .parameter "target"
    .parameter "mutable"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView$AudienceInputConnection;->this$0:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;

    .line 134
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 135
    return-void
.end method


# virtual methods
.method public deleteSurroundingText(II)Z
    .registers 7
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    .line 146
    iget-object v2, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView$AudienceInputConnection;->this$0:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;->getSelectionStart()I

    move-result v1

    .line 147
    .local v1, start:I
    iget-object v2, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView$AudienceInputConnection;->this$0:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;->getSelectionEnd()I

    move-result v0

    .line 148
    .local v0, end:I
    if-lez p1, :cond_2d

    if-gtz p2, :cond_2d

    if-gtz v1, :cond_2d

    if-gtz v0, :cond_2d

    .line 151
    iget-object v2, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView$AudienceInputConnection;->this$0:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;

    #getter for: Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;->mListener:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextViewListener;
    invoke-static {v2}, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;->access$100(Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;)Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextViewListener;

    move-result-object v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView$AudienceInputConnection;->mAudienceTextView:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;

    if-eqz v2, :cond_2d

    .line 152
    iget-object v2, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView$AudienceInputConnection;->this$0:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;

    #getter for: Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;->mListener:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextViewListener;
    invoke-static {v2}, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;->access$100(Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;)Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextViewListener;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView$AudienceInputConnection;->mAudienceTextView:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;

    invoke-interface {v2, v3}, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextViewListener;->onDeleteFromBeginning(Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;)V

    .line 153
    const/4 v2, 0x1

    .line 156
    :goto_2c
    return v2

    :cond_2d
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    move-result v2

    goto :goto_2c
.end method

.method public setAudienceTextView(Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView$AudienceInputConnection;->mAudienceTextView:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;

    .line 139
    return-void
.end method
