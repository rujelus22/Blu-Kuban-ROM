.class public Lee;
.super Ljava/lang/Object;
.source "CreateNewDocActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/CreateNewDocActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/CreateNewDocActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lee;->a:Lcom/google/android/apps/docs/app/CreateNewDocActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lee;->a:Lcom/google/android/apps/docs/app/CreateNewDocActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->setResult(I)V

    .line 87
    iget-object v0, p0, Lee;->a:Lcom/google/android/apps/docs/app/CreateNewDocActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->finish()V

    .line 88
    return-void
.end method
