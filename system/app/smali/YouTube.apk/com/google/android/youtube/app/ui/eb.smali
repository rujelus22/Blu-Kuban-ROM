.class final Lcom/google/android/youtube/app/ui/eb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/dm;

.field final synthetic b:Lcom/google/android/youtube/app/ui/dz;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/dz;Lcom/google/android/youtube/app/ui/dm;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 692
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/eb;->b:Lcom/google/android/youtube/app/ui/dz;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/eb;->a:Lcom/google/android/youtube/app/ui/dm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/eb;->b:Lcom/google/android/youtube/app/ui/dz;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/dz;->c(Lcom/google/android/youtube/app/ui/dz;)V

    .line 695
    return-void
.end method
