.class final Lcom/a/a/a/a/a/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Z


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/a/a/a/f;->c:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/a/a/a/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/a/a/a/a/a/f;->b:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/a/a/a/f;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/a/a/a/a/a/f;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/a/a/a/a/a/f;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/a/a/a/a/a/f;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/a/a/a/a/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/a/a/a/a/a/f;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/a/a/a/a/a/f;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
