.class final Lcom/google/android/plus1/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/plus1/at;

.field final synthetic b:Lcom/google/android/plus1/ad;


# direct methods
.method constructor <init>(Lcom/google/android/plus1/ad;Lcom/google/android/plus1/at;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 665
    iput-object p1, p0, Lcom/google/android/plus1/ah;->b:Lcom/google/android/plus1/ad;

    iput-object p2, p0, Lcom/google/android/plus1/ah;->a:Lcom/google/android/plus1/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 667
    iget-object v0, p0, Lcom/google/android/plus1/ah;->b:Lcom/google/android/plus1/ad;

    iget-object v0, v0, Lcom/google/android/plus1/ad;->a:Lcom/google/android/plus1/w;

    iget-object v1, p0, Lcom/google/android/plus1/ah;->a:Lcom/google/android/plus1/at;

    invoke-static {v0, v1}, Lcom/google/android/plus1/w;->a(Lcom/google/android/plus1/w;Lcom/google/android/plus1/at;)V

    .line 668
    return-void
.end method
