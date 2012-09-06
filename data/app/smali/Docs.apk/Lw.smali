.class public LLw;
.super Ljava/lang/Object;
.source "OpenUrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/openurl/OpenUrlActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/openurl/OpenUrlActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, LLw;->a:Lcom/google/android/apps/docs/openurl/OpenUrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, LLw;->a:Lcom/google/android/apps/docs/openurl/OpenUrlActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->finish()V

    .line 286
    return-void
.end method
