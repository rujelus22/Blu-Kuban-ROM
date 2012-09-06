.class final Lcom/google/android/youtube/app/honeycomb/ui/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->a:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryTextChange(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public final onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/h;->a:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    invoke-static {v0, p1}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->a(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
