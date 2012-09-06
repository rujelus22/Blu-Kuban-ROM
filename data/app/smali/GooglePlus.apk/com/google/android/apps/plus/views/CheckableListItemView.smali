.class public abstract Lcom/google/android/apps/plus/views/CheckableListItemView;
.super Landroid/view/ViewGroup;
.source "CheckableListItemView.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/CheckableListItemView$OnItemCheckedChangeListener;
    }
.end annotation


# static fields
.field protected static final sBoldSpan:Landroid/text/style/StyleSpan;

.field private static sCheckedStateBackground:Landroid/graphics/drawable/Drawable;

.field protected static sColorSpan:Landroid/text/style/ForegroundColorSpan;


# instance fields
.field protected mCheckBox:Landroid/widget/CheckBox;

.field protected mCheckBoxVisible:Z

.field protected mChecked:Z

.field private mListener:Lcom/google/android/apps/plus/views/CheckableListItemView$OnItemCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 36
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    sput-object v0, Lcom/google/android/apps/plus/views/CheckableListItemView;->sBoldSpan:Landroid/text/style/StyleSpan;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/CheckableListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    sget-object v1, Lcom/google/android/apps/plus/views/CheckableListItemView;->sCheckedStateBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_26

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0201bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/CheckableListItemView;->sCheckedStateBackground:Landroid/graphics/drawable/Drawable;

    .line 64
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const v2, 0x7f0a004c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v1, Lcom/google/android/apps/plus/views/CheckableListItemView;->sColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 67
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_26
    return-void
.end method


# virtual methods
.method protected drawBackground(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .parameter "canvas"
    .parameter "background"

    .prologue
    const/4 v2, 0x0

    .line 164
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CheckableListItemView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CheckableListItemView;->getHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 165
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 166
    return-void
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBoxVisible:Z

    if-eqz v0, :cond_b

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 100
    :goto_a
    return v0

    :cond_b
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mChecked:Z

    goto :goto_a
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mListener:Lcom/google/android/apps/plus/views/CheckableListItemView$OnItemCheckedChangeListener;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/google/android/apps/plus/views/CheckableListItemView$OnItemCheckedChangeListener;->onItemCheckedChanged(Lcom/google/android/apps/plus/views/CheckableListItemView;Z)V

    .line 147
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBoxVisible:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mChecked:Z

    if-eqz v0, :cond_d

    .line 155
    sget-object v0, Lcom/google/android/apps/plus/views/CheckableListItemView;->sCheckedStateBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/plus/views/CheckableListItemView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    .line 157
    :cond_d
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 158
    return-void
.end method

.method public setCheckBoxVisible(Z)V
    .registers 5
    .parameter "visible"

    .prologue
    const/4 v2, 0x0

    .line 73
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBoxVisible:Z

    .line 74
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBoxVisible:Z

    if-eqz v0, :cond_2b

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_25

    .line 76
    new-instance v0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CheckableListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 79
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/CheckableListItemView;->addView(Landroid/view/View;)V

    .line 81
    :cond_25
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 85
    :cond_2a
    :goto_2a
    return-void

    .line 82
    :cond_2b
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2a

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_2a
.end method

.method public setChecked(Z)V
    .registers 3
    .parameter "checked"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBoxVisible:Z

    if-eqz v0, :cond_a

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 118
    :cond_9
    :goto_9
    return-void

    .line 111
    :cond_a
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mChecked:Z

    if-eq p1, v0, :cond_9

    .line 112
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mChecked:Z

    .line 115
    if-nez p1, :cond_1a

    const/4 v0, 0x1

    :goto_13
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/CheckableListItemView;->setWillNotDraw(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CheckableListItemView;->invalidate()V

    goto :goto_9

    .line 115
    :cond_1a
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public setEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 127
    return-void
.end method

.method public setOnItemCheckedChangeListener(Lcom/google/android/apps/plus/views/CheckableListItemView$OnItemCheckedChangeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mListener:Lcom/google/android/apps/plus/views/CheckableListItemView$OnItemCheckedChangeListener;

    .line 90
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBoxVisible:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 139
    :goto_11
    return-void

    .line 137
    :cond_12
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mChecked:Z

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_17
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mChecked:Z

    goto :goto_11

    :cond_1a
    const/4 v0, 0x0

    goto :goto_17
.end method
