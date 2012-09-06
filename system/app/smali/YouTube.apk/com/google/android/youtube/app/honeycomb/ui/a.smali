.class public final Lcom/google/android/youtube/app/honeycomb/ui/a;
.super Lcom/google/android/youtube/app/ui/br;
.source "SourceFile"


# instance fields
.field private final b:Landroid/util/TypedValue;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/a/a;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/app/ui/br;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/a/a;)V

    .line 21
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/a;->b:Landroid/util/TypedValue;

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x101030e

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/ui/a;->b:Landroid/util/TypedValue;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 24
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/a;->b:Landroid/util/TypedValue;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 29
    return-void
.end method
