.class final Lcom/google/zxing/client/android/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/k;


# instance fields
.field private final a:Lcom/google/zxing/client/android/ViewfinderView;


# direct methods
.method constructor <init>(Lcom/google/zxing/client/android/ViewfinderView;)V
    .registers 2
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/zxing/client/android/h;->a:Lcom/google/zxing/client/android/ViewfinderView;

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/zxing/j;)V
    .registers 3
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/zxing/client/android/h;->a:Lcom/google/zxing/client/android/ViewfinderView;

    invoke-virtual {v0, p1}, Lcom/google/zxing/client/android/ViewfinderView;->a(Lcom/google/zxing/j;)V

    .line 32
    return-void
.end method
