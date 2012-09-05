.class public Landroid/widget/NumberPicker$CustomEditText;
.super Landroid/widget/EditText;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomEditText"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 2023
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2024
    return-void
.end method


# virtual methods
.method public onEditorAction(I)V
    .registers 3
    .parameter "actionCode"

    .prologue
    .line 2028
    invoke-super {p0, p1}, Landroid/widget/EditText;->onEditorAction(I)V

    .line 2029
    const/4 v0, 0x6

    if-ne p1, v0, :cond_9

    .line 2030
    invoke-virtual {p0}, Landroid/widget/NumberPicker$CustomEditText;->clearFocus()V

    .line 2032
    :cond_9
    return-void
.end method
