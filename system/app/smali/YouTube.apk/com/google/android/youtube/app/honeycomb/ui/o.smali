.class final Lcom/google/android/youtube/app/honeycomb/ui/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;)V
    .registers 3
    .parameter

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/honeycomb/ui/o;-><init>(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/ui/o;->a:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/o;->a:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->b(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/honeycomb/ui/p;

    .line 220
    invoke-interface {v0}, Lcom/google/android/youtube/app/honeycomb/ui/p;->h()V

    goto :goto_a

    .line 222
    :cond_1a
    const/4 v0, 0x1

    return v0
.end method

.method public final onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/o;->a:Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;->b(Lcom/google/android/youtube/app/honeycomb/ui/MenuHelperImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/honeycomb/ui/p;

    .line 213
    invoke-interface {v0}, Lcom/google/android/youtube/app/honeycomb/ui/p;->g()V

    goto :goto_a

    .line 215
    :cond_1a
    const/4 v0, 0x1

    return v0
.end method
