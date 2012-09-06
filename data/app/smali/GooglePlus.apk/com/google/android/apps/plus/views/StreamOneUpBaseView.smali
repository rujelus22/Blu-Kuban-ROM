.class public Lcom/google/android/apps/plus/views/StreamOneUpBaseView;
.super Landroid/view/View;
.source "StreamOneUpBaseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/StreamOneUpBaseView$OnMeasuredListener;
    }
.end annotation


# instance fields
.field mOnMeasuredListener:Lcom/google/android/apps/plus/views/StreamOneUpBaseView$OnMeasuredListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 1

    .prologue
    .line 56
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 62
    return-void
.end method

.method protected recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 4
    .parameter "action"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpBaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 69
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 70
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_d

    .line 71
    invoke-static {v1, v0, p1}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 73
    :cond_d
    return-void
.end method

.method public setOnMeasureListener(Lcom/google/android/apps/plus/views/StreamOneUpBaseView$OnMeasuredListener;)V
    .registers 2
    .parameter "measuredListener"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/apps/plus/views/StreamOneUpBaseView;->mOnMeasuredListener:Lcom/google/android/apps/plus/views/StreamOneUpBaseView$OnMeasuredListener;

    .line 50
    return-void
.end method
