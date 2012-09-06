.class final Lcom/twitter/android/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/android/BaseListFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/BaseListFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/r;->a:Lcom/twitter/android/BaseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/r;->a:Lcom/twitter/android/BaseListFragment;

    iget-object v0, v0, Lcom/twitter/android/BaseListFragment;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/r;->a:Lcom/twitter/android/BaseListFragment;

    iget-object v1, v1, Lcom/twitter/android/BaseListFragment;->i:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method
