.class final Lcom/google/android/youtube/app/adapter/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/adapter/az;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/ac;->a:Landroid/view/View;

    .line 54
    iput-object p2, p0, Lcom/google/android/youtube/app/adapter/ac;->b:Ljava/util/List;

    .line 55
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)Landroid/view/View;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ac;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/adapter/az;

    .line 59
    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/app/adapter/az;->a(ILjava/lang/Object;)Landroid/view/View;

    goto :goto_6

    .line 61
    :cond_16
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ac;->a:Landroid/view/View;

    return-object v0
.end method
