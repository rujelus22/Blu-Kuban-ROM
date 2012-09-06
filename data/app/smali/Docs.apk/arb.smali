.class public Larb;
.super Ljava/lang/Object;
.source "PreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/userfeedback/android/api/PreviewActivity;


# direct methods
.method public constructor <init>(Lcom/google/userfeedback/android/api/PreviewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Larb;->a:Lcom/google/userfeedback/android/api/PreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Larb;->a:Lcom/google/userfeedback/android/api/PreviewActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/PreviewActivity;->setResult(I)V

    .line 72
    iget-object v0, p0, Larb;->a:Lcom/google/userfeedback/android/api/PreviewActivity;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/PreviewActivity;->finish()V

    .line 73
    return-void
.end method
