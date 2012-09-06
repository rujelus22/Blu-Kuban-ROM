.class public Lcom/google/googlenav/ui/wizard/aK;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lan/h;

.field private final b:Lcom/google/googlenav/android/Y;

.field private c:Lcom/google/googlenav/ui/wizard/aL;


# direct methods
.method public constructor <init>(Lan/h;Lcom/google/googlenav/android/Y;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aK;->a:Lan/h;

    .line 36
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/aK;->b:Lcom/google/googlenav/android/Y;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/aK;)Lcom/google/googlenav/android/Y;
    .registers 2
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aK;->b:Lcom/google/googlenav/android/Y;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/aK;Lcom/google/googlenav/ui/wizard/aL;)Lcom/google/googlenav/ui/wizard/aL;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aK;->c:Lcom/google/googlenav/ui/wizard/aL;

    return-object p1
.end method


# virtual methods
.method public a(Lan/y;)V
    .registers 4
    .parameter

    .prologue
    .line 46
    new-instance v0, Lcom/google/googlenav/ui/wizard/aL;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/wizard/aL;-><init>(Lcom/google/googlenav/ui/wizard/aK;Lan/y;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/aK;->c:Lcom/google/googlenav/ui/wizard/aL;

    .line 47
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aK;->a:Lan/h;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aK;->c:Lcom/google/googlenav/ui/wizard/aL;

    invoke-interface {v0, v1}, Lan/h;->a(Lan/y;)V

    .line 48
    return-void
.end method
