.class public Lcom/google/android/apps/plus/views/CardLayout;
.super Landroid/widget/RelativeLayout;
.source "CardLayout.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/Recyclable;


# static fields
.field private static sInitialized:Z

.field private static sPaddingBottom:I

.field private static sPaddingLeft:I

.field private static sPaddingRight:I

.field private static sPaddingTop:I

.field protected static sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/views/CardLayout;->init(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/views/CardLayout;->init(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/views/CardLayout;->init(Landroid/content/Context;)V

    .line 39
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 1

    .prologue
    .line 64
    return-void
.end method

.method protected init(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 42
    sget-boolean v1, Lcom/google/android/apps/plus/views/CardLayout;->sInitialized:Z

    if-nez v1, :cond_39

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0d01a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/CardLayout;->sPaddingLeft:I

    .line 45
    const v1, 0x7f0d01a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/CardLayout;->sPaddingTop:I

    .line 46
    const v1, 0x7f0d01a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/CardLayout;->sPaddingRight:I

    .line 47
    const v1, 0x7f0d01aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/CardLayout;->sPaddingBottom:I

    .line 48
    invoke-static {p1}, Lcom/google/android/apps/plus/phone/ScreenMetrics;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ScreenMetrics;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/CardLayout;->sScreenMetrics:Lcom/google/android/apps/plus/phone/ScreenMetrics;

    .line 50
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/apps/plus/views/CardLayout;->sInitialized:Z

    .line 54
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_39
    const v1, 0x7f020026

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/CardLayout;->setBackgroundResource(I)V

    .line 55
    sget v1, Lcom/google/android/apps/plus/views/CardLayout;->sPaddingLeft:I

    sget v2, Lcom/google/android/apps/plus/views/CardLayout;->sPaddingTop:I

    sget v3, Lcom/google/android/apps/plus/views/CardLayout;->sPaddingRight:I

    sget v4, Lcom/google/android/apps/plus/views/CardLayout;->sPaddingBottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/views/CardLayout;->setPadding(IIII)V

    .line 56
    return-void
.end method

.method public onRecycle()V
    .registers 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CardLayout;->clear()V

    .line 61
    return-void
.end method
