.class final Lcom/google/android/plus1/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/google/android/plus1/w;


# direct methods
.method constructor <init>(Lcom/google/android/plus1/w;Ljava/util/Set;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/android/plus1/x;->b:Lcom/google/android/plus1/w;

    iput-object p2, p0, Lcom/google/android/plus1/x;->a:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/plus1/x;->b:Lcom/google/android/plus1/w;

    invoke-static {v0}, Lcom/google/android/plus1/w;->a(Lcom/google/android/plus1/w;)Lcom/google/android/plus1/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/plus1/x;->a:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/plus1/ad;->a(Lcom/google/android/plus1/ad;Ljava/util/Set;Z)V

    .line 166
    return-void
.end method
