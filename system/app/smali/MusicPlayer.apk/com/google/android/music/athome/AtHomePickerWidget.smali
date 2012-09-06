.class public Lcom/google/android/music/athome/AtHomePickerWidget;
.super Landroid/widget/ImageView;
.source "AtHomePickerWidget.java"


# static fields
.field private static final IMAGES:[[I


# instance fields
.field private mIsActive:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [[I

    new-array v1, v4, [I

    const v2, 0x7f02013f

    aput v2, v1, v3

    aput-object v1, v0, v3

    new-array v1, v4, [I

    const v2, 0x7f020140

    aput v2, v1, v3

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/music/athome/AtHomePickerWidget;->IMAGES:[[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/athome/AtHomePickerWidget;->mIsActive:Z

    .line 40
    new-instance v0, Lcom/google/android/music/FadingColorDrawable;

    invoke-direct {v0, p1, p0}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/AtHomePickerWidget;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    return-void
.end method


# virtual methods
.method public setActive(Z)V
    .registers 2
    .parameter "newActiveFlag"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/google/android/music/athome/AtHomePickerWidget;->mIsActive:Z

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/android/music/athome/AtHomePickerWidget;->updateImage(Z)V

    .line 46
    return-void
.end method

.method public updateImage(Z)V
    .registers 6
    .parameter "active"

    .prologue
    const/4 v2, 0x0

    .line 49
    if-eqz p1, :cond_13

    const/4 v1, 0x1

    .line 51
    .local v1, imageIndex:I
    :goto_4
    sget-object v3, Lcom/google/android/music/athome/AtHomePickerWidget;->IMAGES:[[I

    aget-object v3, v3, v1

    aget v0, v3, v2

    .line 53
    .local v0, imageId:I
    new-instance v2, Lcom/google/android/music/athome/AtHomePickerWidget$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/music/athome/AtHomePickerWidget$1;-><init>(Lcom/google/android/music/athome/AtHomePickerWidget;I)V

    invoke-virtual {p0, v2}, Lcom/google/android/music/athome/AtHomePickerWidget;->post(Ljava/lang/Runnable;)Z

    .line 58
    return-void

    .end local v0           #imageId:I
    .end local v1           #imageIndex:I
    :cond_13
    move v1, v2

    .line 49
    goto :goto_4
.end method
