.class public LaY/ar;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:I

.field final d:Z

.field e:Lcom/google/googlenav/ui/bg;


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/googlenav/ui/bg;->aP:Lcom/google/googlenav/ui/bg;

    iput-object v0, p0, LaY/ar;->e:Lcom/google/googlenav/ui/bg;

    iput-object p1, p0, LaY/ar;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, LaY/ar;->b:Ljava/lang/String;

    iput p2, p0, LaY/ar;->c:I

    iput-boolean p3, p0, LaY/ar;->d:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/googlenav/ui/bg;->aP:Lcom/google/googlenav/ui/bg;

    iput-object v0, p0, LaY/ar;->e:Lcom/google/googlenav/ui/bg;

    iput-object p1, p0, LaY/ar;->a:Ljava/lang/String;

    iput-object p2, p0, LaY/ar;->b:Ljava/lang/String;

    iput p3, p0, LaY/ar;->c:I

    iput-boolean p4, p0, LaY/ar;->d:Z

    return-void
.end method


# virtual methods
.method a(Lcom/google/googlenav/ui/bg;)V
    .registers 2

    iput-object p1, p0, LaY/ar;->e:Lcom/google/googlenav/ui/bg;

    return-void
.end method
