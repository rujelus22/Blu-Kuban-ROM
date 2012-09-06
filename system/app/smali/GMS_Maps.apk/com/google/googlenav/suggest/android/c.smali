.class Lcom/google/googlenav/suggest/android/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/suggest/android/BaseSuggestView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/suggest/android/BaseSuggestView;)V
    .registers 2
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/googlenav/suggest/android/c;->a:Lcom/google/googlenav/suggest/android/BaseSuggestView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/c;->a:Lcom/google/googlenav/suggest/android/BaseSuggestView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/suggest/android/BaseSuggestView;->a(Z)V

    .line 74
    return-void
.end method
