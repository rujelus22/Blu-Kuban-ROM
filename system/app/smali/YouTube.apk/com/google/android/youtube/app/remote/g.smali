.class final Lcom/google/android/youtube/app/remote/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/athome/app/common/j;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/remote/e;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/remote/e;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/g;->a:Lcom/google/android/youtube/app/remote/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;)V
    .registers 3
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/g;->a:Lcom/google/android/youtube/app/remote/e;

    invoke-static {v0, p1}, Lcom/google/android/youtube/app/remote/e;->a(Lcom/google/android/youtube/app/remote/e;Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;)V

    .line 102
    return-void
.end method
