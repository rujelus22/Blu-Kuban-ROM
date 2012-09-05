.class final Lcom/google/android/a/a/a/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/a/a/a/n;

.field private final synthetic b:Lcom/google/android/a/a/c/c;

.field private final synthetic c:Lcom/google/android/a/a/c/d;

.field private final synthetic d:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/a/a/a/n;Lcom/google/android/a/a/c/c;Lcom/google/android/a/a/c/d;Ljava/util/List;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/a/a/a/q;->a:Lcom/google/android/a/a/a/n;

    iput-object p2, p0, Lcom/google/android/a/a/a/q;->b:Lcom/google/android/a/a/c/c;

    iput-object p3, p0, Lcom/google/android/a/a/a/q;->c:Lcom/google/android/a/a/c/d;

    iput-object p4, p0, Lcom/google/android/a/a/a/q;->d:Ljava/util/List;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/a/a/a/q;->a:Lcom/google/android/a/a/a/n;

    iget-object v1, p0, Lcom/google/android/a/a/a/q;->b:Lcom/google/android/a/a/c/c;

    iget-object v2, p0, Lcom/google/android/a/a/a/q;->c:Lcom/google/android/a/a/c/d;

    iget-object v3, p0, Lcom/google/android/a/a/a/q;->d:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/a/a/a/n;->a(Lcom/google/android/a/a/a/n;Lcom/google/android/a/a/c/c;Lcom/google/android/a/a/c/d;Ljava/util/List;)V

    .line 203
    return-void
.end method
