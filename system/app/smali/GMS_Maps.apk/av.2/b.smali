.class public Lav/b;
.super Lav/l;


# static fields
.field public static final a:Lav/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lav/b;

    invoke-direct {v0}, Lav/b;-><init>()V

    sput-object v0, Lav/b;->a:Lav/b;

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

    const v0, 0x13d656

    return v0
.end method
