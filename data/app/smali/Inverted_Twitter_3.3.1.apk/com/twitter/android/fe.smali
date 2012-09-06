.class public final Lcom/twitter/android/fe;
.super Lcom/twitter/android/client/g;


# instance fields
.field final synthetic a:Lcom/twitter/android/StoriesFragment;


# direct methods
.method protected constructor <init>(Lcom/twitter/android/StoriesFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/fe;->a:Lcom/twitter/android/StoriesFragment;

    invoke-direct {p0}, Lcom/twitter/android/client/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/fe;->a:Lcom/twitter/android/StoriesFragment;

    iget-object v0, v0, Lcom/twitter/android/StoriesFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/twitter/android/fe;->a:Lcom/twitter/android/StoriesFragment;

    iget-object v0, v0, Lcom/twitter/android/StoriesFragment;->e:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Lcom/twitter/android/fd;

    invoke-virtual {v0, p1}, Lcom/twitter/android/fd;->a(Ljava/util/HashMap;)V

    :cond_f
    return-void
.end method
