.class Lcom/google/googlenav/ui/wizard/dS;
.super Ljava/lang/Object;

# interfaces
.implements Lat/d;


# instance fields
.field private a:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dS;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/dP;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/dS;-><init>()V

    return-void
.end method


# virtual methods
.method public X()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dS;->a:Z

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/dS;->a:Z

    return v0
.end method
