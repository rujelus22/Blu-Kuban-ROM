.class public Lcom/google/android/apps/books/app/IcsApis;
.super Ljava/lang/Object;
.source "IcsApis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/IcsApis$HoverListenerWrapper;,
        Lcom/google/android/apps/books/app/IcsApis$BooksOnHoverListener;,
        Lcom/google/android/apps/books/app/IcsApis$ActionExpandWrapper;,
        Lcom/google/android/apps/books/app/IcsApis$BooksOnActionExpandListener;
    }
.end annotation


# static fields
.field public static ACTION_HOVER_ENTER:I

.field public static ACTION_HOVER_EXIT:I

.field public static ACTION_HOVER_MOVE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 82
    const/16 v0, 0x9

    sput v0, Lcom/google/android/apps/books/app/IcsApis;->ACTION_HOVER_ENTER:I

    .line 83
    const/4 v0, 0x7

    sput v0, Lcom/google/android/apps/books/app/IcsApis;->ACTION_HOVER_MOVE:I

    .line 84
    const/16 v0, 0xa

    sput v0, Lcom/google/android/apps/books/app/IcsApis;->ACTION_HOVER_EXIT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method


# virtual methods
.method public collapseActionView(Landroid/view/MenuItem;)V
    .registers 2
    .parameter "item"

    .prologue
    .line 56
    invoke-interface {p1}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 57
    return-void
.end method

.method public expandActionView(Landroid/view/MenuItem;)V
    .registers 2
    .parameter "item"

    .prologue
    .line 52
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 53
    return-void
.end method

.method public isAccessibilityEnabled(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    .line 64
    const-string v2, "accessibility"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 66
    .local v1, am:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 67
    .local v0, accessibilityEnabled:Z
    return v0
.end method

.method public isScreenReaderActive(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 74
    const-string v3, "accessibility"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 76
    .local v0, am:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v2

    .line 78
    .local v2, screenReaders:Ljava/util/List;,"Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    .line 79
    .local v1, hasScreenReader:Z
    :goto_13
    return v1

    .line 78
    .end local v1           #hasScreenReader:Z
    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem;Lcom/google/android/apps/books/app/IcsApis$BooksOnActionExpandListener;)V
    .registers 4
    .parameter "item"
    .parameter "listener"

    .prologue
    .line 48
    new-instance v0, Lcom/google/android/apps/books/app/IcsApis$ActionExpandWrapper;

    invoke-direct {v0, p2}, Lcom/google/android/apps/books/app/IcsApis$ActionExpandWrapper;-><init>(Lcom/google/android/apps/books/app/IcsApis$BooksOnActionExpandListener;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 49
    return-void
.end method

.method public setOnHoverListener(Landroid/view/View;Lcom/google/android/apps/books/app/IcsApis$BooksOnHoverListener;)V
    .registers 4
    .parameter "view"
    .parameter "listener"

    .prologue
    .line 102
    new-instance v0, Lcom/google/android/apps/books/app/IcsApis$HoverListenerWrapper;

    invoke-direct {v0, p2}, Lcom/google/android/apps/books/app/IcsApis$HoverListenerWrapper;-><init>(Lcom/google/android/apps/books/app/IcsApis$BooksOnHoverListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 103
    return-void
.end method
