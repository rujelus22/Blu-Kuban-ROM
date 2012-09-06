.class final Lcom/google/android/youtube/app/ui/ee;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/youtube/app/ui/ec;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/ec;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ee;->b:Lcom/google/android/youtube/app/ui/ec;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/ee;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ee;->b:Lcom/google/android/youtube/app/ui/ec;

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ee;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/ui/ec;->a(Lcom/google/android/youtube/app/ui/ec;Ljava/lang/String;)V

    .line 364
    return-void
.end method
