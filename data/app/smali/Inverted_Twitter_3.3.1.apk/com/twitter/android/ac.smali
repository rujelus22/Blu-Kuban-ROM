.class final Lcom/twitter/android/ac;
.super Lcom/twitter/android/widget/c;


# instance fields
.field private final b:Lcom/twitter/android/ew;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/android/cf;)V
    .registers 9

    const/16 v0, 0xb

    invoke-direct {p0, p2, v0}, Lcom/twitter/android/widget/c;-><init>(Landroid/widget/ListAdapter;I)V

    new-instance v0, Lcom/twitter/android/ew;

    const v1, 0x7f0b0170

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/twitter/android/ActivitiesActivity;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "activity_type"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/ew;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    iput-object v0, p0, Lcom/twitter/android/ac;->b:Lcom/twitter/android/ew;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b016f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/twitter/android/ac;->a(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final a()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/ac;->b:Lcom/twitter/android/ew;

    iget-object v0, v0, Lcom/twitter/android/ew;->c:Landroid/content/Intent;

    return-object v0
.end method

.method protected final b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/ac;->b:Lcom/twitter/android/ew;

    invoke-static {p1, p2, v0}, Lcom/twitter/android/ey;->a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/twitter/android/ew;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
