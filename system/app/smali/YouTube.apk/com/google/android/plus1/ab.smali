.class final Lcom/google/android/plus1/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/plus1/at;

.field final synthetic b:Lcom/google/android/plus1/aa;


# direct methods
.method constructor <init>(Lcom/google/android/plus1/aa;Lcom/google/android/plus1/at;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 482
    iput-object p1, p0, Lcom/google/android/plus1/ab;->b:Lcom/google/android/plus1/aa;

    iput-object p2, p0, Lcom/google/android/plus1/ab;->a:Lcom/google/android/plus1/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 484
    iget-object v0, p0, Lcom/google/android/plus1/ab;->b:Lcom/google/android/plus1/aa;

    iget-object v0, v0, Lcom/google/android/plus1/aa;->a:Lcom/google/android/plus1/w;

    invoke-static {v0}, Lcom/google/android/plus1/w;->a(Lcom/google/android/plus1/w;)Lcom/google/android/plus1/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/plus1/ab;->a:Lcom/google/android/plus1/at;

    invoke-static {v0, v1}, Lcom/google/android/plus1/ad;->a(Lcom/google/android/plus1/ad;Lcom/google/android/plus1/at;)V

    .line 485
    return-void
.end method
