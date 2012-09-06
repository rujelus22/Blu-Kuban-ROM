.class public Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "TypeableAudienceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/TypeableAudienceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudienceTextView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView$AudienceInputConnection;
    }
.end annotation


# instance fields
.field private mListener:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 117
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;)Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextViewListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;->mListener:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextViewListener;

    return-object v0
.end method


# virtual methods
.method public onCheckIsTextEditor()Z
    .registers 2

    .prologue
    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 5
    .parameter "outAttrs"

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 166
    .local v1, inputConnection:Landroid/view/inputmethod/InputConnection;
    new-instance v0, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView$AudienceInputConnection;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView$AudienceInputConnection;-><init>(Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;Landroid/view/inputmethod/InputConnection;Z)V

    .line 168
    .local v0, connectionWrapper:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView$AudienceInputConnection;
    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView$AudienceInputConnection;->setAudienceTextView(Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;)V

    .line 169
    return-object v0
.end method

.method public setAudienceTextViewListener(Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextViewListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;->mListener:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextViewListener;

    .line 182
    return-void
.end method
