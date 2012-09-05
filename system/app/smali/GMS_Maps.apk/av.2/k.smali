.class public Lav/k;
.super Lav/l;


# static fields
.field public static final a:Lav/k;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lav/k;

    invoke-direct {v0}, Lav/k;-><init>()V

    sput-object v0, Lav/k;->a:Lav/k;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lav/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const v0, 0x13d637

    return v0
.end method
