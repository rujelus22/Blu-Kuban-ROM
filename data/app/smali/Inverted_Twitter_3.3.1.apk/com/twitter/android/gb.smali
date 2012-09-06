.class public final Lcom/twitter/android/gb;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/view/ViewStub;

.field public b:Landroid/view/ViewGroup;

.field public final c:Lcom/twitter/android/widget/TweetView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f070032

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/TweetView;

    iput-object v0, p0, Lcom/twitter/android/gb;->c:Lcom/twitter/android/widget/TweetView;

    const v0, 0x7f0700b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/twitter/android/gb;->a:Landroid/view/ViewStub;

    return-void
.end method
