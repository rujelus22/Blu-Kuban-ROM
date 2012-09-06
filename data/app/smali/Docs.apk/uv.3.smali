.class public Luv;
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
    .line 105
    iput-object p1, p0, Luv;->a:Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Luv;->a:Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;->b(Lcom/google/android/apps/docs/editors/discussion/AllDiscussionsFragment;)V

    .line 109
    return-void
.end method
