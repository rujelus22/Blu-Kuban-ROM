.class public Lcom/google/android/apps/docs/editors/kix/KixFastScrollView;
.super Lcom/google/android/apps/docs/editors/kix/SimpleFastScrollView;
.source "KixFastScrollView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/docs/editors/kix/SimpleFastScrollView",
        "<",
        "Lcom/google/android/apps/docs/editors/kix/KixEditText;",
        "Lyr",
        "<",
        "Lcom/google/android/apps/docs/editors/kix/KixEditText;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/editors/kix/SimpleFastScrollView;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/docs/editors/kix/SimpleFastScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/docs/editors/kix/SimpleFastScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Landroid/content/Context;Landroid/view/View;)Lyr;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 13
    check-cast p2, Lcom/google/android/apps/docs/editors/kix/KixEditText;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/docs/editors/kix/KixFastScrollView;->a(Landroid/content/Context;Lcom/google/android/apps/docs/editors/kix/KixEditText;)Lyr;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/content/Context;Lcom/google/android/apps/docs/editors/kix/KixEditText;)Lyr;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/docs/editors/kix/KixEditText;",
            ")",
            "Lyr",
            "<",
            "Lcom/google/android/apps/docs/editors/kix/KixEditText;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lyr;

    invoke-direct {v0, p1, p2, p0}, Lyr;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    return-object v0
.end method
