.class public LeK;
.super LcI;
.source "DocumentOpenerActivity.java"


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;Landroid/content/Intent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, LeK;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    iput-object p2, p0, LeK;->a:Landroid/content/Intent;

    invoke-direct {p0}, LcI;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 604
    iget-object v0, p0, LeK;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    iget-object v1, p0, LeK;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;Landroid/content/Intent;)V

    .line 605
    iget-object v0, p0, LeK;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    iget-object v1, p0, LeK;->a:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 606
    iget-object v0, p0, LeK;->a:Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a(Lcom/google/android/apps/docs/app/DocumentOpenerActivity;Z)Z

    .line 607
    return-void
.end method
