.class public Lav/j;
.super Lav/l;


# static fields
.field public static final a:Lav/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lav/j;

    invoke-direct {v0}, Lav/j;-><init>()V

    sput-object v0, Lav/j;->a:Lav/j;

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

    const v0, 0x13d657

    return v0
.end method
