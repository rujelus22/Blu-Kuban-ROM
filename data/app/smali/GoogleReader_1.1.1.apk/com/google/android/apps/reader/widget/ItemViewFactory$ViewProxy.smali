.class Lcom/google/android/apps/reader/widget/ItemViewFactory$ViewProxy;
.super Ljava/lang/Object;
.source "ItemViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/widget/ItemViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewProxy"
.end annotation


# instance fields
.field private final mView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Lcom/google/android/apps/reader/widget/ItemViewFactory$ViewProxy;->mView:Landroid/webkit/WebView;

    .line 212
    return-void
.end method


# virtual methods
.method public hasBorder()Z
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/ItemViewFactory$ViewProxy;->mView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
