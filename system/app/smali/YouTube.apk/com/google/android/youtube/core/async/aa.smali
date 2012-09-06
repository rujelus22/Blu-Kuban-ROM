.class final Lcom/google/android/youtube/core/async/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/google/android/youtube/core/async/FroyoSignInActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/async/FroyoSignInActivity;[Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/android/youtube/core/async/aa;->b:Lcom/google/android/youtube/core/async/FroyoSignInActivity;

    iput-object p2, p0, Lcom/google/android/youtube/core/async/aa;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/youtube/core/async/aa;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge p3, v0, :cond_14

    .line 112
    iget-object v0, p0, Lcom/google/android/youtube/core/async/aa;->b:Lcom/google/android/youtube/core/async/FroyoSignInActivity;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/aa;->a:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/async/FroyoSignInActivity;->a(Lcom/google/android/youtube/core/async/FroyoSignInActivity;Ljava/lang/String;)V

    .line 116
    :goto_10
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 117
    return-void

    .line 114
    :cond_14
    iget-object v0, p0, Lcom/google/android/youtube/core/async/aa;->b:Lcom/google/android/youtube/core/async/FroyoSignInActivity;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/FroyoSignInActivity;->b(Lcom/google/android/youtube/core/async/FroyoSignInActivity;)V

    goto :goto_10
.end method
