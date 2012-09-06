.class public final Lcom/google/android/youtube/core/b/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "intentString cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/b/aj;->a:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/google/android/youtube/core/b/aj;->b:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/google/android/youtube/core/b/aj;->c:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/core/b/aj;->a:Ljava/lang/String;

    return-object v0
.end method
