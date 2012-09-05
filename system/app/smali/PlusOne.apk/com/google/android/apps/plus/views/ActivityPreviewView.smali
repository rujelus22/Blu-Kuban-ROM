.class public Lcom/google/android/apps/plus/views/ActivityPreviewView;
.super Landroid/widget/FrameLayout;
.source "ActivityPreviewView.java"


# instance fields
.field private mActivity:Lcom/google/android/apps/plus/network/ApiaryActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 24
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method


# virtual methods
.method public getActivity()Lcom/google/android/apps/plus/network/ApiaryActivity;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ActivityPreviewView;->mActivity:Lcom/google/android/apps/plus/network/ApiaryActivity;

    return-object v0
.end method

.method public setActivity(Lcom/google/android/apps/plus/network/ApiaryActivity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ActivityPreviewView;->mActivity:Lcom/google/android/apps/plus/network/ApiaryActivity;

    .line 51
    return-void
.end method
