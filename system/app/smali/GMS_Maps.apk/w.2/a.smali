.class public Lw/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lw/e;

.field private final b:I


# direct methods
.method public constructor <init>(Lw/e;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw/a;->a:Lw/e;

    iput p2, p0, Lw/a;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lw/a;->b:I

    return v0
.end method

.method public a(Lw/b;)Lw/e;
    .registers 3

    iget-object v0, p0, Lw/a;->a:Lw/e;

    invoke-virtual {v0}, Lw/e;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lw/a;->a:Lw/e;

    invoke-virtual {p1, v0}, Lw/b;->a(Lw/e;)Lw/e;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lw/a;->a:Lw/e;

    goto :goto_e
.end method
