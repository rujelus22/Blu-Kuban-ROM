.class LwX;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"

# interfaces
.implements Lany;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lany",
        "<",
        "Lcom/google/android/apps/docs/editors/kix/UnsavedChangesDialogFragment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LwU;


# direct methods
.method constructor <init>(LwU;)V
    .registers 2
    .parameter

    .prologue
    .line 530
    iput-object p1, p0, LwX;->a:LwU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/editors/kix/UnsavedChangesDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 533
    invoke-static {p1}, Lxh;->a(Lcom/google/android/apps/docs/editors/kix/UnsavedChangesDialogFragment;)V

    .line 535
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 530
    check-cast p1, Lcom/google/android/apps/docs/editors/kix/UnsavedChangesDialogFragment;

    invoke-virtual {p0, p1}, LwX;->a(Lcom/google/android/apps/docs/editors/kix/UnsavedChangesDialogFragment;)V

    return-void
.end method
