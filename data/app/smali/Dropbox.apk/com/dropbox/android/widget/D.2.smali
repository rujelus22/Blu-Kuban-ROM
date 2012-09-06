.class final Lcom/dropbox/android/widget/D;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/FileItemView;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/FileItemView;)V
    .registers 2
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/dropbox/android/widget/D;->a:Lcom/dropbox/android/widget/FileItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 493
    iget-object v0, p0, Lcom/dropbox/android/widget/D;->a:Lcom/dropbox/android/widget/FileItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/FileItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 494
    return-void
.end method
