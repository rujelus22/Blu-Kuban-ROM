.class public final Lcom/google/android/youtube/athome/app/common/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/google/android/youtube/athome/app/common/a;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;
    .registers 7

    .prologue
    .line 108
    new-instance v0, Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;

    iget v1, p0, Lcom/google/android/youtube/athome/app/common/e;->a:I

    iget-object v2, p0, Lcom/google/android/youtube/athome/app/common/e;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/athome/app/common/e;->c:Lcom/google/android/youtube/athome/app/common/a;

    iget-boolean v4, p0, Lcom/google/android/youtube/athome/app/common/e;->d:Z

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/athome/app/common/AtHomePlayerState;-><init>(ILjava/lang/String;Lcom/google/android/youtube/athome/app/common/a;ZLcom/google/android/youtube/athome/app/common/d;)V

    return-object v0
.end method

.method public final a(I)Lcom/google/android/youtube/athome/app/common/e;
    .registers 2
    .parameter

    .prologue
    .line 112
    iput p1, p0, Lcom/google/android/youtube/athome/app/common/e;->a:I

    .line 113
    return-object p0
.end method

.method public final a(Lcom/google/android/youtube/athome/app/common/a;)Lcom/google/android/youtube/athome/app/common/e;
    .registers 2
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/android/youtube/athome/app/common/e;->c:Lcom/google/android/youtube/athome/app/common/a;

    .line 123
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/youtube/athome/app/common/e;
    .registers 2
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/android/youtube/athome/app/common/e;->b:Ljava/lang/String;

    .line 118
    return-object p0
.end method

.method public final a(Z)Lcom/google/android/youtube/athome/app/common/e;
    .registers 2
    .parameter

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/google/android/youtube/athome/app/common/e;->d:Z

    .line 128
    return-object p0
.end method
