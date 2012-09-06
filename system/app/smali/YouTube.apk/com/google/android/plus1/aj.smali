.class final Lcom/google/android/plus1/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/google/android/plus1/ad;


# direct methods
.method constructor <init>(Lcom/google/android/plus1/ad;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 706
    iput-object p1, p0, Lcom/google/android/plus1/aj;->b:Lcom/google/android/plus1/ad;

    iput-object p2, p0, Lcom/google/android/plus1/aj;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 708
    iget-object v0, p0, Lcom/google/android/plus1/aj;->b:Lcom/google/android/plus1/ad;

    iget-object v0, v0, Lcom/google/android/plus1/ad;->a:Lcom/google/android/plus1/w;

    iget-object v1, p0, Lcom/google/android/plus1/aj;->a:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lcom/google/android/plus1/w;->a(Lcom/google/android/plus1/w;Ljava/lang/Exception;)V

    .line 709
    return-void
.end method
