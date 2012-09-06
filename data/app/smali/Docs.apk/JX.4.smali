.class LJX;
.super Ljava/lang/Object;
.source "Curtains.java"


# instance fields
.field final synthetic a:LJW;


# direct methods
.method constructor <init>(LJW;)V
    .registers 2
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, LJX;->a:LJW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setAlpha(I)V
    .registers 4
    .parameter
    .annotation build Lcom/google/android/apps/docs/KeepAfterProguard;
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, LJX;->a:LJW;

    invoke-static {v0, p1}, LJW;->a(LJW;I)I

    move-result v0

    .line 72
    iget-object v1, p0, LJX;->a:LJW;

    invoke-static {v1}, LJW;->a(LJW;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 73
    iget-object v1, p0, LJX;->a:LJW;

    invoke-static {v1}, LJW;->b(LJW;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 74
    return-void
.end method
