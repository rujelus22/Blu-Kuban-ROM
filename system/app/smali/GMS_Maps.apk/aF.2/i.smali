.class public Laf/i;
.super Laf/k;
.source "SourceFile"


# static fields
.field public static final a:Laf/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    new-instance v0, Laf/i;

    invoke-direct {v0}, Laf/i;-><init>()V

    sput-object v0, Laf/i;->a:Laf/i;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Laf/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 19
    const v0, 0x13d657

    return v0
.end method
