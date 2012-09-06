.class final Lcom/google/android/youtube/app/adapter/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/adapter/o;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/adapter/o;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/q;->a:Lcom/google/android/youtube/app/adapter/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p2, p0, Lcom/google/android/youtube/app/adapter/q;->b:I

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/adapter/o;IB)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/app/adapter/q;-><init>(Lcom/google/android/youtube/app/adapter/o;I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 80
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 80
    check-cast p2, Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/q;->a:Lcom/google/android/youtube/app/adapter/o;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/o;->a(Lcom/google/android/youtube/app/adapter/o;)Lcom/google/android/youtube/core/async/l;

    move-result-object v0

    if-ne v0, p0, :cond_15

    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/q;->a:Lcom/google/android/youtube/app/adapter/o;

    invoke-static {v0}, Lcom/google/android/youtube/app/adapter/o;->b(Lcom/google/android/youtube/app/adapter/o;)Lcom/google/android/youtube/app/adapter/i;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/app/adapter/q;->b:I

    invoke-virtual {v0, v1, p2}, Lcom/google/android/youtube/app/adapter/i;->a(ILjava/lang/Object;)Landroid/view/View;

    :cond_15
    return-void
.end method
