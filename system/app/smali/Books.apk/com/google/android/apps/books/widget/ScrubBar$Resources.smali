.class public Lcom/google/android/apps/books/widget/ScrubBar$Resources;
.super Ljava/lang/Object;
.source "ScrubBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/widget/ScrubBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resources"
.end annotation


# instance fields
.field public calloutArrow:Landroid/view/View;

.field public calloutView:Landroid/view/View;

.field public chapterTextView:Landroid/widget/TextView;

.field public knobView:Landroid/widget/ImageView;

.field public maskView:Landroid/view/View;

.field public pageTextView:Landroid/widget/TextView;

.field public trackView:Lcom/google/android/apps/books/widget/ScrubTrackView;

.field public undoTargetView:Landroid/view/View;

.field public undoView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
