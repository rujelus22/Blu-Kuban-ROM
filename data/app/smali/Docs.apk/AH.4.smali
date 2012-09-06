.class public LAH;
.super Ljava/lang/Object;
.source "TextSelectionPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;)V
    .registers 2
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, LAH;->a:Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, LAH;->a:Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a()Lcom/google/android/apps/docs/editors/kix/KixEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->a()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lup;->follow_link:I

    if-ne v1, v2, :cond_28

    if-eqz v0, :cond_28

    .line 47
    iget-object v1, p0, LAH;->a:Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a()Lyf;

    move-result-object v1

    .line 48
    if-eqz v1, :cond_20

    .line 49
    invoke-virtual {v1, v0}, Lyf;->a(Ljava/lang/String;)V

    .line 74
    :goto_1f
    return-void

    .line 51
    :cond_20
    const-string v0, "TextSelectionPopup"

    const-string v1, "The link navigator is not set."

    invoke-static {v0, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 53
    :cond_28
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lup;->comment:I

    if-ne v0, v1, :cond_67

    iget-object v0, p0, LAH;->a:Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a()Lcom/google/android/apps/docs/editors/kix/KixEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->g()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 56
    iget-object v0, p0, LAH;->a:Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a()LuJ;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_5f

    .line 58
    invoke-virtual {v0}, LuJ;->a()Ljava/lang/String;

    move-result-object v1

    .line 64
    iget-object v0, p0, LAH;->a:Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    .line 65
    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a()Luy;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Luy;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 66
    iget-object v0, p0, LAH;->a:Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->p()V

    goto :goto_1f

    .line 60
    :cond_5f
    const-string v0, "TextSelectionPopup"

    const-string v1, "The discussion anchor manager is not set."

    invoke-static {v0, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 67
    :cond_67
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lup;->editPopup:I

    if-ne v0, v1, :cond_8a

    iget-object v0, p0, LAH;->a:Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a()Lcom/google/android/apps/docs/editors/kix/KixEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->h()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 68
    iget-object v0, p0, LAH;->a:Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a()Lcom/google/android/apps/docs/editors/kix/KixEditText;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->c()V

    .line 70
    iget-object v0, p0, LAH;->a:Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->p()V

    goto :goto_1f

    .line 72
    :cond_8a
    iget-object v0, p0, LAH;->a:Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/popup/TextSelectionPopup;->a()Lcom/google/android/apps/docs/editors/kix/KixEditText;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/kix/KixEditText;->b(I)Z

    goto :goto_1f
.end method
