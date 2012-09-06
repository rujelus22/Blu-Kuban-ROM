.class final Lcom/google/android/plus1/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Ljava/lang/Exception;

.field final synthetic c:Lcom/google/android/plus1/ad;


# direct methods
.method constructor <init>(Lcom/google/android/plus1/ad;Ljava/util/Set;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 595
    iput-object p1, p0, Lcom/google/android/plus1/ag;->c:Lcom/google/android/plus1/ad;

    iput-object p2, p0, Lcom/google/android/plus1/ag;->a:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/android/plus1/ag;->b:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 597
    iget-object v0, p0, Lcom/google/android/plus1/ag;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 598
    iget-object v2, p0, Lcom/google/android/plus1/ag;->c:Lcom/google/android/plus1/ad;

    iget-object v2, v2, Lcom/google/android/plus1/ad;->a:Lcom/google/android/plus1/w;

    iget-object v3, p0, Lcom/google/android/plus1/ag;->b:Ljava/lang/Exception;

    invoke-static {v2, v0, v3}, Lcom/google/android/plus1/w;->a(Lcom/google/android/plus1/w;Landroid/net/Uri;Ljava/lang/Exception;)V

    goto :goto_6

    .line 600
    :cond_1c
    return-void
.end method
