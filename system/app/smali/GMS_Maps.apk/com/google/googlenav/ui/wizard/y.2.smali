.class public Lcom/google/googlenav/ui/wizard/y;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/wizard/y;-><init>(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/googlenav/ui/wizard/y;->a:I

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/y;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/ui/wizard/y;->a:I

    return v0
.end method

.method public b()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/y;->b:Ljava/lang/Object;

    return-object v0
.end method
