.class public LEz;
.super Ljava/lang/Object;
.source "TrixNativeDemoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, LEz;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 136
    iget-object v0, p0, LEz;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->a:Lck;

    iget-object v1, p0, LEz;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 137
    iget-object v0, p0, LEz;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;

    iget-object v1, p0, LEz;->a:Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;

    iget-object v1, v1, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->a:LEK;

    invoke-virtual {v1}, LEK;->a()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;->a(Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;I)V

    .line 138
    return-void
.end method
