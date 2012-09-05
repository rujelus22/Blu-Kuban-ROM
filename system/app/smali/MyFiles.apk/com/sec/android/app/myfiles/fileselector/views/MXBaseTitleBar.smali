.class public Lcom/sec/android/app/myfiles/fileselector/views/MXBaseTitleBar;
.super Landroid/widget/TextView;
.source "MXBaseTitleBar.java"

# interfaces
.implements Lcom/sec/android/app/myfiles/fileselector/views/MXTitleBar;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseTitleBar;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseTitleBar;->mContext:Landroid/content/Context;

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseTitleBar;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method public setTitle(Ljava/lang/String;)V
    .registers 6
    .parameter "title"

    .prologue
    .line 48
    move-object v1, p1

    .line 50
    .local v1, path:Ljava/lang/String;
    move-object v0, p0

    .line 52
    .local v0, mThisView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseTitleBar;
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseTitleBar;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseTitleBar$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseTitleBar$1;-><init>(Lcom/sec/android/app/myfiles/fileselector/views/MXBaseTitleBar;Lcom/sec/android/app/myfiles/fileselector/views/MXBaseTitleBar;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 62
    return-void
.end method
