.class final Lcom/google/android/plus1/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/google/android/plus1/ad;


# direct methods
.method constructor <init>(Lcom/google/android/plus1/ad;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/google/android/plus1/ae;->b:Lcom/google/android/plus1/ad;

    iput-object p2, p0, Lcom/google/android/plus1/ae;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 544
    iget-object v0, p0, Lcom/google/android/plus1/ae;->b:Lcom/google/android/plus1/ad;

    iget-object v0, v0, Lcom/google/android/plus1/ad;->a:Lcom/google/android/plus1/w;

    iget-object v1, p0, Lcom/google/android/plus1/ae;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/plus1/w;->a(Lcom/google/android/plus1/w;Ljava/util/List;)V

    .line 545
    return-void
.end method
