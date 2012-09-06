.class public LKM;
.super Ljava/lang/Object;
.source "ScrubBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/kixwebview/ScrubBar;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/kixwebview/ScrubBar;)V
    .registers 2
    .parameter

    .prologue
    .line 618
    iput-object p1, p0, LKM;->a:Lcom/google/android/apps/docs/kixwebview/ScrubBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 621
    iget-object v0, p0, LKM;->a:Lcom/google/android/apps/docs/kixwebview/ScrubBar;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a(Lcom/google/android/apps/docs/kixwebview/ScrubBar;)LKN;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 622
    iget-object v0, p0, LKM;->a:Lcom/google/android/apps/docs/kixwebview/ScrubBar;

    invoke-static {v0}, Lcom/google/android/apps/docs/kixwebview/ScrubBar;->a(Lcom/google/android/apps/docs/kixwebview/ScrubBar;)LKN;

    move-result-object v0

    invoke-interface {v0}, LKN;->a()V

    .line 624
    :cond_11
    return-void
.end method
