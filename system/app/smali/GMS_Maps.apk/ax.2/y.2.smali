.class Lax/y;
.super Ljava/lang/Object;

# interfaces
.implements Lax/aZ;


# instance fields
.field final synthetic a:Lax/x;


# direct methods
.method constructor <init>(Lax/x;)V
    .registers 2

    iput-object p1, p0, Lax/y;->a:Lax/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4

    if-nez p1, :cond_8

    const/16 v0, 0x14d

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->a(II)Landroid/widget/Toast;

    :cond_8
    return-void
.end method
