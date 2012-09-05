.class public Lx/aB;
.super Lx/aF;


# static fields
.field public static final g:Lx/aE;


# instance fields
.field private volatile i:Lx/aE;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lx/aC;

    invoke-direct {v0}, Lx/aC;-><init>()V

    sput-object v0, Lx/aB;->g:Lx/aE;

    return-void
.end method

.method public constructor <init>(Lat/h;Lcom/google/android/maps/driveabout/vector/cU;ILjava/util/Locale;ZLjava/io/File;Lx/aE;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lx/aF;-><init>(Lat/h;Lcom/google/android/maps/driveabout/vector/cU;ILjava/util/Locale;ZLjava/io/File;)V

    iput-object p7, p0, Lx/aB;->i:Lx/aE;

    return-void
.end method

.method public static a(IZ)Lx/aE;
    .registers 3

    new-instance v0, Lx/aD;

    invoke-direct {v0, p0, p1}, Lx/aD;-><init>(IZ)V

    return-object v0
.end method


# virtual methods
.method public a(Lt/af;Lt/ao;Lx/aw;)V
    .registers 6

    iget-object v0, p0, Lx/aB;->i:Lx/aE;

    invoke-interface {v0, p1, p2}, Lx/aE;->a(Lt/af;Lt/ao;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-super {p0, p1, p3}, Lx/aF;->a(Lt/af;Lx/aw;)V

    :goto_b
    return-void

    :cond_c
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-interface {p3, p1, v0, v1}, Lx/aw;->a(Lt/af;ILt/ae;)V

    goto :goto_b
.end method

.method public a(Lt/af;Lx/aw;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lx/aB;->a(Lt/af;Lt/ao;Lx/aw;)V

    return-void
.end method

.method public a(Lx/aE;)V
    .registers 2

    iput-object p1, p0, Lx/aB;->i:Lx/aE;

    return-void
.end method
