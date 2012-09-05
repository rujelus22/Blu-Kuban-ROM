.class public Lcom/sec/android/app/clockpackage/timer/NumberImageView;
.super Landroid/widget/ImageView;
.source "NumberImageView.java"


# instance fields
.field private isPressed:Z

.field private number:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method


# virtual methods
.method public setNumber(I)V
    .registers 3
    .parameter "number"

    .prologue
    .line 52
    iput p1, p0, Lcom/sec/android/app/clockpackage/timer/NumberImageView;->number:I

    .line 54
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/timer/NumberImageView;->isPressed:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->selectedTimeNumber:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    :goto_a
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/NumberImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    return-void

    .line 54
    :cond_e
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->timeNumber:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    goto :goto_a
.end method

.method public setPressed(Z)V
    .registers 4
    .parameter "isPressed"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/timer/NumberImageView;->isPressed:Z

    .line 66
    if-eqz p1, :cond_e

    sget-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->selectedTimeNumber:[Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/sec/android/app/clockpackage/timer/NumberImageView;->number:I

    aget-object v0, v0, v1

    :goto_a
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/timer/NumberImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    return-void

    .line 66
    :cond_e
    sget-object v0, Lcom/sec/android/app/clockpackage/timer/Timer;->timeNumber:[Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/sec/android/app/clockpackage/timer/NumberImageView;->number:I

    aget-object v0, v0, v1

    goto :goto_a
.end method
