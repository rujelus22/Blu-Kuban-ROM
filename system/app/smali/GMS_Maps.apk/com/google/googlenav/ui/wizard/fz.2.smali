.class public Lcom/google/googlenav/ui/wizard/fZ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ui/v;

.field private final b:Lcom/google/googlenav/ui/wizard/ga;

.field private final c:Lan/s;

.field private d:Lcom/google/googlenav/ui/view/android/aK;

.field private final e:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/v;Lcom/google/googlenav/ui/wizard/ga;Lan/s;Lcom/google/googlenav/ui/view/android/aK;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fZ;->a:Lcom/google/googlenav/ui/v;

    .line 77
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/fZ;->b:Lcom/google/googlenav/ui/wizard/ga;

    .line 78
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/fZ;->c:Lan/s;

    .line 79
    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/fZ;->d:Lcom/google/googlenav/ui/view/android/aK;

    .line 80
    iput-boolean p5, p0, Lcom/google/googlenav/ui/wizard/fZ;->e:Z

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/fZ;)Lcom/google/googlenav/ui/v;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fZ;->a:Lcom/google/googlenav/ui/v;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/fZ;)Lan/s;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fZ;->c:Lan/s;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/fZ;)Lcom/google/googlenav/ui/view/android/aK;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fZ;->d:Lcom/google/googlenav/ui/view/android/aK;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/wizard/fZ;)Z
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/fZ;->e:Z

    return v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/wizard/fZ;)Lcom/google/googlenav/ui/wizard/ga;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fZ;->b:Lcom/google/googlenav/ui/wizard/ga;

    return-object v0
.end method
