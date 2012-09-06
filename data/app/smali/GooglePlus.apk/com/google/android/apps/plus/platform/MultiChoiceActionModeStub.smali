.class public Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
.super Ljava/lang/Object;
.source "MultiChoiceActionModeStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$1;,
        Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;,
        Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallback;
    }
.end annotation


# instance fields
.field private final mActionCallback:Landroid/widget/AbsListView$MultiChoiceModeListener;

.field private mActionMode:Landroid/view/ActionMode;

.field private final mCallbackStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;)V
    .registers 4
    .parameter "callbackStub"

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->mCallbackStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;

    .line 135
    new-instance v0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallback;-><init>(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->mActionCallback:Landroid/widget/AbsListView$MultiChoiceModeListener;

    .line 136
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->mCallbackStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_9

    .line 191
    iget-object v0, p0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 193
    :cond_9
    return-void
.end method

.method public getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->mActionCallback:Landroid/widget/AbsListView$MultiChoiceModeListener;

    return-object v0
.end method

.method public invalidate()V
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_9

    .line 182
    iget-object v0, p0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 184
    :cond_9
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "title"

    .prologue
    .line 155
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->setTitle(Ljava/lang/CharSequence;I)V

    .line 156
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;I)V
    .registers 8
    .parameter "title"
    .parameter "color"

    .prologue
    .line 165
    iget-object v1, p0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1f

    .line 166
    if-eqz p1, :cond_20

    .line 167
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 168
    .local v0, s:Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 170
    iget-object v1, p0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 175
    .end local v0           #s:Landroid/text/SpannableString;
    :cond_1f
    :goto_1f
    return-void

    .line 172
    :cond_20
    iget-object v1, p0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->mActionMode:Landroid/view/ActionMode;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1f
.end method
