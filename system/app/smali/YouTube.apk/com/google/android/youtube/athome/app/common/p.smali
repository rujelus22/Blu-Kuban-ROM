.class final Lcom/google/android/youtube/athome/app/common/p;
.super Lcom/google/android/youtube/athome/common/c;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/youtube/athome/common/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/youtube/athome/common/d;)Landroid/support/place/rpc/Flattenable;
    .registers 3
    .parameter

    .prologue
    .line 37
    new-instance v0, Lcom/google/android/youtube/athome/app/common/PlayRequest;

    invoke-direct {v0, p1}, Lcom/google/android/youtube/athome/app/common/PlayRequest;-><init>(Lcom/google/android/youtube/athome/common/d;)V

    return-object v0
.end method
