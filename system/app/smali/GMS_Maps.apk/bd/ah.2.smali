.class Lbd/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/aJ;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/view/View;

.field private d:Lbd/ae;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lbd/ae;)V
    .registers 3

    iget-object v0, p0, Lbd/ah;->d:Lbd/ae;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lbd/ah;->d:Lbd/ae;

    invoke-static {v0}, Lbd/ae;->a(Lbd/ae;)V

    :cond_9
    iput-object p1, p0, Lbd/ah;->d:Lbd/ae;

    invoke-static {p1, p0}, Lbd/ae;->a(Lbd/ae;Lbd/ah;)V

    return-void
.end method
