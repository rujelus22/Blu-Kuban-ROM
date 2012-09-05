.class abstract Lcom/android/providers/downloads/ui/saveas/MXSoftKey;
.super Landroid/widget/RelativeLayout;
.source "SecDownloadSaveasUi.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mLeftButton:Landroid/widget/Button;

.field protected mRightButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 767
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 769
    iput-object p1, p0, Lcom/android/providers/downloads/ui/saveas/MXSoftKey;->mContext:Landroid/content/Context;

    .line 771
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 775
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 777
    iput-object p1, p0, Lcom/android/providers/downloads/ui/saveas/MXSoftKey;->mContext:Landroid/content/Context;

    .line 779
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 783
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 785
    iput-object p1, p0, Lcom/android/providers/downloads/ui/saveas/MXSoftKey;->mContext:Landroid/content/Context;

    .line 787
    return-void
.end method
