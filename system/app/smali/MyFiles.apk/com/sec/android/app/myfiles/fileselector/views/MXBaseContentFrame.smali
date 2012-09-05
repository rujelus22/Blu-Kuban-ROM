.class public Lcom/sec/android/app/myfiles/fileselector/views/MXBaseContentFrame;
.super Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;
.source "MXBaseContentFrame.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseContentFrame;->initViews()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseContentFrame;->initViews()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseContentFrame;->initViews()V

    .line 44
    return-void
.end method

.method private initViews()V
    .registers 2

    .prologue
    .line 48
    const-string v0, "mx_content_list"

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->mCurrentViewMode:Ljava/lang/String;

    .line 50
    return-void
.end method
