.class public Lho;
.super Ljava/lang/Object;
.source "RetriesExceededActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/RetriesExceededActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/RetriesExceededActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lho;->a:Lcom/google/android/apps/docs/app/RetriesExceededActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lho;->a:Lcom/google/android/apps/docs/app/RetriesExceededActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/app/RetriesExceededActivity;->finish()V

    .line 72
    return-void
.end method
