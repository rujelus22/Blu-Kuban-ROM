.class public Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;
.super Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;
.source "EventDetailOptionRowInstantShare.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static sAfterInstantDescription:Ljava/lang/String;

.field private static sBeforeInstantDescription:Ljava/lang/String;

.field private static sInitialized:Z

.field private static sInstantShareDrawable:Landroid/graphics/drawable/Drawable;

.field private static sInstantTitle:Ljava/lang/String;


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mEventState:Lcom/google/android/apps/plus/fragments/EventActiveState;

.field private mInstantIcon:Landroid/widget/ImageView;

.field private mListener:Lcom/google/android/apps/plus/views/EventActionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/apps/plus/fragments/EventActiveState;)V
    .registers 6
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 79
    iput-object p1, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->mEventState:Lcom/google/android/apps/plus/fragments/EventActiveState;

    .line 81
    iget-boolean v0, p1, Lcom/google/android/apps/plus/fragments/EventActiveState;->isInstantShareExpired:Z

    if-nez v0, :cond_27

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v1, p1, Lcom/google/android/apps/plus/fragments/EventActiveState;->isInstantShareEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->setClickable(Z)V

    .line 90
    :goto_17
    sget-object v1, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->sInstantTitle:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/google/android/apps/plus/fragments/EventActiveState;->isInstantShareExpired:Z

    if-eqz v0, :cond_32

    sget-object v0, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->sAfterInstantDescription:Ljava/lang/String;

    :goto_1f
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->mInstantIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->mCheckBox:Landroid/widget/CheckBox;

    invoke-super {p0, v1, v0, v2, v3}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->bind(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/view/View;)V

    .line 92
    return-void

    .line 86
    :cond_27
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 87
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->setClickable(Z)V

    goto :goto_17

    .line 90
    :cond_32
    sget-object v0, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->sBeforeInstantDescription:Ljava/lang/String;

    goto :goto_1f
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/EventDetailsOptionRowLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    sget-boolean v1, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->sInitialized:Z

    if-nez v1, :cond_34

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0201a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->sInstantShareDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    const v1, 0x7f080153

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->sBeforeInstantDescription:Ljava/lang/String;

    .line 57
    const v1, 0x7f080154

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->sAfterInstantDescription:Ljava/lang/String;

    .line 59
    const v1, 0x7f080152

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->sInstantTitle:Ljava/lang/String;

    .line 60
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->sInitialized:Z

    .line 63
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_34
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->mInstantIcon:Landroid/widget/ImageView;

    .line 64
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->mInstantIcon:Landroid/widget/ImageView;

    sget-object v2, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->sInstantShareDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    new-instance v1, Landroid/widget/CheckBox;

    invoke-direct {v1, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->mCheckBox:Landroid/widget/CheckBox;

    .line 67
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 70
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 71
    invoke-virtual {p0, p0}, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 99
    if-ne p0, p1, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->mListener:Lcom/google/android/apps/plus/views/EventActionListener;

    if-eqz v0, :cond_12

    .line 100
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->mListener:Lcom/google/android/apps/plus/views/EventActionListener;

    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->mEventState:Lcom/google/android/apps/plus/fragments/EventActiveState;

    iget-boolean v0, v0, Lcom/google/android/apps/plus/fragments/EventActiveState;->isInstantShareEnabled:Z

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_f
    invoke-interface {v1, v0}, Lcom/google/android/apps/plus/views/EventActionListener;->onInstantShareToggle(Z)V

    .line 102
    :cond_12
    return-void

    .line 100
    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setListener(Lcom/google/android/apps/plus/views/EventActionListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/apps/plus/views/EventDetailOptionRowInstantShare;->mListener:Lcom/google/android/apps/plus/views/EventActionListener;

    .line 76
    return-void
.end method
