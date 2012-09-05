.class public Lcom/google/android/apps/plus/phone/PhotosFromPhoneListView;
.super Landroid/widget/ListView;
.source "PhotosFromPhoneListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/PhotosFromPhoneListView$OnMeasuredListener;
    }
.end annotation


# instance fields
.field private mOnMeasuredListener:Lcom/google/android/apps/plus/phone/PhotosFromPhoneListView$OnMeasuredListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .registers 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 42
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneListView;->mOnMeasuredListener:Lcom/google/android/apps/plus/phone/PhotosFromPhoneListView$OnMeasuredListener;

    if-eqz v0, :cond_c

    .line 43
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneListView;->mOnMeasuredListener:Lcom/google/android/apps/plus/phone/PhotosFromPhoneListView$OnMeasuredListener;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneListView$OnMeasuredListener;->onMeasured(Lcom/google/android/apps/plus/phone/PhotosFromPhoneListView;)V

    .line 45
    :cond_c
    return-void
.end method

.method public setOnMeasuredListener(Lcom/google/android/apps/plus/phone/PhotosFromPhoneListView$OnMeasuredListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneListView;->mOnMeasuredListener:Lcom/google/android/apps/plus/phone/PhotosFromPhoneListView$OnMeasuredListener;

    .line 53
    return-void
.end method
