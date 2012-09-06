.class Lcom/google/googlenav/ui/wizard/hp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lac/d;


# instance fields
.field private a:Z

.field private final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 3
    .parameter

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/hp;->a:Z

    .line 263
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hp;->b:Ljava/lang/Runnable;

    .line 264
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/hp;)Z
    .registers 2
    .parameter

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/hp;->a:Z

    return v0
.end method


# virtual methods
.method public Z()V
    .registers 2

    .prologue
    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/hp;->a:Z

    .line 279
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hp;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 280
    return-void
.end method
