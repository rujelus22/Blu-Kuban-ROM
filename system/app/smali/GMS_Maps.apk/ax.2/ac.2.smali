.class public Lax/ac;
.super Lax/bu;


# instance fields
.field private a:LaY/Y;

.field private final e:I


# direct methods
.method public constructor <init>(LaY/Y;Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/android/ac;Lax/bq;I)V
    .registers 6

    invoke-direct {p0, p2, p3, p4}, Lax/bu;-><init>(Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/android/ac;Lax/bq;)V

    iput-object p1, p0, Lax/ac;->a:LaY/Y;

    iput p5, p0, Lax/ac;->e:I

    return-void
.end method

.method static synthetic a(Lax/ac;)I
    .registers 2

    iget v0, p0, Lax/ac;->e:I

    return v0
.end method

.method static synthetic b(Lax/ac;)LaY/Y;
    .registers 2

    iget-object v0, p0, Lax/ac;->a:LaY/Y;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lax/ac;->b:Lcom/google/googlenav/ui/wizard/hM;

    iget v1, p0, Lax/ac;->e:I

    new-instance v2, Lax/ad;

    invoke-direct {v2, p0}, Lax/ad;-><init>(Lax/ac;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/hM;->a(ILcom/google/googlenav/ui/wizard/cv;)V

    return-void
.end method
