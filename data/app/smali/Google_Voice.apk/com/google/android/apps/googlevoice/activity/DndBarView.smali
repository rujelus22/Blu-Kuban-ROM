.class public Lcom/google/android/apps/googlevoice/activity/DndBarView;
.super Landroid/widget/FrameLayout;
.source "DndBarView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/googlevoice/activity/DndBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public update(Lcom/google/android/apps/googlevoice/settings/ServerSettings;)V
    .registers 4
    .parameter "serverSettings"

    .prologue
    .line 34
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/settings/ServerSettings;->getDoNotDisturb()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x0

    .line 35
    .local v0, visibility:I
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/activity/DndBarView;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_10

    .line 36
    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/activity/DndBarView;->setVisibility(I)V

    .line 38
    :cond_10
    return-void

    .line 34
    .end local v0           #visibility:I
    :cond_11
    const/16 v0, 0x8

    goto :goto_7
.end method
