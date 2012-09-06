.class final Lcom/google/android/youtube/core/ui/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/ui/o;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/ui/Workspace;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/ui/Workspace;)V
    .registers 2
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/s;->a:Lcom/google/android/youtube/core/ui/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 3
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/s;->a:Lcom/google/android/youtube/core/ui/Workspace;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/ui/Workspace;->c(I)V

    .line 86
    return-void
.end method
