.class public Lcom/sec/android/app/music/widget/CheckedRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "CheckedRelativeLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mCheckable:Landroid/widget/Checkable;

.field private mCheckableId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const-string v0, "http://schemas.android.com/apk/res/com.sec.android.app.music"

    const-string v1, "checkableId"

    const/4 v2, 0x0

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/widget/CheckedRelativeLayout;->mCheckableId:I

    .line 36
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .registers 2

    .prologue
    .line 40
    iget v0, p0, Lcom/sec/android/app/music/widget/CheckedRelativeLayout;->mCheckableId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/widget/CheckedRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/sec/android/app/music/widget/CheckedRelativeLayout;->mCheckable:Landroid/widget/Checkable;

    .line 41
    iget-object v0, p0, Lcom/sec/android/app/music/widget/CheckedRelativeLayout;->mCheckable:Landroid/widget/Checkable;

    if-eqz v0, :cond_15

    .line 42
    iget-object v0, p0, Lcom/sec/android/app/music/widget/CheckedRelativeLayout;->mCheckable:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    .line 44
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public setChecked(Z)V
    .registers 3
    .parameter "checked"

    .prologue
    .line 56
    iget v0, p0, Lcom/sec/android/app/music/widget/CheckedRelativeLayout;->mCheckableId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/widget/CheckedRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/sec/android/app/music/widget/CheckedRelativeLayout;->mCheckable:Landroid/widget/Checkable;

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/music/widget/CheckedRelativeLayout;->mCheckable:Landroid/widget/Checkable;

    if-eqz v0, :cond_13

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/music/widget/CheckedRelativeLayout;->mCheckable:Landroid/widget/Checkable;

    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 60
    :cond_13
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lcom/sec/android/app/music/widget/CheckedRelativeLayout;->mCheckableId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/widget/CheckedRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lcom/sec/android/app/music/widget/CheckedRelativeLayout;->mCheckable:Landroid/widget/Checkable;

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/music/widget/CheckedRelativeLayout;->mCheckable:Landroid/widget/Checkable;

    if-eqz v0, :cond_13

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/music/widget/CheckedRelativeLayout;->mCheckable:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    .line 68
    :cond_13
    return-void
.end method
