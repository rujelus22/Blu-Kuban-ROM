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
.field private static final sBoldSpan:Landroid/text/style/StyleSpan;

.field private static sCheckedStateBackground:Landroid/graphics/drawable/Drawable;

.field private static sColorSpan:Landroid/text/style/ForegroundColorSpan;


# instance fields
.field protected mCheckBox:Landroid/widget/CheckBox;

.field protected mCheckBoxVisible:Z

.field protected mChecked:Z

.field private mListener:Lcom/google/android/apps/plus/views/CheckableListItemView$OnItemCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39
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
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/CheckableListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    sget-object v1, Lcom/google/android/apps/plus/views/CheckableListItemView;->sCheckedStateBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_26

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0200da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/CheckableListItemView;->sCheckedStateBackground:Landroid/graphics/drawable/Drawable;

    .line 67
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const v2, 0x7f09002b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v1, Lcom/google/android/apps/plus/views/CheckableListItemView;->sColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 70
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

    .line 158
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CheckableListItemView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CheckableListItemView;->getHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 159
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 160
    return-void
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBoxVisible:Z

    if-eqz v0, :cond_b

    .line 101
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 103
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
    .line 140
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mListener:Lcom/google/android/apps/plus/views/CheckableListItemView$OnItemCheckedChangeListener;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/google/android/apps/plus/views/CheckableListItemView$OnItemCheckedChangeListener;->onItemCheckedChanged(Lcom/google/android/apps/plus/views/CheckableListItemView;Z)V

    .line 141
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBoxVisible:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mChecked:Z

    if-eqz v0, :cond_d

    .line 149
    sget-object v0, Lcom/google/android/apps/plus/views/CheckableListItemView;->sCheckedStateBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/plus/views/CheckableListItemView;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    .line 151
    :cond_d
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 152
    return-void
.end method

.method public setCheckBoxVisible(Z)V
    .registers 5
    .parameter "visible"

    .prologue
    const/4 v2, 0x0

    .line 76
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBoxVisible:Z

    .line 77
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBoxVisible:Z

    if-eqz v0, :cond_2b

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_25

    .line 79
    new-instance v0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CheckableListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/CheckableListItemView;->addView(Landroid/view/View;)V

    .line 84
    :cond_25
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 88
    :cond_2a
    :goto_2a
    return-void

    .line 85
    :cond_2b
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2a

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_2a
.end method

.method public setChecked(Z)V
    .registers 3
    .parameter "checked"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBoxVisible:Z

    if-eqz v0, :cond_a

    .line 113
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 121
    :cond_9
    :goto_9
    return-void

    .line 114
    :cond_a
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mChecked:Z

    if-eq p1, v0, :cond_9

    .line 115
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mChecked:Z

    .line 118
    if-nez p1, :cond_1a

    const/4 v0, 0x1

    :goto_13
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/CheckableListItemView;->setWillNotDraw(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CheckableListItemView;->invalidate()V

    goto :goto_9

    .line 118
    :cond_1a
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public setOnItemCheckedChangeListener(Lcom/google/android/apps/plus/views/CheckableListItemView$OnItemCheckedChangeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mListener:Lcom/google/android/apps/plus/views/CheckableListItemView$OnItemCheckedChangeListener;

    .line 93
    return-void
.end method

.method protected setTextWithHighlight(Landroid/widget/TextView;Ljava/lang/String;ILandroid/text/SpannableStringBuilder;Ljava/lang/String;)V
    .registers 10
    .parameter "textView"
    .parameter "text"
    .parameter "startIndex"
    .parameter "stringBuilder"
    .parameter "highlightedText"

    .prologue
    const/4 v3, 0x0

    .line 167
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 168
    :cond_d
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :goto_10
    return-void

    .line 172
    :cond_11
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 173
    .local v1, index:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_20

    .line 174
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 178
    :cond_20
    invoke-virtual {p4}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 179
    invoke-virtual {p4, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 180
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    add-int v0, v1, v2

    .line 185
    .local v0, end:I
    invoke-virtual {p4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-le v0, v2, :cond_36

    .line 186
    invoke-virtual {p4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 189
    :cond_36
    sget-object v2, Lcom/google/android/apps/plus/views/CheckableListItemView;->sBoldSpan:Landroid/text/style/StyleSpan;

    invoke-virtual {p4, v2, v1, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 190
    sget-object v2, Lcom/google/android/apps/plus/views/CheckableListItemView;->sColorSpan:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p4, v2, v1, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 191
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBoxVisible:Z

    if-eqz v0, :cond_a

    .line 129
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 133
    :goto_9
    return-void

    .line 131
    :cond_a
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mChecked:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_f
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/CheckableListItemView;->mChecked:Z

    goto :goto_9

    :cond_12
    const/4 v0, 0x0

    goto :goto_f
.end method
