.class public Lcom/google/googlenav/ui/wizard/aO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:LaM/a;

.field private final b:Lcom/google/googlenav/android/Y;


# direct methods
.method public constructor <init>(LaM/a;Lcom/google/googlenav/android/Y;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aO;->a:LaM/a;

    .line 33
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/aO;->b:Lcom/google/googlenav/android/Y;

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/aO;)Lcom/google/googlenav/android/Y;
    .registers 2
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aO;->b:Lcom/google/googlenav/android/Y;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/aO;Lcom/google/googlenav/ui/wizard/aV;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/aO;->a(Lcom/google/googlenav/ui/wizard/aV;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/wizard/aV;)V
    .registers 5
    .parameter

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aO;->b:Lcom/google/googlenav/android/Y;

    new-instance v2, Lcom/google/googlenav/ui/wizard/aU;

    invoke-direct {v2, p0, p1}, Lcom/google/googlenav/ui/wizard/aU;-><init>(Lcom/google/googlenav/ui/wizard/aO;Lcom/google/googlenav/ui/wizard/aV;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 157
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/aO;)LaM/a;
    .registers 2
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aO;->a:LaM/a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/h;Lcom/google/googlenav/ui/wizard/aV;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-static {}, Lcom/google/googlenav/friend/af;->B()V

    .line 77
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aO;->a:LaM/a;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/aO;->b:Lcom/google/googlenav/android/Y;

    new-instance v3, Lcom/google/googlenav/ui/wizard/aP;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/googlenav/ui/wizard/aP;-><init>(Lcom/google/googlenav/ui/wizard/aO;Lcom/google/googlenav/h;Lcom/google/googlenav/ui/wizard/aV;)V

    invoke-virtual {v0, v1, v2, v3}, LaM/a;->a(ILcom/google/googlenav/android/Y;LaM/f;)V

    .line 147
    return-void
.end method
