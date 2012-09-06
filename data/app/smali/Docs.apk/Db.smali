.class public LDb;
.super Ljava/lang/Object;
.source "TextView.java"


# instance fields
.field public a:I

.field public final a:Landroid/graphics/Rect;

.field public a:Landroid/graphics/drawable/Drawable;

.field final synthetic a:Lcom/google/android/apps/docs/editors/text/TextView;

.field public b:I

.field public b:Landroid/graphics/drawable/Drawable;

.field public c:I

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:I

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/text/TextView;)V
    .registers 3
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, LDb;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, LDb;->a:Landroid/graphics/Rect;

    return-void
.end method
