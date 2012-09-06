.class final Lcom/twitter/android/en;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/twitter/android/SearchTweetsFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/SearchTweetsFragment;Ljava/util/ArrayList;)V
    .registers 3

    iput-object p1, p0, Lcom/twitter/android/en;->b:Lcom/twitter/android/SearchTweetsFragment;

    iput-object p2, p0, Lcom/twitter/android/en;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/en;->b:Lcom/twitter/android/SearchTweetsFragment;

    iget-object v1, p0, Lcom/twitter/android/en;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p2}, Lcom/twitter/android/SearchTweetsFragment;->a(Ljava/util/ArrayList;I)V

    return-void
.end method
