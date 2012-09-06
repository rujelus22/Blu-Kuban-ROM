.class public LCS;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/text/TextView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/text/TextView;)V
    .registers 2
    .parameter

    .prologue
    .line 991
    iput-object p1, p0, LCS;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 994
    iget-object v0, p0, LCS;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Lcom/google/android/apps/docs/editors/text/TextView;)LDH;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, LCS;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->b(Lcom/google/android/apps/docs/editors/text/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_27

    .line 995
    iget-object v0, p0, LCS;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->a(Lcom/google/android/apps/docs/editors/text/TextView;)LDH;

    move-result-object v1

    iget-object v2, p0, LCS;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    iget-object v0, p0, LCS;->a:Lcom/google/android/apps/docs/editors/text/TextView;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->b(Lcom/google/android/apps/docs/editors/text/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, v2, v0, p2}, LDH;->a(Lcom/google/android/apps/docs/editors/text/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 997
    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method
