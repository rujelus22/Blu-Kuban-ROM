.class public final Lcom/google/android/youtube/app/remote/al;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    const-string v0, "name cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/al;->a:Ljava/lang/String;

    .line 279
    iput p2, p0, Lcom/google/android/youtube/app/remote/al;->b:I

    .line 280
    iput-boolean p3, p0, Lcom/google/android/youtube/app/remote/al;->c:Z

    .line 281
    return-void
.end method
