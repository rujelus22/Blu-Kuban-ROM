.class public Lcom/google/googlenav/friend/H;
.super Lcom/google/googlenav/friend/bt;
.source "SourceFile"


# instance fields
.field private a:LaM/am;

.field private final e:I


# direct methods
.method public constructor <init>(LaM/am;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/android/Y;Lcom/google/googlenav/friend/bk;I)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 316
    invoke-direct {p0, p2, p3, p4}, Lcom/google/googlenav/friend/bt;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/android/Y;Lcom/google/googlenav/friend/bk;)V

    .line 317
    iput-object p1, p0, Lcom/google/googlenav/friend/H;->a:LaM/am;

    .line 318
    iput p5, p0, Lcom/google/googlenav/friend/H;->e:I

    .line 319
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/friend/H;)I
    .registers 2
    .parameter

    .prologue
    .line 305
    iget v0, p0, Lcom/google/googlenav/friend/H;->e:I

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/friend/H;)LaM/am;
    .registers 2
    .parameter

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/googlenav/friend/H;->a:LaM/am;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 323
    iget v0, p0, Lcom/google/googlenav/friend/H;->e:I

    const/16 v1, 0x155

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/google/googlenav/friend/H;->e:I

    const/16 v1, 0x157

    if-ne v0, v1, :cond_18

    :cond_c
    const/4 v0, 0x1

    .line 326
    :goto_d
    iget-object v1, p0, Lcom/google/googlenav/friend/H;->b:Lcom/google/googlenav/ui/wizard/ju;

    new-instance v2, Lcom/google/googlenav/friend/I;

    invoke-direct {v2, p0}, Lcom/google/googlenav/friend/I;-><init>(Lcom/google/googlenav/friend/H;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/ui/wizard/ju;->a(ZLcom/google/googlenav/ui/wizard/dk;)V

    .line 327
    return-void

    .line 323
    :cond_18
    const/4 v0, 0x0

    goto :goto_d
.end method
