.class public abstract Lcom/sec/android/app/myfiles/fileselector/views/MXSoftKey;
.super Landroid/widget/RelativeLayout;
.source "MXSoftKey.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mLeftButton:Landroid/widget/Button;

.field protected mRightButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXSoftKey;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXSoftKey;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXSoftKey;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method


# virtual methods
.method public getLeftButton()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXSoftKey;->mLeftButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getRightButton()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXSoftKey;->mRightButton:Landroid/widget/Button;

    return-object v0
.end method
