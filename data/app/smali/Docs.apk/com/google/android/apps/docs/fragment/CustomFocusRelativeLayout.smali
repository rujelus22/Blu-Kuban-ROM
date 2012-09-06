.class public Lcom/google/android/apps/docs/fragment/CustomFocusRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "CustomFocusRelativeLayout.java"


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/CustomFocusRelativeLayout;->a:Ljava/util/Set;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/CustomFocusRelativeLayout;->a:Ljava/util/Set;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/fragment/CustomFocusRelativeLayout;->a:Ljava/util/Set;

    .line 30
    return-void
.end method

.method private a(ZI)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 59
    if-eqz p1, :cond_c

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CustomFocusRelativeLayout;->a:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 64
    :goto_b
    return-void

    .line 62
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CustomFocusRelativeLayout;->a:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b
.end method


# virtual methods
.method public focusSearch(I)Landroid/view/View;
    .registers 4
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/docs/fragment/CustomFocusRelativeLayout;->a:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 35
    const/4 v0, 0x0

    .line 37
    :goto_d
    return-object v0

    :cond_e
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    goto :goto_d
.end method

.method public setNextFocusDownEnabled(Z)V
    .registers 3
    .parameter

    .prologue
    .line 55
    const/16 v0, 0x82

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/docs/fragment/CustomFocusRelativeLayout;->a(ZI)V

    .line 56
    return-void
.end method

.method public setNextFocusLeftEnabled(Z)V
    .registers 3
    .parameter

    .prologue
    .line 43
    const/16 v0, 0x11

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/docs/fragment/CustomFocusRelativeLayout;->a(ZI)V

    .line 44
    return-void
.end method

.method public setNextFocusRightEnabled(Z)V
    .registers 3
    .parameter

    .prologue
    .line 47
    const/16 v0, 0x42

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/docs/fragment/CustomFocusRelativeLayout;->a(ZI)V

    .line 48
    return-void
.end method

.method public setNextFocusUpEnabled(Z)V
    .registers 3
    .parameter

    .prologue
    .line 51
    const/16 v0, 0x21

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/docs/fragment/CustomFocusRelativeLayout;->a(ZI)V

    .line 52
    return-void
.end method
