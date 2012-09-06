.class final Lcom/google/android/plus1/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/google/android/plus1/ad;


# direct methods
.method constructor <init>(Lcom/google/android/plus1/ad;Ljava/util/Map;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 571
    iput-object p1, p0, Lcom/google/android/plus1/af;->b:Lcom/google/android/plus1/ad;

    iput-object p2, p0, Lcom/google/android/plus1/af;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 573
    iget-object v0, p0, Lcom/google/android/plus1/af;->b:Lcom/google/android/plus1/ad;

    iget-object v0, v0, Lcom/google/android/plus1/ad;->a:Lcom/google/android/plus1/w;

    iget-object v1, p0, Lcom/google/android/plus1/af;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/google/android/plus1/w;->a(Lcom/google/android/plus1/w;Ljava/util/Map;)V

    .line 574
    return-void
.end method
