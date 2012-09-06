.class LaM/cf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/bV;


# instance fields
.field final synthetic a:LaM/bU;


# direct methods
.method private constructor <init>(LaM/bU;)V
    .registers 2
    .parameter

    .prologue
    .line 1316
    iput-object p1, p0, LaM/cf;->a:LaM/bU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LaM/bU;LaM/bV;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1316
    invoke-direct {p0, p1}, LaM/cf;-><init>(LaM/bU;)V

    return-void
.end method


# virtual methods
.method public a(LaM/bG;)V
    .registers 3
    .parameter

    .prologue
    .line 1320
    iget-object v0, p0, LaM/cf;->a:LaM/bU;

    iget-object v0, v0, LaM/bU;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->d()Lcom/google/googlenav/ui/wizard/A;

    .line 1322
    return-void
.end method
