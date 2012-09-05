.class final Lcom/google/android/youtube/app/ui/bs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/br;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/br;)V
    .registers 2
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/bs;->a:Lcom/google/android/youtube/app/ui/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bs;->a:Lcom/google/android/youtube/app/ui/br;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/br;->a(Lcom/google/android/youtube/app/ui/br;)Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 68
    return-void
.end method
