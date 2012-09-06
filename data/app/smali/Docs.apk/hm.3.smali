.class public Lhm;
.super Ljava/lang/Object;
.source "RetriesExceededActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/RetriesExceededActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/RetriesExceededActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lhm;->a:Lcom/google/android/apps/docs/app/RetriesExceededActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lhm;->a:Lcom/google/android/apps/docs/app/RetriesExceededActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/RetriesExceededActivity;->a:Lck;

    iget-object v1, p0, Lhm;->a:Lcom/google/android/apps/docs/app/RetriesExceededActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 61
    iget-object v0, p0, Lhm;->a:Lcom/google/android/apps/docs/app/RetriesExceededActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/RetriesExceededActivity;->a:Lmi;

    invoke-interface {v0}, Lmi;->a()V

    .line 62
    iget-object v0, p0, Lhm;->a:Lcom/google/android/apps/docs/app/RetriesExceededActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/app/RetriesExceededActivity;->e()V

    .line 63
    iget-object v0, p0, Lhm;->a:Lcom/google/android/apps/docs/app/RetriesExceededActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/app/RetriesExceededActivity;->finish()V

    .line 64
    return-void
.end method
