.class final Lcom/google/android/youtube/app/ui/cx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/youtube/app/ui/cv;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/cv;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/cx;->b:Lcom/google/android/youtube/app/ui/cv;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/cx;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cx;->b:Lcom/google/android/youtube/app/ui/cv;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cx;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/cv;->a(Lcom/google/android/youtube/app/ui/cv;Ljava/lang/String;)V

    .line 362
    return-void
.end method
