.class final LP/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2
    .parameter

    .prologue
    .line 144
    iput-boolean p1, p0, LP/e;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 146
    invoke-static {}, Lcom/google/android/apps/analytics/i;->a()Lcom/google/android/apps/analytics/i;

    move-result-object v0

    iget-boolean v1, p0, LP/e;->a:Z

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/i;->a(Z)V

    .line 147
    return-void
.end method
