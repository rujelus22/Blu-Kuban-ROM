.class public final Lcom/google/android/youtube/app/ui/ToolbarHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/app/Dialog;

.field private final b:Landroid/view/View$OnClickListener;

.field private c:Ljava/lang/Object;


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ToolbarHelper;->c:Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ToolbarHelper;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 236
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ToolbarHelper;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 131
    return-void
.end method

.method public final b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ToolbarHelper;->c:Ljava/lang/Object;

    return-object v0
.end method
