.class public final Lyq;
.super Ljava/lang/Object;
.source "SavedStateFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lyq;->a:Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;Lyp;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lyq;-><init>(Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lyq;->a:Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 101
    iget-object v0, p0, Lyq;->a:Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;->a(Lcom/google/android/apps/docs/editors/kix/SavedStateFragment;)V

    .line 103
    :cond_d
    return-void
.end method
