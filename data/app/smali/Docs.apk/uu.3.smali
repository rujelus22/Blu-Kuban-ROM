.class public Luu;
.super Ljava/lang/Object;
.source "AllDiscussionsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Luu;->a:Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Luu;->a:Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a(Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;)Lmz;

    move-result-object v0

    invoke-interface {v0}, Lmz;->a()Ljava/util/SortedSet;

    move-result-object v0

    .line 75
    if-nez v0, :cond_12

    .line 76
    iget-object v0, p0, Luu;->a:Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a(Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;)V

    .line 80
    :goto_11
    return-void

    .line 78
    :cond_12
    iget-object v1, p0, Luu;->a:Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;

    invoke-static {v1, v0}, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->a(Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;Ljava/util/SortedSet;)V

    goto :goto_11
.end method
