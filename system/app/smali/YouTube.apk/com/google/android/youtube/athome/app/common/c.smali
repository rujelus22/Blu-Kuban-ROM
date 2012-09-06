.class public final Lcom/google/android/youtube/athome/app/common/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/net/Uri;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/youtube/athome/app/common/a;
    .registers 6

    .prologue
    .line 68
    new-instance v0, Lcom/google/android/youtube/athome/app/common/a;

    iget-object v1, p0, Lcom/google/android/youtube/athome/app/common/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/athome/app/common/c;->b:Landroid/net/Uri;

    iget-boolean v3, p0, Lcom/google/android/youtube/athome/app/common/c;->c:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/athome/app/common/a;-><init>(Ljava/lang/String;Landroid/net/Uri;ZB)V

    return-object v0
.end method

.method public final a(Landroid/net/Uri;)Lcom/google/android/youtube/athome/app/common/c;
    .registers 2
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/android/youtube/athome/app/common/c;->b:Landroid/net/Uri;

    .line 78
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/youtube/athome/app/common/c;
    .registers 2
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/youtube/athome/app/common/c;->a:Ljava/lang/String;

    .line 73
    return-object p0
.end method

.method public final a(Z)Lcom/google/android/youtube/athome/app/common/c;
    .registers 2
    .parameter

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/google/android/youtube/athome/app/common/c;->c:Z

    .line 83
    return-object p0
.end method
