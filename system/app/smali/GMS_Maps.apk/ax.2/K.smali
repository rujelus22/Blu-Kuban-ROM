.class Lax/K;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/bh;


# instance fields
.field final synthetic a:Lax/J;


# direct methods
.method constructor <init>(Lax/J;)V
    .registers 2

    iput-object p1, p0, Lax/K;->a:Lax/J;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/util/List;)V
    .registers 5

    if-nez p1, :cond_8

    const-string v0, "Couldn\'t update your sharing setting"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->a(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    :cond_8
    return-void
.end method
