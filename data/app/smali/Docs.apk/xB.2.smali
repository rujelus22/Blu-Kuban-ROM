.class public LxB;
.super Ljava/lang/Object;
.source "KixEditorActivity.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 677
    iput-object p1, p0, LxB;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 680
    iget-object v0, p0, LxB;->a:Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-static {v0, p2}, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;->a(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;Ljava/lang/Throwable;)V

    .line 681
    return-void
.end method
