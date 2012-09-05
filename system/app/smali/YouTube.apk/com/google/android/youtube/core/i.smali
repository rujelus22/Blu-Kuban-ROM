.class final Lcom/google/android/youtube/core/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/LicensesActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/LicensesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/android/youtube/core/i;->a:Lcom/google/android/youtube/core/LicensesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    const/16 v0, 0x6f

    if-ne p2, v0, :cond_b

    .line 60
    iget-object v0, p0, Lcom/google/android/youtube/core/i;->a:Lcom/google/android/youtube/core/LicensesActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/LicensesActivity;->finish()V

    .line 61
    const/4 v0, 0x1

    .line 63
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
