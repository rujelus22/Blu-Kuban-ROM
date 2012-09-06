.class public LNz;
.super Ljava/lang/Object;
.source "PunchWebViewActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, LNz;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, LNz;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a:Lck;

    iget-object v1, p0, LNz;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 103
    iget-object v0, p0, LNz;->a:Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;->a(Lcom/google/android/apps/docs/punchwebview/PunchWebViewActivity;)V

    .line 104
    const/4 v0, 0x1

    return v0
.end method
