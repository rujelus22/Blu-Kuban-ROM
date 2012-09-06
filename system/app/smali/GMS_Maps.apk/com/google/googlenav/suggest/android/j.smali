.class Lcom/google/googlenav/suggest/android/j;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/suggest/android/SuggestContentProvider;


# direct methods
.method constructor <init>(Lcom/google/googlenav/suggest/android/SuggestContentProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/googlenav/suggest/android/j;->a:Lcom/google/googlenav/suggest/android/SuggestContentProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/j;->a:Lcom/google/googlenav/suggest/android/SuggestContentProvider;

    invoke-static {v0}, Lcom/google/googlenav/suggest/android/SuggestContentProvider;->a(Lcom/google/googlenav/suggest/android/SuggestContentProvider;)V

    .line 54
    return-void
.end method
