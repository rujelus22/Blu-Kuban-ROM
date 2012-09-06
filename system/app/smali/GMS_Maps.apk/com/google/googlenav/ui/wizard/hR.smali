.class Lcom/google/googlenav/ui/wizard/hr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/D;


# instance fields
.field private final a:Lcom/google/googlenav/ai;

.field private final b:LaF/c;

.field private final c:Lcom/google/googlenav/J;

.field private final d:Lcom/google/googlenav/ay;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ai;LaF/c;Lcom/google/googlenav/J;Lcom/google/googlenav/ay;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hr;->a:Lcom/google/googlenav/ai;

    .line 351
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/hr;->b:LaF/c;

    .line 352
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/hr;->c:Lcom/google/googlenav/J;

    .line 353
    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/hr;->d:Lcom/google/googlenav/ay;

    .line 354
    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 359
    if-eqz p1, :cond_15

    .line 361
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hr;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ap()Lcom/google/googlenav/ax;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hr;->d:Lcom/google/googlenav/ay;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ax;->b(Lcom/google/googlenav/ay;)Z

    .line 362
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hr;->b:LaF/c;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hr;->d:Lcom/google/googlenav/ay;

    invoke-virtual {v0, v1}, LaF/c;->a(Lcom/google/googlenav/ay;)V

    .line 366
    :goto_14
    return-void

    .line 364
    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hr;->c:Lcom/google/googlenav/J;

    const/16 v1, 0x400

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)V

    goto :goto_14
.end method
