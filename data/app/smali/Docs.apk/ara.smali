.class public Lara;
.super Ljava/lang/Object;
.source "PreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic a:Lcom/google/userfeedback/android/api/PreviewActivity;


# direct methods
.method public constructor <init>(Lcom/google/userfeedback/android/api/PreviewActivity;Landroid/app/Activity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lara;->a:Lcom/google/userfeedback/android/api/PreviewActivity;

    iput-object p2, p0, Lara;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    .line 51
    invoke-static {}, Larm;->a()Larm;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lara;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Larm;->a()Z

    move-result v2

    invoke-virtual {v0}, Larm;->b()Z

    move-result v3

    invoke-virtual {v0}, Larm;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Larm;->a(Landroid/app/Activity;ZZLjava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    .line 54
    if-nez v1, :cond_38

    .line 55
    invoke-virtual {v0}, Larm;->a()Z

    move-result v1

    invoke-virtual {v0}, Larm;->b()Z

    move-result v2

    invoke-virtual {v0}, Larm;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Larm;->a(ZZLjava/lang/String;)V

    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 58
    iget-object v1, p0, Lara;->a:Lcom/google/userfeedback/android/api/PreviewActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/google/userfeedback/android/api/PreviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 59
    iget-object v0, p0, Lara;->a:Lcom/google/userfeedback/android/api/PreviewActivity;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/PreviewActivity;->finish()V

    .line 63
    :goto_37
    return-void

    .line 61
    :cond_38
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_37
.end method
